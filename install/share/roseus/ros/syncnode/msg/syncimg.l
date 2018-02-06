;; Auto-generated. Do not edit!


(when (boundp 'syncnode::syncimg)
  (if (not (find-package "SYNCNODE"))
    (make-package "SYNCNODE"))
  (shadow 'syncimg (find-package "SYNCNODE")))
(unless (find-package "SYNCNODE::SYNCIMG")
  (make-package "SYNCNODE::SYNCIMG"))

(in-package "ROS")
;;//! \htmlinclude syncimg.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass syncnode::syncimg
  :super ros::object
  :slots (_Img1 _Img2 ))

(defmethod syncnode::syncimg
  (:init
   (&key
    ((:Img1 __Img1) (instance sensor_msgs::Image :init))
    ((:Img2 __Img2) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _Img1 __Img1)
   (setq _Img2 __Img2)
   self)
  (:Img1
   (&rest __Img1)
   (if (keywordp (car __Img1))
       (send* _Img1 __Img1)
     (progn
       (if __Img1 (setq _Img1 (car __Img1)))
       _Img1)))
  (:Img2
   (&rest __Img2)
   (if (keywordp (car __Img2))
       (send* _Img2 __Img2)
     (progn
       (if __Img2 (setq _Img2 (car __Img2)))
       _Img2)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _Img1
    (send _Img1 :serialization-length)
    ;; sensor_msgs/Image _Img2
    (send _Img2 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _Img1
       (send _Img1 :serialize s)
     ;; sensor_msgs/Image _Img2
       (send _Img2 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _Img1
     (send _Img1 :deserialize buf ptr-) (incf ptr- (send _Img1 :serialization-length))
   ;; sensor_msgs/Image _Img2
     (send _Img2 :deserialize buf ptr-) (incf ptr- (send _Img2 :serialization-length))
   ;;
   self)
  )

(setf (get syncnode::syncimg :md5sum-) "2514b0ac924f623ec5509dee9382194c")
(setf (get syncnode::syncimg :datatype-) "syncnode/syncimg")
(setf (get syncnode::syncimg :definition-)
      "sensor_msgs/Image Img1
sensor_msgs/Image Img2

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :syncnode/syncimg "2514b0ac924f623ec5509dee9382194c")


