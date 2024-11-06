# 1
# class Ticket
# MAX_COUNT = 300
# end
# def Ticket.max_count
# Ticket::MAX_COUNT
# end
# puts Ticket.max_count # 300


# 2
# class Ticket
# MAX_COUNT = 300
# def self.max_count # Ticket.max_count
# MAX_COUNT
# end
# end
# puts Ticket.max_count # 300


# 3
# class Ticket
#   MAX_COUNT = 300
#   MAX_PRICE = 1200
#   def self.max_count
#     MAX_COUNT
#   end
#   def self.max_price
#     MAX_PRICE
#   end
# end

# puts Ticket.max_count # 300
# puts Ticket.max_price # 1200


# _______________________________________Блок ниже запустить в vscode

# class Ticket
#   MAX_COUNT = 300
#   MAX_PRICE = 1200
# end

# class << Ticket
#   def max_count
#     Ticket::MAX_COUNT
#   end
#   def max_price
#     Ticket::MAX_PRICE
#   end
# end

# puts Ticket.max_count # 300
# puts Ticket.max_price # 1200


# class Ticket
#   MAX_COUNT = 300
#   MAX_PRICE = 1200
#     class << self
#       def max_count
#         MAX_COUNT
#       end
#     def max_price
#       MAX_PRICE
#     end
#   end
# end

# puts Ticket.max_count # 300
# puts Ticket.max_price # 1200

# ________________________________________________


# class Ticket
#   attr_accessor :price, :status
#   def initialize(price:)
#     @price = price
#     @status = true
#   end
#   def buy
#     @status = false
#     self
#   end
# end

# ticket = Ticket.new price: 600
# puts ticket.buy.price # 600

#  ________________________________________________

# class Ticket
#   attr_accessor :price
#   def initialize(price:)
#     @price = price
#   end
#   def +(number)
#     @price += number
#     self
#   end
# end

# ticket = Ticket.new(price: 500)
# ticket = ticket + 100
# puts ticket.price # 600

# class Ticket
# attr_accessor :date, :price
# def initialize
# yield self
# end
# end
# ticket = Ticket.new do |t|
# t.price = 600
# t.date = Time.mktime(2019, 5, 11, 10, 20)
# end
# p ticket.price # 600
# p ticket.date # 2019-05-11 10:20:00 +0300


# class String
#   def hello
#     "Hello, #{self}!"
#   end
# end
# p 'Ruby'.hello # Hello, Ruby!


# ________________________________________________

# class Integer
#   SEC_PER_MINUTE = 60
#   SEC_PER_HOUR = 3_600
#   SEC_PER_DAY = 86_400
  
#   def minutes
#     self * SEC_PER_MINUTE
#   end
  
#   def hours
#     self * SEC_PER_HOUR
#   end
  
#   def days
#     self * SEC_PER_DAY
#   end
  
# end

# puts 10.minutes # 600
# puts 5.hours # 18000
# puts 2.days # 172800


# ________________________________________________



































