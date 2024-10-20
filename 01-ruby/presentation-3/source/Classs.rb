#________________________________________________
# 25 slide (class)
#________________________________________________

class Car
  def initialize(cylinders:)
    puts 'Создание Car'
    build(cylinders: cylinders)
  end
  def title
    'BMW X7'
  end
  def description
    'Новый BMW X7 с окраской кузова...'
  end
  def engine
    @engine
  end
  def build(cylinders:)
    @engine = Engine.new(cylinders: cylinders)
  end
  class Engine
    def initialize(cylinders:)
        puts 'Создание Engine'
        @cylinders = cylinders
    end
    def cylinders
      @cylinders
    end
    def volume
      3
    end
    def power
      250
    end
  end
end

car = Car.new(cylinders: 10)
puts car.engine.cylinders

puts car.title 
puts car.description
puts car.engine.cylinders 
puts car.engine.volume 
puts car.engine.power
