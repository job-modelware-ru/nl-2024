# first = {}
# second = { 'first' => 1, 'second' => 2 }
# p first # {}
# p second # {"first"=>1, "second"=>2


# first = { first: 1, second: 2 }
# second = { first: :fst, second: :snd }


# p Hash[:first, 1, :second, 2] # {:first=>1, :second=>2}
# arr = [[:first, 1], [:second, 2]]
# p Hash[arr] # {:first=>1, :second=>2}
# p Hash[first: 1, second: 2] # {:first=>1, :second=>2}



# arr = [[:first, 1], [:second, 2]]
# p arr.to_h # {:first=>1, :second=>2}



# h = {}
# h['hello'] = 'world'
# h[:hello] = 'ruby'
# p h # {"hello"=>"world", :hello=>"ruby"}

# h = {}
# h[:hello] = 'hello'
# p h # {:hello=>"hello"}
# h[:hello] = 'ruby'
# p h # {:hello=>"ruby"}


# h = { first: 1, second: 2 }
# p h[:first] # 1
# p h[:first] + h[:second] # 3
# p h[:third] # nil

# h = { first: 1, second: 2 }
# puts h.fetch(:first) # 1
# # puts h.fetch(:third) # `fetch': key not found: :third (KeyError)

# h = { first: 1, second: 2 }
# puts h.fetch(:first) { |x| "Ключ #{x} не существует" }
# puts h.fetch(:third) { |x| "Ключ #{x} не существует" }


# settings = {
#   title: 'Новости',
#   paginate: {
#     per_page: 30,
#     max_page: 10
#   }
# }
# p settings[:paginate][:per_page] # 30
# p settings[:paginate][:max_page] # 10
# p settings[:paginate][:total] # nil
# p settings[:seo][:keywords] # undefined method `[]' for nil:NilClass


# settings = {
#   title: 'Новости',
#   paginate: {
#     per_page: 30,
#     max_page: 10
#   }
# }
# p settings.dig(:paginate, :per_page) # 30
# p settings.dig(:paginate, :total) # nil
# p settings.dig(:seo, :keywords) # nil



# h = { first: 1, second: 2, 'hello' => 1 }
# p h.key(1) # :first
# p h.key(2) # :second
# p h.key(3) # nil




# h = Hash.new(Object.new)
# p h[:hello] #<Object:0x007fcbeb0eacb8>
# p h[:world] #<Object:0x007fcbeb0eacb8>
# p h[:params] #<Object:0x007fcbeb0eacb8>

# h = Hash.new({})
# h[:params][:per_page] = 30
# p h[:params] # {:per_page=>30}
# p h[:settings] # {:per_page=>30}
# p h # {}


par = Hash.new { |h, k| h[k] = {} }
p par[:params] # {}
p par # {:params=>{}}
par[:params][:per_page] = 30
par[:params][:max_page] = 10
par[:hello][:name] = 'Ruby'
p par # {:params=>{:per_page=>30, :max_page=>10}, :hello=>{:name=>"Ruby"}}


par = {}
par.default_proc = ->(h, k) { h[k] = {} }
par[:params][:per_page] = 30
par[:params][:max_page] = 10
par[:hello][:name] = 'Ruby'
p par # {:params=>{:per_page=>30, :max_page=>10}, :hello=>{:name=>"Ruby"}}












































