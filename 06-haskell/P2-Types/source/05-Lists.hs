type String = [Char]
"hello" == ['h', 'e', 'l', 'l', 'o']  -- True

list :: [a]  -- Параметрический тип списка
list = [1, 2, 3]  -- Здесь a = Int

"Hello" ++ " World"  -- "Hello World"        
[1, 2] ++ [3, 4]     -- [1, 2, 3, 4]

'h' : "ello"    -- "hello"
1 : [2, 3, 4]   -- [1, 2, 3, 4]

reverse "hello"  -- "olleh"
reverse [1, 2, 3]  -- [3, 2, 1]

null []       -- True
null "hello"  -- False

head [1, 2, 3]   -- 1
head "hello"     -- 'h'

tail [1, 2, 3]   -- [2, 3]
tail "hello"     -- "ello"

or [False, True, False]  -- True
and [True, True, False]  -- False