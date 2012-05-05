;;;
;;; groonga
;;;

(define-module groonga.table
  (extend groonga)
  (export-all)
  )
(select-module groonga.table)

;; Loads extension
(dynamic-load "gauche--groonga" :init-function "Scm_Init_gauche_groonga")

;;
;; Put your Scheme definitions here
;;

;; Epilogue
(provide "groonga/table")

