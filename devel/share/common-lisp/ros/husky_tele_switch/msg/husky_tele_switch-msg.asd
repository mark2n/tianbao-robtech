
(cl:in-package :asdf)

(defsystem "husky_tele_switch-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Key" :depends-on ("_package_Key"))
    (:file "_package_Key" :depends-on ("_package"))
  ))