# ---МОДУЛИ---
# ------------------------------------------------
# module Site
#   VERSION = '1.1.0'
  
#   def greeting(str)
#     "Hello, #{str}!"
#   end

#   class Settings
#   end
# end



# ------------------------------------------------
# class Site
#   VERSION = '1.1.0'
  
#   def greeting(str)
#     "Hello, #{str}!"
#   end
  
#   class Settings
#   end
# end



# ------------------------------------------------
# module Site
#   VERSION = '1.1.0'
  
#   def greeting(str)
#     "Hello, #{str}!"
#   end

#   class Settings
#   end
# end

# puts Site::VERSION 

# obj = Site::Settings.new
# p obj.object_id



# ------------------------------------------------
# module MyNamespace
#   class Array
#     def to_s
#       'my class'
#     end
#   end
# end

# p Array.new # []
# p MyNamespace::Array.new # #<MyNamespace::Array:0x00007fe7ea9d1c08>
# puts Array.new # nil
# puts MyNamespace::Array.new # my class



# ------------------------------------------------
# class BattleField
#   attr_accessor :size, :fields
#   def initialize(size: BattleField::Chess::SIZE)
#     @size = size
#     @fields = yield(size) if block_given?
#     @fields ||= Array.new(size) do |y|
#                   Array.new(size) do |x|
#                     Field.new(x: Chess::X[x], y: y + 1)
#                   end
#                 end
#   end
  
#   def to_s
#     lines.join("\n")
#   end
  
#   private
  
#   def lines
#     @fields.map do |line|
#       line.map(&:to_s).join ' '
#     end
#   end
  
#   class Field
#     attr_accessor :x, :y
#     def initialize(x:, y:)
#       @x = x
#       @y = y
#     end
#     def to_s
#     "#{x}:#{y}"
#     end
#   end
  
#   module Chess
#     SIZE = 8
#     X = %w[A B C D E F G H]
#     GAMERS = [:white, :black]
#   end
  
#   # module Ship
#   #   SIZE = 10
#   #   X = %w[А Б В Г Д Е Ж З И К]
#   # end
# end

# # module BattleField::Ship
# #   SIZE = 10
# #   X = %w[А Б В Г Д Е Ж З И К]
# # end

# # class BattleField::Field
# #   def to_s
# #     format("%4s", "#{x}:#{y}")
# #   end
# # end


# chess_fields = BattleField.new()
# puts chess_fields

# puts

# # ship_fields = BattleField.new(size: BattleField::Ship::SIZE) do |size|
# #           Array.new(size) do |y|
# #             Array.new(size) do |x|
# #               BattleField::Field.new(x: BattleField::Ship::X[x], y: y + 1)
# #             end
# #           end
# #         end
# # puts ship_fields



# ------------------------------------------------
# class Hello
#   attr_accessor :list
#   def initialize
#     @list = Array.new
#   end
#   class Array
#   end
# end

# hello = Hello.new
# hello.list << 'ruby' # undefined method `<<'



# ------------------------------------------------
# class Hello
#   attr_accessor :list
#   def initialize
#     @list = ::Array.new
#   end
#   class Array
#   end
# end

# hello = Hello.new
# hello.list << 'ruby'
# p hello.list # ["ruby"]



# ------------------------------------------------
# class Pallete
#   def initialize(colors)
#     @param = Array.new
#     colors.each do |color|
#       @param.set(color)
#     end
#   end
  
#   def report
#     @param.each do |color|
#       puts color
#     end
#   end
  
#   class Array
#     def initialize
#       @arr = ::Array.new # 1ый вариант
#       # @arr = [] - # 2ой вариант
#     end
#     def set(value)
#       @arr << value
#     end
#     def each
#       @arr.each do |element|
#         yield element
#       end
#     end
#   end
# end

# colors = %i[red orange yellow green blue indigo violet]
# pallete = Pallete.new(colors)
# pallete.report



# ------------------------------------------------
# module Seo
#   attr_accessor :meta_title, :meta_description, :meta_keywords
# end

# class Page
#   attr_accessor :title, :body
# end

# class News < Page
#   include Seo
#   attr_accessor :date
# end

# class About < Page
#   include Seo
#   attr_accessor :phones, :address
# end

# class PhotoCatalog < Page
#   attr_accessor :photos
# end


# # about = About.new
# # about.title = 'О нас'
# # about.body = 'Вы сможете обнаружить нас по адресам'
# # about.phones = ['+7 920 4567722', '+7 920 4567733']
# # about.address = '191036, Санкт-Петербург, ул. Гончарная, дом 20, пом. 7Н'
# # about.meta_title = about.title
# # about.meta_description = "Адрес: #{about.address}"
# # about.meta_keywords = ['О нас', 'Адреса', 'Телефоны']
# # p about.title
# # p about.body
# # p about.phones.join ', '
# # p about.address
# # p about.meta_title
# # p about.meta_description
# # p about.meta_keywords.join ', '


# photos = PhotoCatalog.new
# p photos.respond_to? :title # true
# p photos.respond_to? :body # true
# p photos.respond_to? :meta_title # false
# p photos.respond_to? :meta_description # false
# p photos.respond_to? :meta_keywords # false



# ------------------------------------------------
# module Hello
#   def say(name)
#     "Hello, #{name}!"
#   end
# end

# ticket = Object.new
# ticket.extend Hello
# puts ticket.say('Ruby') # Hello, Ruby!



# ------------------------------------------------
# p self  # main
# p self.class  # Object

# module Hello
#   def say(name)
#     "Hello, #{name}!"
#   end
# end

# extend Hello
# puts say('Ruby') # Hello, Ruby!



# ------------------------------------------------
# module Hello
#   def say(name)
#     "Hello, #{name}!"
#   end
# end

# class Greet
#   extend Hello
# end
  
# puts Greet.say('Ruby') # Hello, Ruby!



# ------------------------------------------------
# module Hello
#   def self.say(name)
#     "Hello, #{name}!"
#   end
# end

# puts Hello.say('Ruby') # Hello, Ruby!

# # module Hello
# #   class << self
# #     def say(name)
# #       "Hello, #{name}!"
# #     end
# #   end
# # end

# ------------------------------------------------
# module Hello
#   extend self
#   def say(name)
#     "Hello, #{name}!"
#   end
# end

# puts Hello.say 'Ruby' # Hello, Ruby!



# ------------------------------------------------
# module Hello
#   def say(name)
#     "Hello, #{name}!"
#   end
  
#   module_function :say
# end

# puts Hello.say('Ruby') # Hello, Ruby!



# ------------------------------------------------
# module Hello
#   def say(name)
#     "Hello, #{name}!"
#   end
#   module_function :say
# end

# class Greet
#   include Hello
#   def hello_world
#     say('world')
#   end
# end

# g = Greet.new
# puts g.hello_world # Hello, world!
# puts g.say('Ruby') # private method `say' called



# ------------------------------------------------
# module Scope
#   public
#   def say(name)
#     "Scope#say: Hello, #{name}!"
#   end

#   protected
#   def greeting
#     "Scope#greeting: Hello, world!"
#   end
  
#   private
#   def hello
#     "Scope#hello: Hello, world!"
#   end
# end

# class HelloWorld
#   extend Scope
# end

# puts HelloWorld.say('Ruby') # Scope#say: Hello, Ruby!
# puts HelloWorld.greeting # protected method `greeting' called for
# puts HelloWorld.hello # private method `hello' called for

# # class HelloWorld
# #   include Scope
# # end

# # h = HelloWorld.new
# # puts h.say('Ruby') # Scope#say: Hello, Ruby!
# # puts h.greeting # protected method `greeting' called for
# # puts h.hello # private method `hello' called for


# ------------------------------------------------
# module Scope
#   class << self
#     def say(name)
#       "Scope::say: Hello, #{name}!"
#     end
#     def get_greeting
#       self.greeting
#     end
#     def get_hello
#       hello
#     end
#     protected
#     def greeting
#     "Scope::greeting: Hello, world!"
#     end
#     private
#     def hello
#     "Scope::hello: Hello, world!"
#     end
#   end
# end

# puts Scope.say('Ruby') # Scope::say: Hello, Ruby!
# puts Scope.get_greeting # Scope::greeting: Hello, world!
# puts Scope.get_hello # Scope::hello: Hello, world!
# puts Scope.greeting # protected method `greeting' called for Scope:Module
# puts Scope.hello # private method `hello' called for Scope:Module
