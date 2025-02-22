import cv2
import numpy as np
import tensorflow as tf
from tensorflow.python.framework import ops

IMPORT_DIR = "./savedModel"
DATASET_IMAGE_SIZE = 32

ESC_KEY = 27

MIN_AREA = 500
MAX_AREA = 5000
MIN_RATIO = 0.8
MAX_RATIO = 1.0

SIGN = np.array(["Takeover Sign", "Negative","Slow Sign", "Stop Sign"])

#delay time (ms)
OVER_TIME = 20
STOP_TIME = 5
SLOW_TIME = 30

ops.reset_default_graph()
sess = tf.Session()
tf.saved_model.loader.load(sess, ["serve"], IMPORT_DIR)
graph = tf.get_default_graph()
input_image = graph.get_tensor_by_name('x_input:0')
output_label = graph.get_tensor_by_name('y_target:0')
keep_prob = graph.get_tensor_by_name('keep_prob:0')
model = graph.get_tensor_by_name('model_output:0')
prediction = graph.get_tensor_by_name('prediction:0')


#sign listener
def classification(ROI):
    
    shape = ROI.shape
    
    if ((shape[0] >= 32) and (shape[1] >= 32)):
        ROI_arr = [cv2.resize(ROI, (DATASET_IMAGE_SIZE,DATASET_IMAGE_SIZE), interpolation=cv2.INTER_CUBIC)]
        ROI_arr = np.array(ROI_arr)
        
        ROI_arr = (ROI_arr-ROI_arr.mean())/(ROI_arr.max()-ROI_arr.min())
        
        pred = sess.run(prediction, feed_dict={input_image:ROI_arr, keep_prob:1.0})
        label = np.argmax(pred, 1)

        predict_label = SIGN[int(label)]
        
        #print (predict_label)
        return(predict_label)

def find_contour_using_red_filter(src):
    red_segment = red_mask(src)
    image, contours, hierarchy = cv2.findContours(red_segment, cv2.RETR_LIST, cv2.CHAIN_APPROX_SIMPLE)

    return contours

def red_mask(src):
    hsv = cv2.cvtColor(src,cv2.COLOR_BGR2HSV)
    lower_red1 = np.array([0,10,20])
    upper_red1 = np.array([20,255,255])

    lower_red2 = np.array([160,10,20])
    upper_red2 = np.array([180,255,255])
    mask1 = cv2.inRange(hsv,lower_red1,upper_red1)
    mask2 = cv2.inRange(hsv,lower_red2,upper_red2)

    mask = cv2.bitwise_or(mask1, mask2)

    mask_not = cv2.bitwise_not(mask)

    return mask_not

def detect_contour(src, sign_count):
    
    gray = cv2.cvtColor(src, cv2.COLOR_BGR2GRAY)

    ##method: using only red filter
    contours = find_contour_using_red_filter(src)
    
    #1st condition
    for i in range(0, len(contours)):
        #area(float) of each countour(list)
        area = cv2.contourArea(contours[i])

        #if the size of area less than 500 || more than 5000, just ignore
        if area < MIN_AREA or MAX_AREA< area:
          continue

        #if it is between 300 and 5000, create bounding box(x,y,w,h) around countours
        if len(contours[i]) > 0:
          rect = contours[i]
          x, y, w, h = cv2.boundingRect(rect)

          #2nd condition
        if (float(h) / float(w)) < MAX_RATIO and (float(h) / float(w)) > MIN_RATIO:
            rectangle = cv2.minAreaRect(rect)
            box = cv2.boxPoints(rectangle)
            box = np.int0(box)
            gray = cv2.drawContours(gray, [box], 0, (0, 0, 0), 3)
            cv2.rectangle(gray,(x,y),(x+w, y+h),(255,255,255),3)
            ROI = src[y:y + h, x:x + w]
            #"Takeover Sign", "Negative","Slow Sign", "Stop Sign"
            sign = classification(ROI)
            if sign == 'Takeover Sign':
                sign_count['OVER'] = OVER_TIME
            elif sign == 'Slow Sign':
                sign_count['SLOW'] = SLOW_TIME
            elif sign == 'Stop Sign':
                sign_count['STOP'] = STOP_TIME
                  
    
    return (make_state_string(sign_count))

def make_state_string(sign_count):
    
    string = ""
    
    if sign_count['STOP'] != 0:
        sign_count['STOP'] -= 1
        string += "stop,"
    else :
        string += ","
        
    if sign_count['SLOW'] != 0:
        sign_count['SLOW'] -= 1
        string += "slow,"
    else :
        string += ","
        
    if sign_count['OVER'] != 0:
        sign_count['OVER'] -= 1
        string += "over"
    else :
        string += ""
    
    return (string)

def listener(video, sign_count):
    is_read, frame = video.read()
    
    if frame is not None:
        return (detect_contour(frame, sign_count))
