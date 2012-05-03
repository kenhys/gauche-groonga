;;;
;;; Test groonga
;;;

(use gauche.interactive)
(use gauche.sequence)
(use gauche.collection)
(use gauche.test)

(use groonga)

(test-record-file "test.record")

(test-module 'groonga)
(test-start "const")

;; The following is a dummy test code.
;; Replace it for your tests.

;;
;; 
;;
(test-section "groonga constant")

(test* "GRN_ID_NIL" 0 GRN_ID_NIL)

(test-end)
