tuple2 :: (Int, Char)
tuple2 = (1, 'a')
tuple9 :: (Int, Char, String, Bool, Double, Int, Char, Float, String)
tuple9 = (1, 'b', "hello", True, 3.14, 42, 'x', 2.71, "world")

fst (42, "answer")  -- Результат: 42
snd (42, "answer")  -- Результат: "answer"