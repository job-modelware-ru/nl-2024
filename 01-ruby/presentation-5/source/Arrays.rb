# class Numerator
#   include Enumerable
#   def each
#     yield 1
#     yield 2
#     yield 3
#     yield 4
#     yield 5
#   end
# end

# n = Numerator.new
# p n.select(&:even?) # [2, 4]
# p n.max # 5



# p Enumerable.instance_methods



# Заполнение массива при создании
# p [1, 2, 3, 4, 5] # [1, 2, 3, 4, 5]
# p [*1..5] # [1, 2, 3, 4, 5]
# p (1..5).to_a # [1, 2, 3, 4, 5]
# p Array.new(5, 1) # [1, 1, 1, 1, 1]
# p Array.new(5) { |i| i + 1 } # [1, 2, 3, 4, 5]
# p %w[1 2 3 4 5] # ["1", "2", "3", "4", "5"]
# p %i[1 2 3 4 5] # [:"1", :"2", :"3", :"4", :"5"]



# Заполнение массива при помощи оператора присваивания
# arr = []
# arr[0] = 1
# arr[1] = 2
# arr[2] = 3
# p arr # [1, 2, 3]


# arr = []
# arr[9] = 1
# p arr # [nil, nil, nil, nil, nil, nil, nil, nil, nil, 1]


# p arr[100] # nil


# arr[] = 1 # ошибка

# p arr.[]=(0, 1) # а вот так окей



# Заполнение массива при помощи оператора <<
# arr = []
# arr << 1
# arr << 2
# arr << 3
# p arr # [1, 2, 3]



# Заполнение массива при помощи метода push
# arr1 = []
# arr1.push 1
# arr1.push 2, 3, 4, 5 # [1, 2, 3, 4, 5]
# p arr1



# Заполнение массива при помощи метода unshift
# arr = [1, 2, 3]
# arr.unshift(0)
# arr.unshift(-3, -2, -1)
# p arr # [-3, -2, -1, 0, 1, 2, 3]
# arr = [1, 2, 3]
# arr.unshift(0)
# arr.unshift(-3, -2, -1)
# p arr # [-3, -2, -1, 0, 1, 2, 3]



# Заполнение массива при помощи метода insert
# arr = %w[a b c]
# arr.insert(0, 1)
# p arr # [1, "a", "b", "c"]
# arr.insert(2, 2, 3)
# p arr # [1, "a", 2, 3, "b", "c"]
# arr.insert(-1, 4)
# p arr # [1, "a", 2, 3, "b", "c", 4]
# arr.insert(-3, 5)
# p arr # [1, "a", 2, 3, "b", 5, "c", 4]



# Извлечение элемента по индексу, срезы, at, fetch
arr = [1, 2, 3, 4, 5]

# puts arr[0] # 1
# puts arr[4] # 5
# puts arr[-1] # 5
# puts arr[-2] # 4

# p arr[1..3] # [2, 3, 4]
# p arr[1...3] # [2, 3]
# p arr[1..-2] # [2, 3, 4]
# p arr[1, 1] # [2]
# p arr[2, 1] # [3]
# p arr[2, 2] # [3, 4]
# p arr[-2, 2] # [4, 5]


# puts arr.at(2) # 3
# puts arr.at(-2) # 4

# puts arr.fetch(2) # 3
# puts arr.fetch(-2) # 4
# # puts arr.fetch(10) # index 10 outside of array bounds: -5...5

# p arr.fetch(2, 0) # 3
# p arr.fetch(10, 0) # 0
# p arr.fetch(10, nil) # nil

# arr = [1, 2, 3, 4, 5]
# puts arr.fetch(10) { |i| "Индекс #{i} не существует" }
# puts arr.fetch(10) { |i| 0 }



# Метод slice и slice!
# arr = [1, 2, 3, 4, 5]
# p arr.slice(1..3) # [2, 3, 4]
# p arr.slice(1...3) # [2, 3]
# p arr.slice(1..-2) # [2, 3, 4]
# p arr.slice(1, 1) # [2]
# p arr.slice(2, 1) # [3]
# p arr.slice(2, 2) # [3, 4]
# p arr.slice(-2, 2) # [4, 5]

# p arr.slice(2..3) # [3, 4]
# p arr # [1, 2, 3, 4, 5]
# p arr.slice!(2..3) # [3, 4]
# p arr



# Метод values_at
# arr = (1..7).to_a
# p arr.values_at(1, 3, 5) # [2, 4, 6]



# Методы first и last
# arr = [1, 2, 3, 4, 5]
# p arr.first # 1
# p arr.last # 5



# Методы take и last + модификация 
# arr = [1, 2, 3, 4, 5]
# p arr.take(3) # [1, 2, 3]

# arr = [1, 2, 3, 4, 5]
# p arr.drop(3) # [4, 5]

# arr = [1, 2, 3, 4, 5]
# p arr.take(3) # [1, 2, 3]
# p arr.drop(3) # [4, 5]
# p arr.take_while { |x| x < 3 } # [1, 2]
# p arr.drop_while { |x| x < 3 } # [3, 4, 5]
# arr = [1, 3, 5, 4, 2]
# p arr.take_while { |x| x < 3 } # [1]
# p arr.drop_while { |x| x < 3 } # [3, 5, 4, 2]



# Поиск индексов элементов
# colors = %w[red orange yellow green red blue red indigo red violet]
# p colors.index('red') # 0
# p colors.index('hello') # nil
# p colors.rindex('red') # 8


# arr = [-3, -2, -1, 0, 1, 2, 3]
# puts arr.index { |value| value > 0 } # 4



# Случайный элемент массива
# rand
# colors = %w[red orange yellow green blue indigo violet]
# index = rand(0..6)
# puts index # 2
# puts colors[index] # yellow


# sample
# arr = [1, 2, 3, 4, 5]
# p arr.sample # 5
# p arr.sample(2) # [4, 1]


# shuffle и shuffle!
# arr = [1, 2, 3, 4, 5]
# p arr.shuffle # [4, 2, 1, 5, 3]
# p arr # [1, 2, 3, 4, 5]
# p arr.shuffle! # [2, 1, 4, 5, 3]
# p arr # [2, 1, 4, 5, 3]



# Удаление элементов pop, shift, delete, delete_at, clear, compact, compact!, uniq, uniq!
# arr = [*1..5]
# p arr.pop # 5
# p arr.pop # 4
# p arr # [1, 2, 3]

# arr = [*1..5]
# p arr.pop(1) # [5]
# p arr.pop(2) # [3, 4]
# p arr # [1, 2]

# arr = [*1..7]
# p arr.shift # 1
# p arr.shift # 2
# p arr # [3, 4, 5, 6, 7]
# p arr.shift(1) # [3]
# p arr.shift(2) # [4, 5]
# p arr # [6, 7]

# arr = [1, 2, 3, 2, 4, 2, 5]
# p arr.delete(2) # 2
# p arr # [1, 3, 4, 5]
# p arr.delete(10) # nil
# p arr # [1, 3, 4, 5]
# p arr.delete(10) { 'индекс не обнаружен' } # "индекс не обнаружен"

# arr = [1, 2, 3, 4, 5]
# p arr.delete_at(2) # 3
# p arr.delete_at(100) # nil
# p arr # [1, 2, 4, 5]

# arr = [1, 2, 3, 4, 5]
# arr.clear
# p arr # []

# arr = [1, 2, 3]
# arr[7] = 4
# p arr # [1, 2, 3, nil, nil, nil, nil, 4]
# p arr.compact # [1, 2, 3, 4]
# p arr # [1, 2, 3, nil, nil, nil, nil, 4]
# p arr.compact! # [1, 2, 3, 4]
# p arr # [1, 2, 3, 4]


# arr = [1, 2, 1, 3, 1, 2, 4]
# p arr.uniq # [1, 2, 3, 4]
# p arr # [1, 2, 1, 3, 1, 2, 4]
# p arr.uniq! # [1, 2, 3, 4]
# p arr # [1, 2, 3, 4]



# fill
# arr = Array.new(5)
# p arr # [nil, nil, nil, nil, nil]
# p arr.fill(0) # [0, 0, 0, 0, 0]
# p arr.fill { |i| i + 1 } # [1, 2, 3, 4, 5]


# arr = Array.new(5)
# p arr # [nil, nil, nil, nil, nil]
# p arr.fill(0, 2..3) # [nil, nil, 0, 0, nil]
# p arr.fill(0, 1, 3) # [nil, 0, 0, 0, nil]
# p arr.fill(nil) # [nil, nil, nil, nil, nil]
# p arr.fill(2..3) { |i| i + 1 } # [nil, nil, 3, 4, nil]
# p arr.fill(1, 3) { |i| i + 1 } # [nil, 2, 3, 4, nil]



# replace
# arr = [1, 2, 3, 4, 5]
# arr.replace %w[a b c]
# p arr # ["a", "b", "c"]



# reverse
# arr = [1, 2, 3, 4, 5]
# p arr.reverse # [5, 4, 3, 2, 1]
# p arr # [1, 2, 3, 4, 5]
# p arr.reverse! # [5, 4, 3, 2, 1]
# p arr # [5, 4, 3, 2, 1]



# rotate
# arr = [1, 2, 3, 4, 5]
# p arr.rotate! # [2, 3, 4, 5, 1]
# p arr.rotate! # [3, 4, 5, 1, 2]
# p arr.rotate!(2) # [5, 1, 2, 3, 4]
# arr = [1, 2, 3, 4, 5]
# p arr.rotate!(-1) # [5, 1, 2, 3, 4]
# p arr.rotate!(-1) # [4, 5, 1, 2, 3]
# p arr.rotate!(-2) # [2, 3, 4, 5, 1]



# count, length
# arr = [1, 2, 3]
# arr[7] = 4
# p arr # [1, 2, 3, nil, nil, nil, nil, 4]
# p arr.length # 8
# p arr.size # 8

# arr = [1, 2, 3]
# arr[7] = 3
# p arr # [1, 2, 3, nil, nil, nil, nil, 4]
# p arr.count # 8
# p arr.count(nil) # 4
# p arr.count(3) # 2



# include?, empty?
# arr = [1, 2, 3, 4, 5]
# p arr.include? 3 # true
# p arr.include? 10 # false


# first = []
# second = [1, 2, 3, 4, 5]
# puts 'Массив first пустой' if first.empty? # true
# puts 'Массив second пустой' if second.empty? # false



# join, split, to_h, to_a
# arr = [1, 2, 3, 4, 5]
# puts arr.join # 12345
# puts arr.join '-' # 1-2-3-4-5


# p '12345'.split '' # ["1", "2", "3", "4", "5"]
# p '1-2-3-4-5'.split '-' # ["1", "2", "3", "4", "5"]


# colors = [
# [:red, 'красный'],
# [:orange, 'оранжевый'],
# [:yellow, 'желтый'],
# [:green, 'зеленый'],
# [:blue, 'голубой'],
# [:indigo, 'синий'],
# [:violet, 'фиолетовый'],
# ]
# clrhsh = colors.to_h
# puts clrhsh[:red] # красный
# puts clrhsh[:violet] # фиолетовый

# clrhsh = {
# red: 'красный',
# orange: 'оранжевый',
# yellow: 'желтый',
# green: 'зеленый',
# blue: 'голубой',
# indigo: 'синий',
# violet: 'фиолетовый'
# }
# colors = clrhsh.to_a
# p colors.first # [:red, "красный"]
# p colors.last # [:violet, "фиолетовый"]



# all?, any?, one?, none?
# puts [true, true, true].all? # true
# puts [true, false, true].all? # false
# puts [1, 2, 3, 4, 5].all? # true
# puts [1, 2, nil, 4].all? # false

# puts Array.new(5, 2).all?(2) # true
# puts [1, 2, 3, 4, 5].all?(2) # false
# puts [1, 2, 3, 4, 5].all?(Integer) # true
# puts [nil, true, 2].all?(Integer) # false

# puts [1, 2, 3, 4, 5].all? { |x| x > 0 } # true
# puts [1, 2, 3, 4, 5].all? { |x| x.positive? } # true
# puts [1, 2, 3, 4, 5].all?(&:positive?) # true
# puts [-2, -1 , 0, 1, 2].all? { |x| x > 0 } # false
# puts [-2, -1 , 0, 1, 2].all? { |x| x.positive? } # false
# puts [-2, -1 , 0, 1, 2].all?(&:positive?) # false


# puts [false, false, false].any? # false
# puts [false, false, true].any? # true
# puts Array.new(5).any? # false
# puts [1, 2, 3, 4, 5].any? # true

# puts [1, 2, 3, 4, 5].any?(6) # false
# puts [1, 2, 3, 4, 5].any?(2) # true
# puts [true, false, true].any?(Integer) # false
# puts [nil, true, 2].any?(Integer) # true

# puts [1, 3, 5, 7, 9].any? { |x| x.even? } # false
# puts [1, 3, 5, 7, 9].any?(&:even?) # false
# puts [1, 2, 3, 4, 5].any? { |x| x.even? } # true
# puts [1, 2, 3, 4, 5].any?(&:even?) # true


# puts [true, false, false].one? # true
# puts [true, false, true].one? # false
# puts [1, 2, 3, 4, 5].one?(3) # true
# puts [1, 2, 3, 4, 5].one?(6) # false
# puts [0, nil, true, false].one?(Integer) # true
# puts [nil, true, false].one?(Integer) # false
# puts [-2, -1, 0, 1, 2].one?(&:negative?) # false
# puts [-1, 0, 1, 2, 3].one?(&:negative?) # true
# puts [1, 2, 3, 4, 5].one?(&:negative?) # false


# puts [false, false, false].none? # true
# puts [false, false, true].none? # false
# puts Array.new(5).none? # true
# puts [1, 2, 3, 4, 5].none? # false
# puts [1, 2, 3, 4, 5].none?(6) # true
# puts [1, 2, 3, 4, 5].none?(3) # false
# puts [nil, true, false].none?(Integer) # true
# puts [0, nil, true, false].none?(Integer) # false
# puts [1, 2, 3, 4, 5].none?(&:negative?) # true
# puts [-1, 0, 1, 2, 3].none?(&:negative?) # false



# МАТРИЦЫ
# arr = [
#   [1, 2, 3],
#   [4, 5, 6],
#   [7, 8, 9]
# ]
# p arr.first # [1, 2, 3]
# p arr[1] # [4, 5, 6]
# p arr.last # [7, 8, 9]


# arr = [1, 2, 3, 4]
# arr << [5, 6, 7]
# p arr # [1, 2, 3, 4, [5, 6, 7]]


# arr = [1, 2, 3, 4]
# arr << [5, 6, 7]
# p arr # [1, 2, 3, 4, [5, 6, 7]]
# p arr.flatten # [1, 2, 3, 4, 5, 6, 7]


# arr = [1, [2, [3, 4]]]
# puts arr[1][1][0] # 3
# puts arr[1][1][1] # 4


# arr = [1, [2, [3, 4]]]
# puts arr.dig(1, 1, 0) # 3
# puts arr.dig(1, 1, 1) # 4

# matrix = [
# [1, 2, 3],
# [4, 5, 6]
# ]
# p matrix.transpose # [[1, 4], [2, 5], [3, 6]]

# eng = %i[red orange yellow green blue indigo violet]
# rus = %w[красный оранжевый желтый зеленый
# голубой синий фиолетовый]
# p eng.zip(rus)



# итераторы
# arr = [1, 2, 3, 4, 5]
# arr.each { |x| puts x }
# p arr.map { |x| x * x } # [1, 4, 9, 16, 25]
# p arr.select { |x| x.even? } # [2, 4]
# p arr.reject(&:even?) # [1, 3, 5]
# p arr.reduce(:*) # 120

# arr = [1, 2, 3, 4, 5]
# arr.reverse_each { |x| puts x }
# arr.reverse.each { |x| puts x }

# arr = [1, 2, 3]
# arr.cycle(2) { |x| puts x } # 1, 2, 3, 1, 2, 3

# arr = %w[first second first]
# arr.each_with_index { |v, i| p [i, v] }
# p arr.map.with_index { |v, i| [i, v] }

# arr = [*1..21]
# arr.each_slice(7) { |a| p a }

# arr = [1, 2, 3, 4, 5]
# puts arr.reduce(:*) # 120
# puts arr.reduce(:+) # 15

# puts [1, 2, 3, 4, 5].sum # 15

# p [5, 8, 3, 2, 9, 1].min # 1
# p [5, 8, 3, 2, 9, 1].max # 9
# p [5, 8, 3, 2, 9, 1].minmax # [1, 9]

# puts %w[first second third].max { |a, b| a.size <=> b.size } # second

# p [5, 8, 3, 2, 9, 1].sort # [1, 2, 3, 5, 8, 9]

# arr = %w[first second third]
# p arr.sort { |a, b| a.size <=> b.size } # ["first", "third", "second"]

# arr = %w[first second third]
# p arr.sort_by { |x| x.size } # ["first", "third", "second"]





















