# ------------пример кода №1------------

# puts 'Начало программы'

# if puts 'Эта строка выведется'
#   puts 'А эта уже нет'
# end

# k = 0
# if k == 1
#   puts 'Содержимое if-конструкции'
# elsif k == 2
#   puts 'Содержимое else'
# else
#   puts 'Содержимое elif'
# end

# puts 'Завершение программы'

# puts 'if-модификатор' if k == 0


# ------------пример кода №2------------

# k = 1

# puts (if k == 0
#         'if'
#       else
#         'else'
#       end)

# var1 = if k == 1
#         'if'
#       else
#         'else'
#       end

# if k == 2
#   var2 = 'if'
# else
#   var2 = 'else'
# end

# puts var1, var2


# ------------пример кода 3------------
# if x = 1
#   y = 'hello'
# end
# puts x
# puts y

# ------------пример кода №4------------
# if false
#   y = 'Hello, world!'
# end
# p y
# p z

# ------------пример кода №5------------
# if RUBY_VERSION != '2.4.0'
#   puts 'Некорректная версия'
# end

# if not RUBY_VERSION == '2.4.0'
#   puts 'Некорректная версия'
# end

# if !(RUBY_VERSION == '2.4.0')
#   puts 'Некорректная версия'
# end

# unless RUBY_VERSION == '2.4.0'
# puts 'Некорректная версия'
# end

# puts 'Некорректная версия' unless RUBY_VERSION == '2.4.0'

# ------------пример кода №6------------
# var = if rand(0..1) == 0
#         100
#       else
#         200
#       end
      
# var = rand(0..1) == 0 ? 100 : 200

# ------------пример кода №7------------
# number = rand(0..2)
# puts number

# case number
# when 0
#   puts 'Ноль';
# when 1
#   puts 'Единица'
# else
#   puts 'Два'
# end
