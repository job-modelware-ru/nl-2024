--[[s, e = string.find("hello Lua users", "Lua") 
print(s, e)]]

--[[function	maximum	(a)
    local	mi	=	1												
    local	m	=	a[mi]									
    for	i	=	1,	#a	do
        if	a[i]	>	m	then
            mi	=	i;	m	=	a[i]
        end
    end
    return	m,	mi
end
print(maximum({8,10,23,12,5}))]]

--[[function foo0() end
function foo1() return "a" end
function foo2() return "a", "b" end]]

--[[x, y = foo2()
print(x, y)
x = foo2()
print(x)
x, y, z = 10, foo2()
print(x, y, z)]]

--[[x, y = foo0()
print(x, y)
x, y = foo1()
print(x, y)
x, y, z = foo2()
print(x, y, z)]]

--[[x, y = foo2(), 20
print(x, y)
x, y = foo0(), 20, 30
print(x, y)
print(foo2())]]

--[[function add (...)
    local	s	=	0
    for	i, v in ipairs{...}	do
        s = s + v
    end
    return s
end
print(add(3, 4, 10, 25, 12))]]


--[[function foo3() return 1, 2, 3 end
local _, _, c = foo3()
print(_, c)]]



--	недопустимый	код
--rename(old="temp.lua", new="temp1.lua")

--rename{old="temp.lua", new="temp1.lua"} специальный синтаксис

--[[function rename (arg)
    return os.rename(arg.old, arg.new)
end]]


--[[function newCounter()
    local i	= 0
    return function() --анонимная функция
        i = i + 1
        return i
    end
end
c1 = newCounter()
print(c1(), c1()) 

c2 = newCounter()
print(c2(), c1(),c2())]]

Lib = {}
Lib.foo = function (x, y) return x + y end
Lib.goo = function (x, y) return x - y end
--[[ 
ИЛИ конструктор
Lib = {
    Lib.foo = function (x, y) return x + y end,
    Lib.goo = function (x, y) return x - y end
}
ИЛИ специальный синтаксис
Lib = {}
function Lib.foo (x, y) return x + y end
function Lib.goo (x, y) return x - y end
]]
print(Lib.foo(2, 3), Lib.goo(2, 3))

