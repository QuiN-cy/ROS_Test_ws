
(cl:in-package :asdf)

(defsystem "binpicking_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "CalculateObjectposeFromPointcloud" :depends-on ("_package_CalculateObjectposeFromPointcloud"))
    (:file "_package_CalculateObjectposeFromPointcloud" :depends-on ("_package"))
    (:file "CapturePointcloud" :depends-on ("_package_CapturePointcloud"))
    (:file "_package_CapturePointcloud" :depends-on ("_package"))
  ))