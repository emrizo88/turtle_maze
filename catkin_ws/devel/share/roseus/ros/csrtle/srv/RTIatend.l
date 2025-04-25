;; Auto-generated. Do not edit!


(when (boundp 'csrtle::RTIatend)
  (if (not (find-package "CSRTLE"))
    (make-package "CSRTLE"))
  (shadow 'RTIatend (find-package "CSRTLE")))
(unless (find-package "CSRTLE::RTIATEND")
  (make-package "CSRTLE::RTIATEND"))
(unless (find-package "CSRTLE::RTIATENDREQUEST")
  (make-package "CSRTLE::RTIATENDREQUEST"))
(unless (find-package "CSRTLE::RTIATENDRESPONSE")
  (make-package "CSRTLE::RTIATENDRESPONSE"))

(in-package "ROS")





(defclass csrtle::RTIatendRequest
  :super ros::object
  :slots (_t _x _y ))

(defmethod csrtle::RTIatendRequest
  (:init
   (&key
    ((:t __t) (instance ros::time :init))
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _t __t)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; time _t
    8
    ;; int8 _x
    1
    ;; int8 _y
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _t
       (write-long (send _t :sec) s) (write-long (send _t :nsec) s)
     ;; int8 _x
       (write-byte _x s)
     ;; int8 _y
       (write-byte _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _t
     (send _t :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _t :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _x
     (setq _x (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _x 127) (setq _x (- _x 256)))
   ;; int8 _y
     (setq _y (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _y 127) (setq _y (- _y 256)))
   ;;
   self)
  )

(defclass csrtle::RTIatendResponse
  :super ros::object
  :slots (_atend ))

(defmethod csrtle::RTIatendResponse
  (:init
   (&key
    ((:atend __atend) nil)
    )
   (send-super :init)
   (setq _atend __atend)
   self)
  (:atend
   (&optional (__atend :null))
   (if (not (eq __atend :null)) (setq _atend __atend)) _atend)
  (:serialization-length
   ()
   (+
    ;; bool _atend
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _atend
       (if _atend (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _atend
     (setq _atend (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass csrtle::RTIatend
  :super ros::object
  :slots ())

(setf (get csrtle::RTIatend :md5sum-) "601274b2c558d8c19960f10fd7863a32")
(setf (get csrtle::RTIatend :datatype-) "csrtle/RTIatend")
(setf (get csrtle::RTIatend :request) csrtle::RTIatendRequest)
(setf (get csrtle::RTIatend :response) csrtle::RTIatendResponse)

(defmethod csrtle::RTIatendRequest
  (:response () (instance csrtle::RTIatendResponse :init)))

(setf (get csrtle::RTIatendRequest :md5sum-) "601274b2c558d8c19960f10fd7863a32")
(setf (get csrtle::RTIatendRequest :datatype-) "csrtle/RTIatendRequest")
(setf (get csrtle::RTIatendRequest :definition-)
      "time t
int8 x
int8 y
---
bool atend

")

(setf (get csrtle::RTIatendResponse :md5sum-) "601274b2c558d8c19960f10fd7863a32")
(setf (get csrtle::RTIatendResponse :datatype-) "csrtle/RTIatendResponse")
(setf (get csrtle::RTIatendResponse :definition-)
      "time t
int8 x
int8 y
---
bool atend

")



(provide :csrtle/RTIatend "601274b2c558d8c19960f10fd7863a32")


