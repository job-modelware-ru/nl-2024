--[[local x = 4 
print(x ^ 0.5) 
print(x ^ (-1/3)) 
print(4 ^ 2)]] 
 
--print(5 % 2) 
--print(5 % -2) 
 
--[[local x = math.pi 
print(x % 1) 
print(x - x % 1) 
print(x - x % 0.01)]] 
 
--[[a = {}; a.x = 1; a.y = 0 
b = {}; b.x = 1; b.y = 0 
c = a 
print(a == b) 
print(a == c)]] 
 
--[[print(2 < 3) 
print ("abc" > "abd")]] 
 
--[[print("0" == 0) 
print(2 < 15) 
print("2" < "15") 
print(2 < "15")]] 
 
--[[print(4 and 5) 
print(nil and 13) 
print(false and 13) 
print(4 or 5) 
print(false or 5)]] 
 
--[[local x = 7 
local y = 4 
max = (x > y) and x or y 
print(max)]] 
 
--[[print(not nil) 
print(not false) 
print(not 0) 
print(not not 1) 
print(not not nil)]] 
 
--[[print("Hello, " .. "World!") 
print(0 .. 1) 
print(type(0 .. 1)) 
local a = "Hello, " 
print(a .. "World!") 
print(a)]] 
 
--[[local a = {} 
a[1] = 1 
a[2] = 1 
a[10000] = 2 
print(#a) 
 
local b = {} 
b[1] = 1 
b[2] = nil 
b[3] = 1 
b[4] = 1 
print(#b)]] 
 
--[[local a = "abcdef" 
print(#a) 
print(#{'a', 'b', 'c', 88}) 
print(#{["a"] = 1, ["b"] = 2})                 --! 
print(#{[1] = 1, [2] = 2, [3] = "abs"})         
print(#{[1] = 1, [2] = nil, [3] = 1, [4] = 1}) --! 
print(#{[1] = 1, [2] = 2, [3] = "abs", [4] = nil, [5] = nil})]] 
 
--[[days = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"} 
print(days[1])]] 
 
--[[polyline = { 
    color = "blue", 
    thickness = 2, 
    npoints = 4, 
    {x = 0, y = 0}, -- polyline[1] 
    {x = -10, y = 0}, -- polyline[2] 
    {x = -10, y = 1}, -- polyline[3] 
    {x = 0, y = 1}, -- polyline[4] 
} 
print(polyline.color) 
print(polyline[2].x)]] 
 
opnames = {["+"] = "add", ["-"] = "sub", 
           ["*"] = "mul", ["/"] = "div"} 
 
local i = 20 
local s = "-" 
a = {[i+0] = s, [i+1] = s..s, [i+2] = s..s..s} 
 
print(opnames[s]) 
print(a[22])
