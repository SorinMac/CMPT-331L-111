(defun Ceaser_Encrypt(thing move)
;why does this work and how to make it more like mine
   (setf thing (map 'string (lambda (i) 
	(if (and (>= (char-code i) 65) (<= (char-code i) 90)) 
	(code-char (+ 65 (mod (+ (- (char-code i) 65) move) 26))) i)) thing))
	(format t thing)
)

(defun Ceaser_Decrypt(thing move)
   (terpri)
   (write thing)
   (terpri)
   (write move)
)

(defun Ceaser_Solve(thing move)
   (terpri)
   (write thing)
   (terpri)
   (write move)
)


(Ceaser_Encrypt "SORINZ" 5)
(Ceaser_Decrypt "SORINZ" 5)
(Ceaser_Solve "SORINZ" 5)
