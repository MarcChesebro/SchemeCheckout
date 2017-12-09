(define (checkout value subtotal)
	(if (< value 0)
		(printTotal subtotal)
		(getvalue (+ subtotal value))
	)

)

(define (printTotal subtotal)
	(display "subtotal: " )
	(write subtotal)
	(newline)
	(display "tax: ")
	(write (* subtotal .06))
	(newline)
	(display "total: ")
	(write (+ subtotal (* subtotal .06)))
)

(define (getvalue subtotal)
	(newline)
	(display "enter new value: ")
	(let (( in (read)))
		(
			checkout in subtotal
		)
	)
	#t
)
