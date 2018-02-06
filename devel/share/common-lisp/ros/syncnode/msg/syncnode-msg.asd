
(cl:in-package :asdf)

(defsystem "syncnode-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "syncimg" :depends-on ("_package_syncimg"))
    (:file "_package_syncimg" :depends-on ("_package"))
  ))