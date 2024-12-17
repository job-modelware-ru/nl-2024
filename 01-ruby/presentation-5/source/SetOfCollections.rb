# require 'set'
# workday = Set.new
# p workday # #<Set: {}>
# workday << 'monday'
# workday << 'tuesday'
# workday << 'wednesday'
# workday << 'thursday'
# workday << 'friday'
# p workday


# Point = Struct.new(:x, :y)
# fst = Point.new(3, 4)
# p fst #<struct Point x=3, y=4>
# snd = Point.new
# p snd #<struct Point x=nil, y=nil>



# require 'ostruct'
# point = OpenStruct.new x: 3, y: 4
# p point.x # 3
# p point.y # 4
# p point.z # nil
# p point['x'] # 3
# p point['y'] # 4
# p point['z'] # nil
# p point[:x] # 3
# p point[:y] # 4
# p point[:z] # nil



require 'ostruct'
p Struct.new(:x, :y).new(3, 4) #<struct x=3, y=4>
p OpenStruct.new(x: 3, y: 4) #<OpenStruct x=3, y=4>














































