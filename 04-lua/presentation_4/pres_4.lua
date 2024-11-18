--[[local x = 3
local a, b = 10, 2 * x
print(a, b)
a, b = b, a
print(a, b)]]

--[[local a, b, c = 0, 1
print(a, b, c)
a, b = a + 1, b + 1, b + 2 --значение	b+2	игнорируется
print(a, b)]]

--[[local a, b = -1, 5

if a < 0 then a	= 0	end
print(a)

if a > b then print(a) else print(b) end]]

--[[local a, b = 3, 5
local op = io.read()
if op == "+" then
    r =	a +	b
elseif op == "-" then
    r =	a -	b
elseif op == "*" then
    r =	a * b
elseif op == "/" then
    r =	a / b
else
    error("invalid	operation")
end
print(r)]]

--[[a = {3, 5, 8, -6, 5} 
i = #a
while i > 0 do -- ищем в массиве отрицательное значение
   if a[i] < 0 then break end -- если найдено, прерываем цикл
   i = i - 1 -- иначе переходим к следующему элементу
end
if i > 0 then
   print("Индекс отрицательного значения: "..i)
else
   print("Массив не содержит отрицательных значений")
end]]

--[[ суммируем значения массива a, пока сумма не превысит 10
a = {3, 2, 5, 7, 9}
i = 0; sum = 0
repeat 
   i = i + 1
   sum = sum + a[i]
until sum > 10
print("Сложено "..i.." элемента. Сумма равна "..sum)]]

--[[a = {3, 5, 8, -6, 5}
for i = 1,#a do -- ищем в массиве отрицательное значение
   if a[i] < 0 then -- если найдено...
      index = i -- сохраняем индекс найденного значения...
      break -- и прерываем цикл
   end
end
print("Индекс отрицательного значения: "..index)]]

--[[Days = {["Sunday"] = 1,	["Monday"] = 2, ["Tuesday"] = 3, ["Wednesday"] = 4,
["Thursday"] = 5, ["Friday"] = 6, ["Saturday"] = 7}

for key, val in pairs(Days) do
    print("key == "..key.."; val == "..val)
 end]]


goto room1	-- начальная комната
::room1::	do
    local move = io.read()
    if	move == "south"	then goto room3
    elseif	move == "east" then goto	room2
    else
        print("invalid	move")
        goto room1	--	остаемся в этой	же комнате
    end
end

::room2::	do
    local move = io.read()
    if move	== "south" then	goto room4
    elseif move	== "west" then goto	room1
    else
        print("invalid	move")
        goto room2
    end
end

::room3:: do
    local move = io.read()
    if move	== "north" then	goto room1
    elseif move	== "east" then goto	room4
    else
        print("invalid	move")
        goto	room3
    end
end

::room4:: do
    print("Congratulations,	you	won!")
end


