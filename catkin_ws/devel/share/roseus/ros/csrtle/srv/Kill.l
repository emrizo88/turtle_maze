;; Auto-generated. Do not edit!


(when (boundp 'csrtle::Kill)
  (if (not (find-package "CSRTLE"))
    (make-package "CSRTLE"))
  (shadow 'Kill (find-package "CSRTLE")))
(unless (find-package "CSRTLE::KILL")
  (make-package "CSRTLE::KILL"))
(unless (find-package "CSRTLE::KILLREQUEST")
  (make-package "CSRTLE::KILLREQUEST"))
(unless (find-package "CSRTLE::KILLRESPONSE")
  (make-package "CSRTLE::KILLRESPONSE"))

(in-package "ROS")





(defclass csrtle::KillRequest
  :super ros::object
  :slots (_name ))

(defmethod csrtle::KillRequest
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

(defclass csrtle::KillResponse
  :super ros::object
  :slots ())

(defmethod csrtle::KillResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass csrtle::Kill
  :super ros::object
  :slots ())

(setf (get csrtle::Kill :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get csrtle::Kill :datatype-) "csrtle/Kill")
(setf (get csrtle::Kill :request) csrtle::KillRequest)
(setf (get csrtle::Kill :response) csrtle::KillResponse)

(defmethod csrtle::KillRequest
  (:response () (instance csrtle::KillResponse :init)))

(setf (get csrtle::KillRequest :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get csrtle::KillRequest :datatype-) "csrtle/KillRequest")
(setf (get csrtle::KillRequest :definition-)
      "string name
---
")

(setf (get csrtle::KillResponse :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get csrtle::KillResponse :datatype-) "csrtle/KillResponse")
(setf (get csrtle::KillResponse :definition-)
      "string name
---
")



(provide :csrtle/Kill "c1f3d28f1b044c871e6eff2e9fc3c667")


