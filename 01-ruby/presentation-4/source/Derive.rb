class SingletonDog
    private_class_method :new
  
    def self.instance
      @instance ||= new
    end
end

dog = SingletonDog.instance

class Animal
    def speak
        "Animal sound"
    end
end

class Dog < Animal
    def speak # Public method
        super + ", Woof!"  # "Animal sound, Woof!"
    end

    protected

    def growl
        "Grrr"    # Protected method
    end

    private

    def sleep
        "zzz"     # Private method
    end

    def get_sleep
        sleep       # Ok
        self.sleep  # Error
    end
end

puts Dog.new.speak

parent_class = [Animal, String].sample # choose random
class Dynamic < parent_class
end

puts Dynamic.superclass # String or Animal

puts Dog < Animal           # => true
puts Dog > Animal           # => false
puts Dog >= Animal          # => false
puts Dog <= Animal          # => true
puts Dog == Dog             # => true
puts Dog.ancestors          # => [Dog, Animal, Object, Kernel, BasicObject]
puts Dog.new.is_a?(Animal)  # => true
  