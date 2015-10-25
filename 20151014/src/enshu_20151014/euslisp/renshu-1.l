#!/usr/bin/env irteusgl

(load "lib/llib/unittest.l")
(init-unit-test)
(send *unit-test* :clear-result)
;; DO NOT EDIT BEFORE THIS LINE

;; 1
(assert (eq (car (X (cdr '(a (b c) d)))) 'b) "mondai 1")
;; 2
(assert (eq (X 13 (/ 1 0)) 13) "mondai 2")
;; 3
(assert (equal (X #'list 1 nil) '(1)) "mondai 3")
;;

;; DO NOT EDIT AFTER THIS LINE
(send *unit-test* :print-result)
(exit 1)




