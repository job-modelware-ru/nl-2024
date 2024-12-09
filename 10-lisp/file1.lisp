
(defun hello-world ()
    (format t "Hello, World!"))

(hello-world)

(defun print-n-randoms (n max-limit)
  (dotimes (i n)
    (format t "~r~%" (random max-limit))))

(print-n-randoms 3 100)

(macro-function 'format)

(macro-function 'defun)

(if (= 4 (* 2 2))
    (print "Don't panic")
    (print "Panic!"))

(defun too-large-a-number (number)
  (format t "Значение переменной: ~a~%" number))

(defun random-number (max)
  ;; Пример реализации случайного числа
  (random max))

(defun manipulate-list (lst)
  ;; Пример функции для манипуляции со списком
  (mapcar #'1+ lst))  ;; Например, увеличиваем каждое число на 1


(defun do-something-crazy ()
  (let ((numbers (loop for i from 1 to 5 collect (random-number 100)))  ; Генерируем список из 5 случайных чисел
        (crazy-list '(1 2 3 4 5)))
    (format t "Сгенерированные числа: ~a~%" numbers)  ; Выводим сгенерированные числа
    (let ((manipulated (manipulate-list crazy-list)))  ; Манипулируем списком
      (format t "Исходный список: ~a~%" crazy-list)
      (format t "Список после манипуляций: ~a~%" manipulated))
    (format t "Круто, не так ли?~%")))

(defvar n 1000)

(if (> n 100)
    (progn (too-large-a-number 1000)
           (do-something-crazy)))

(when (> n 10)
    (too-large-a-number 1000)
      (do-something-crazy))



(defvar *answer* 42)

*AnSwEr*

(setf *Answer* 0)

*ANSWER*

(setf x 42)

(type-of x)

(setf x "Dum spiro spero")

(type-of x)

(setf x pi)

(type-of x)

(setf p 3.14 e 2.71 g 9.81)


(describe 'type-of)



