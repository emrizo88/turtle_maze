;; Auto-generated. Do not edit!


(when (boundp 'csrtle::RTIbump)
  (if (not (find-package "CSRTLE"))
    (make-package "CSRTLE"))
  (shadow 'RTIbump (find-package "CSRTLE")))
(unless (find-package "CSRTLE::RTIBUMP")
  (make-package "CSRTLE::RTIBUMP"))
(unless (find-package "CSRTLE::RTIBUMPREQUEST")
  (make-package "CSRTLE::RTIBUMPREQUEST"))
(unless (find-package "CSRTLE::RTIBUMPRESPONSE")
  (make-package "CSRTLE::RTIBUMPRESPONSE"))

(in-package "ROS")





(defclass csrtle::RTIbumpRequest
  :super ros::object
  :slots (_t _x1 _y1 _x2 _y2 ))

(defmethod csrtle::RTIbumpRequest
  (:init
   (&key
    ((:t __t) (instance ros::time :init))
    ((:x1 __x1) 0)
    ((:y1 __y1) 0)
    ((:x2 __x2) 0)
    ((:y2 __y2) 0)
    )
   (send-super :init)
   (setq _t __t)
   (setq _x1 (round __x1))
   (setq _y1 (round __y1))
   (setq _x2 (round __x2))
   (setq _y2 (round __y2))
   self)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:serialization-length
   ()
   (+
    ;; time _t
    8
    ;; int8 _x1
    1
    ;; int8 _y1
    1
    ;; int8 _x2
    1
    ;; int8 _y2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _t
       (write-long (send _t :sec) s) (write-long (send _t :nsec) s)
     ;; int8 _x1
       (write-byte _x1 s)
     ;; int8 _y1
       (write-byte _y1 s)
     ;; int8 _x2
       (write-byte _x2 s)
     ;; int8 _y2
       (write-byte _y2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _t
     (send _t :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _t :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _x1
     (setq _x1 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _x1 127) (setq _x1 (- _x1 256)))
   ;; int8 _y1
     (setq _y1 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _y1 127) (setq _y1 (- _y1 256)))
   ;; int8 _x2
     (setq _x2 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _x2 127) (setq _x2 (- _x2 256)))
   ;; int8 _y2
     (setq _y2 (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _y2 127) (setq _y2 (- _y2 256)))
   ;;
   self)
  )

(defclass csrtle::RTIbumpResponse
  :super ros::object
  :slots (_bump ))

(defmethod csrtle::RTIbumpResponse
  (:init
   (&key
    ((:bump __bump) nil)
    )
   (send-super :init)
   (setq _bump __bump)
   self)
  (:bump
   (&optional (__bump :null))
   (if (not (eq __bump :null)) (setq _bump __bump)) _bump)
  (:serialization-length
   ()
   (+
    ;; bool _bump
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _bump
       (if _bump (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _bump
     (setq _bump (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass csrtle::RTIbump
  :super ros::object
  :slots ())

(setf (get csrtle::RTIbump :md5sum-) "572d9da764261393a9c6c33976c42dac")
(setf (get csrtle::RTIbump :datatype-) "csrtle/RTIbump")
(setf (get csrtle::RTIbump :request) csrtle::RTIbumpRequest)
(setf (get csrtle::RTIbump :response) csrtle::RTIbumpResponse)

(defmethod csrtle::RTIbumpRequest
  (:response () (instance csrtle::RTIbumpResponse :init)))

(setf (get csrtle::RTIbumpRequest :md5sum-) "572d9da764261393a9c6c33976c42dac")
(setf (get csrtle::RTIbumpRequest :datatype-) "csrtle/RTIbumpRequest")
(setf (get csrtle::RTIbumpRequest :definition-)
      "time t
int8 x1
int8 y1
int8 x2
int8 y2
---
bool bump
")

(setf (get csrtle::RTIbumpResponse :md5sum-) "572d9da764261393a9c6c33976c42dac")
(setf (get csrtle::RTIbumpResponse :datatype-) "csrtle/RTIbumpResponse")
(setf (get csrtle::RTIbumpResponse :definition-)
      "time t
int8 x1
int8 y1
int8 x2
int8 y2
---
bool bump
")



(provide :csrtle/RTIbump "572d9da764261393a9c6c33976c42dac")


