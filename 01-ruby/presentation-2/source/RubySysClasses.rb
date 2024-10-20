# СИНТАКСИЧЕСКИЕ КОНСТРУКТОРЫ


#  ------------пример кода №1------------

# puts 3.class

# o = Object.new
# puts o.object_id


#  ------------пример кода №2------------

# str = 'Hello, world!'
# puts str.class 

# str = String.new('Hello, world!')
# puts str



# СТРОКИ


#  ------------пример кода------------

# puts "Hello, world!".object_id
# puts 'Hello, world!'.object_id

# puts '2 + 2 = #{ 2 + 2 }'
# puts "2 + 2 = #{ 2 + 2 }"

# puts %q(Hello, world!)
# name = 'Ruby'
# puts %Q(Hello, #{name}!)

# str = <<here
# В строке, которая формируется
# heredoc-оператором,
# сохраняются переводы строк.
# Это идеальный инструмент 
# для ввода больших текстов.
# here
# puts str

# puts <<~here
# 2 + 2 = #{ 2 + 2 }
# here

# puts <<~'here'
# 2 + 2 = #{ 2 + 2 }
# here

# `ls -la`
# # Windows
# # `dir`

# puts %x(ls -la)
# # Windows
# # puts %x(dir)



# СИМВОЛЫ


#  ------------пример кода------------

# p:white

# puts :white.to_s
# puts 'white'.to_sym

# p:white

# puts 'white'.respond_to? :to_sym

# puts %Q(#{'white'.methods})


# ЦЕЛЫЕ ЧИСЛА 


#  ------------пример кода------------

# puts -42 
# puts +42 
# puts 42 

# puts 2000000 + 1900200
# puts 2_000_000 + 1_900_200
 
# puts 0b1010101
# puts 0o755
# puts 0xffcc00
  
# puts 242.to_s(2)
# puts 242.to_s(8)
# puts 242.to_s(16)  



# ВЕЩЕСТВЕННЫЕ ЧИСЛА 


#  ------------пример кода------------

# puts 0.00012
# puts 1.2e-4
# puts 346.1256
# puts 3.461256e+2 
# puts 1.8e307
# puts 1.8e308 
# puts 1.8e308 - 1.0e307
# puts 0 / 0.0
# puts 1 - 0 / 0.0
# number = 42.0
# infpos = 100 / 0.0
# infneg = -100 / 0.0
# nan = 0 / 0.0
# p number.infinite? 
# p infpos.infinite?
# p infneg.infinite?
# p number.nan?

# puts 2.class
# puts 2.0.class 
# puts (2 + 2.0).class

# puts 2.0.to_i
# puts 2.to_f



# ДИАПАЗОНЫ

#  ------------пример кода------------

# p 1..5 
# p 1...5 
# p (1..5).class 
# p Range.new(1, 5) 
# p Range.new(1, 5, true) 

# puts (1..5).first
# puts (1..5).last 

# range = 1..5
# p range.include? 3 
# p range.include? 7 

# p (1..).include? 100500 
# p (1..).include? -1

# p (1..).include? 100500
# p (1..).include? -1

# range = 1..5
# p range.cover?(3)
# p range.cover?(10)
# p range.include?(2..3)
# p range.cover?(2..3)
# p range.cover?(3..7)



# МАССИВЫ

#  ------------пример кода------------

# p [1, 2, 3, 4, 5]
# p Array.new
# arr = [1, 2, 3, 4, 5]
# p arr[0] 
# p arr[-1]
# p arr[2, 2] 
# p arr[2..3] 

# p [1, 'hello', 3, ['first', 'second']]

# colors = [
# 'красный', 'оранжевый', 'желтый', 'зеленый',
# 'голубой', 'синий', 'фиолетовый'
# ]
# p colors

# colors = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]
# p colors

# p %w(Hello,\ world! Hello,\ Ruby!)

# p colors = [:red, :orange, :yellow, :green, :blue, :indigo, :violet]
# colors = %i[red orange yellow green blue indigo violet]
# p colors



# ХЭШИ

#  ------------пример кода------------


# h = { 'first' => 'hello', 'second' => 'world' }
# puts h['second'] 

# h = { :first => 'hello', :second => 'world' }

# # актуальный синтаксис
# h = { first: 'hello', second: 'world' }
# puts h[:first]




# TRUE & FALSE

#  ------------пример кода------------

# p true
# p true.class

# p false
# p false.class

# 3 == 2 + 1
# 4 == 5



# NIL

#  ------------пример кода------------

# p nil 
# p nil.class

# arr = [1, 2, 3, 4, 5]
# p arr[0] 
# p arr[10] 
