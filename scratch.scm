(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(defun atom? (x)
  (not (listp x)))

(atom? 1)

;; lat?
(define lat?
  (lambda (l)
    (cond((null? l) #t)
         ((atom? (car l)) (lat? (cdr l)))
         (else #f))))




(define lat?
  (lambda (l) #t)
  ((atom? (car l) (lat? (cdr l)))
   (else #f)))
