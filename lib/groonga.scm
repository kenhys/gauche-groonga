;;;
;;; groonga
;;;

(define-module groonga
  (extend
   groonga.table
   )
  (export-all)
  )
(select-module groonga)

;; Loads extension
(dynamic-load "gauche--groonga" :init-function "Scm_Init_gauche_groonga")

;;
;; Put your Scheme definitions here
;;


;; Epilogue
(provide "groonga")
