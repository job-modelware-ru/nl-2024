# # # ПРЕОБРАЗОВАНИЕ ОБЪЕКТОВ

# # # ------------пример кода №1------------

# # p 3 + '2'.to_i  # 5

# # p 'tv' + 360.to_s  # "tv360"

# # p '36.6'.to_f  # 36.6
# # p 2.to_f  # 2.0

# # array = { fst: :hello, snd: :world }.to_a
# # p array  # [[:fst, :hello], [:snd, :world]]

# # t = Time.mktime(2019, 5, 11, 10, 20)
# # p t  # 2019-05-11 10:20:00 +0000
# # p t.to_a  # [0, 20, 10, 11, 5, 2019, 6, 131, false, "UTC"]

# # p [[:fst, :hello], [:snd, :world]].to_h  # {:fst=>:hello, :snd=>:world}


# # # ------------пример кода №2------------

# # p [1, 2, 3, 4, 5].join  # "12345"
# # p [1, 2, 3, 4, 5].join('-')  # "1-2-3-4-5"
# # p ['Сергей', 'Петрович', 'Иванов'].join(' ')  # "Сергей Петрович Иванов"
# # p [1, 2, [3, 4, 5], ['a', 'b']].join('-')  # "1-2-3-4-5-a-b"

# # p 'Сергей Петрович Иванов'.split  # ["Сергей", "Петрович", "Иванов"]
# # p '1-2-3-4-5'.split('-')  # ["1", "2", "3", "4", "5"]

# # p '1-2-3-4-5'.split('-').map(&:to_i)  # [1, 2, 3, 4, 5]

# # result = '1-2-3-4-5'.split('-') { |x| p x.to_i }
# # p result 

# # p '1-2-3-4-5'.split('-', 1)  # ["1-2-3-4-5"]
# # p '1-2-3-4-5'.split('-', 3)  # ["1", "2", "3-4-5"]

# # p '1--2--3--4-5---'.split('-')   # ["1", "", "2", "", "3", "", "4", "5"]
# # p '1-2-3-4-5---'.split('-')      # ["1", "2", "3", "4", "5"]
# # p '1-2-3-4-5---'.split('-', -1)  # ["1", "2", "3", "4", "5", "", "", ""]


# # # ------------пример кода №3------------

# # def split_date(str)
# #   date, time = str.split
# #   year, month, day = date.split('-', 3).map(&:to_i)
# #   hours, minutes, seconds = time.split(':', 3).map(&:to_i)
# #   {
# #     year: year,
# #     month: month,
# #     day: day,
# #     hours: hours,
# #     minutes: minutes,
# #     seconds: seconds
# #   }
# # end

# # p split_date('2019-10-23 15:20:06')


# # # ------------пример кода №4------------

# # class Ticket
# #   attr_accessor :price
# #   def initialize(price)
# #     @price = price
# #   end
# #   def +(ticket)
# #     price + ticket.price
# #   end
# # end

# # p Ticket.new(500) + Ticket.new(600)  # 1100


# # # ------------пример кода №5------------

# # class Ticket
# #   attr_accessor :price
# #   def initialize(price)
# #     @price = price
# #   end
# #   def +(value)
# #     case value
# #     when Ticket
# #       price + value.price
# #     when Numeric
# #       ticket = self.dup
# #       ticket.price += value
# #       ticket
# #     end
# #   end
# # end

# # p Ticket.new(500) + Ticket.new(600)  # 1100

# # t = Ticket.new(500)
# # p t + 100.0  # #<Ticket:0x00007f2bca7a5830 @price=600.0>
# # p t + 200  # #<Ticket:0x00007fafd28155e0 @price=700>
# # p t  # #<Ticket:0x00007f0fb7d15808 @price=500>


# # # ------------пример кода №6------------

# # class Ticket
# #   attr_accessor :price
# #   def initialize(price)
# #     @price = price
# #   end
# #   def +(value)
# #     case value
# #     when Ticket
# #       price + value.price
# #     when Numeric
# #       add(value)
# #     end
# #   end
# #   def add(value)
# #     ticket = self.dup
# #     ticket.price += value
# #     ticket
# #   end
# #   def add!(value)
# #     @price += value
# #     self
# #   end
# # end

# # p t = Ticket.new(500)  # #<Ticket:0x00007fb704066568 @price=500>
# # p t.add!(10)  # #<Ticket:0x00007fb704066568 @price=510>
# # p t + 200  # #<Ticket:0x00007fb704077cc8 @price=710>
# # p t  # #<Ticket:0x00007fb704077cc8 @price=510>


# # # ------------пример кода №7------------

# puts "Цена билета #{500} рублей" # Цена билета 500 рублей
# puts "Цена билета #{500.to_s} рублей" # Цена билета 500 рублей

# class Ticket
#   attr_accessor :price, :date
#   def initialize(date: Time.mktime(2019, 5, 11, 10, 20), price: 500)
#     @date = date
#     @price = price
#   end
#   def to_s
#     "цена #{price}, дата #{date}"
#   end
# end

# t = Ticket.new()
# puts "Билет: #{t}" # Билет: цена 500, дата 2019-05-11 10:20:00 +0000


# # ------------пример кода №8------------

# class Ticket
#   attr_accessor :price, :date
#   def initialize(date:, price: 500)
#     @date = date
#     @price = price
#   end
#   def to_s
#     "цена #{price}, дата #{date}"
#   end
#   alias to_str to_s
# end

# ticket = Ticket.new date: Time.mktime(2019, 5, 11, 10, 20)
# puts 'Билет: ' + ticket


# # ------------пример кода №9------------

class Ticket
  attr_accessor :price, :date
  def initialize(date:, price: 500)
    @date = date
    @price = price
  end
  def to_s
    "цена #{price}, дата #{date}"
  end
  alias to_str to_s
  def to_a
    [price, date]
  end
end

ticket = Ticket.new date: Time.mktime(2019, 5, 11, 10, 20)
p ticket.to_a  # [500, 2019-05-11 10:20:00 +0300]
p Array(ticket)  # [500, 2019-05-11 10:20:00 +0300]

# p [3, 5] + ticket - ошибка!
p [3, 5] + ticket.to_a  # [3, 5, 500, 2019-05-11 10:20:00 +0300]


# ------------пример кода №10------------

class Ticket
  attr_accessor :price, :date
  def initialize(date:, price: 500)
    @date = date
    @price = price
  end
  def to_s
    "цена #{price}, дата #{date}"
  end
  def to_a
    [price, date]
  end
  alias to_str to_s
  alias to_ary to_a
end

ticket = Ticket.new date: Time.mktime(2019, 5, 11, 10, 20)
p [3, 5] + ticket # [3, 5, 500, 2019-05-11 10:20:00 +0300]
