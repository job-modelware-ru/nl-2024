(char-name #\A)

(char-name #\ё)

(name-char "CYRILLIC_SMALL_LETTER_IO")

(format t "~c"
    (char-upcase
        (name-char "CYRILLIC_SMALL_LETTER_IO")))

(char-code #\Ё)

(setf h (make-hash-table))

(setf (gethash 'name h)  'carl)

(gethash 'name h)

(defvar n 11)

(and (> n 10) (< n 20) )

(or (> n 10) (< n 20))

(setf n 9)

(and (> n 10) (< n 20))

(defun nth-dec-digit (num n)
    (rem
        (truncate
            (/ (abs num) (expt 10 n)))
        10))

(defun happy-ticket-p (num)
  (and (>= num 0) (<= num 999999)
       (=  (+ (nth-dec-digit num 0)
               (nth-dec-digit num 1)
               (nth-dec-digit num 2))
           (+ (nth-dec-digit num 3)
              (nth-dec-digit num 4)
              (nth-dec-digit num 5)))))

(defun factorial (n)
  (if (<= n 1)
      1
      (* n (factorial (1- n)))))

(defun prime-p (n)
  (if (< n 2)
      nil
      (loop for i from 2 to (isqrt n)
            always (not (zerop (mod n i))))))

(defun fibonacci (n)
  (let ((a 0)
        (b 1)
        (result '()))
    (loop for i from 0 to (1- n)
          do (progn
               (push a result)  ; Добавляем текущее значение a в результат
               (multiple-value-bind (fn sn) (values a (+ a b))
                 (setq a b)  ; Обновляем a на b
                 (setq b sn))))  ; Обновляем b на следующее число Фибоначчи
    (nreverse result)))  ; Возвращаем результат в правильном порядке


(happy-ticket-p 111111)

(prime-p 10)

(fibonacci 10)

(factorial 5)





