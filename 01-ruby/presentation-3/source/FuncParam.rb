#________________________________________________

puts 'hello', 'ruby', 'worlds'

#________________________________________________

def convert(value, factor = 1000)
    value * factor
end
puts convert(11) # 11000
puts convert(11, 1024) # 11264

# convert(11, 1024, 10) # error
# convert # error

#________________________________________________

def multi_params(*params)
p params
end

multi_params(1, 2, 3, 4) # [1, 2, 3, 4]
multi_params(1, 2, 3, 4, 5) # [1, 2, 3, 4, 5]

#________________________________________________

def convert(value:, factor: 1000)
value * factor
end
puts convert(value: 11) # 11000
puts convert(factor: 11, value: 1024) # 11264

#________________________________________________

def convert(value, factor = nil)
return value * 1000 unless factor
value * factor
end
puts convert(11) # 11000
puts convert(11, 1024) # 11264
