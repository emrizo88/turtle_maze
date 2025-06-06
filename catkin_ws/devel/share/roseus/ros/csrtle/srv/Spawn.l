;; Auto-generated. Do not edit!


(when (boundp 'csrtle::Spawn)
  (if (not (find-package "CSRTLE"))
    (make-package "CSRTLE"))
  (shadow 'Spawn (find-package "CSRTLE")))
(unless (find-package "CSRTLE::SPAWN")
  (make-package "CSRTLE::SPAWN"))
(unless (find-package "CSRTLE::SPAWNREQUEST")
  (make-package "CSRTLE::SPAWNREQUEST"))
(unless (find-package "CSRTLE::SPAWNRESPONSE")
  (make-package "CSRTLE::SPAWNRESPONSE"))

(in-package "ROS")





(defclass csrtle::SpawnRequest
  :super ros::object
  :slots (_x _y _theta _name ))

(defmethod csrtle::SpawnRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   (setq _name (string __name))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _theta
    4
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass csrtle::SpawnResponse
  :super ros::object
  :slots (_name ))

(defmethod csrtle::SpawnResponse
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass csrtle::Spawn
  :super ros::object
  :slots ())

(setf (get csrtle::Spawn :md5sum-) "0b2d2e872a8e2887d5ed626f2bf2c561")
(setf (get csrtle::Spawn :datatype-) "csrtle/Spawn")
(setf (get csrtle::Spawn :request) csrtle::SpawnRequest)
(setf (get csrtle::Spawn :response) csrtle::SpawnResponse)

(defmethod csrtle::SpawnRequest
  (:response () (instance csrtle::SpawnResponse :init)))

(setf (get csrtle::SpawnRequest :md5sum-) "0b2d2e872a8e2887d5ed626f2bf2c561")
(setf (get csrtle::SpawnRequest :datatype-) "csrtle/SpawnRequest")
(setf (get csrtle::SpawnRequest :definition-)
      "float32 x
float32 y
float32 theta
string name # Optional.  A unique name will be created and returned if this is empty
---
string name
")

(setf (get csrtle::SpawnResponse :md5sum-) "0b2d2e872a8e2887d5ed626f2bf2c561")
(setf (get csrtle::SpawnResponse :datatype-) "csrtle/SpawnResponse")
(setf (get csrtle::SpawnResponse :definition-)
      "float32 x
float32 y
float32 theta
string name # Optional.  A unique name will be created and returned if this is empty
---
string name
")



(provide :csrtle/Spawn "0b2d2e872a8e2887d5ed626f2bf2c561")


