;; Auto-generated. Do not edit!


(when (boundp 'csrtle::PoseOrntBundle)
  (if (not (find-package "CSRTLE"))
    (make-package "CSRTLE"))
  (shadow 'PoseOrntBundle (find-package "CSRTLE")))
(unless (find-package "CSRTLE::POSEORNTBUNDLE")
  (make-package "CSRTLE::POSEORNTBUNDLE"))

(in-package "ROS")
;;//! \htmlinclude PoseOrntBundle.msg.html


(defclass csrtle::PoseOrntBundle
  :super ros::object
  :slots (_t _x _y _o ))

(defmethod csrtle::PoseOrntBundle
  (:init
   (&key
    ((:t __t) (instance ros::time :init))
    ((:x __x) 0)
    ((:y __y) 0)
    ((:o __o) 0)
    )
   (send-super :init)
   (setq _t __t)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _o (round __o))
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
  (:o
   (&optional __o)
   (if __o (setq _o __o)) _o)
  (:serialization-length
   ()
   (+
    ;; time _t
    8
    ;; int8 _x
    1
    ;; int8 _y
    1
    ;; int8 _o
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
     ;; int8 _o
       (write-byte _o s)
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
   ;; int8 _o
     (setq _o (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _o 127) (setq _o (- _o 256)))
   ;;
   self)
  )

(setf (get csrtle::PoseOrntBundle :md5sum-) "4bf56cff2846ddf0c7c3fbc294b28115")
(setf (get csrtle::PoseOrntBundle :datatype-) "csrtle/PoseOrntBundle")
(setf (get csrtle::PoseOrntBundle :definition-)
      "time t
int8 x
int8 y
int8 o

")



(provide :csrtle/PoseOrntBundle "4bf56cff2846ddf0c7c3fbc294b28115")


