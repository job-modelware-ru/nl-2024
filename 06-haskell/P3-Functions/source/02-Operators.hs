(***) :: Int -> Int -> Int
x *** y = x ^ y
infixr 5 ***

divide :: Int -> Int -> Int
divide x y = x `div` y

-- Сечение операторов
increment :: Int -> Int
increment = (+1)      -- Функция, которая увеличивает значение на 1
decrement :: Int -> Int
decrement = (+(-1))      -- Функция, которая вычитает аргумент из 1
half :: Double -> Double
half = (/2)           -- Делит аргумент на 2
reciprocal :: Double -> Double
reciprocal = (2/)     -- Делит 2 на аргумент
isPositive :: Integer -> Bool
isPositive = (>0)     -- Проверка, что значение больше 0
isNegative :: Integer -> Bool
isNegative = (<0)     -- Проверка, что значение меньше 0
addPrefix :: String -> String
addPrefix = ("Hello, " ++)

{-
($) :: (a -> b) -> a -> b
f $ x = f x

infixr 0 $
-}

main = do
    putStrLn "Result 2 *** 3:"
    print $ 2 *** 3       -- Результат 8
    putStrLn "Result 10 `divide` 2:"
    print $ 10 `divide` 2 -- Результат 5
    putStrLn "Result (+) 2 3:"
    print $ (+) 2 3       -- Результат 5
    putStrLn "Result map ((+) 10) [1, 2, 3]:"
    print $ map ((+) 10) [1, 2, 3]           -- Результат [11, 12, 13]
    putStrLn "Result filter isPositive [1, -2, 3, -4]:"
    print $ filter isPositive [1, -2, 3, -4] -- Результат: [1, 3]
    putStrLn "Result addPrefix \"world!\":"
    print $ addPrefix "world!"      -- Результат: "Hello, world!"
    putStrLn "Result sqrt (1 + 2 * 3):"
    print $ sqrt (1 + 2 * 3)        -- Результат: 2.6457513110645907
    putStrLn "Result sqrt $ 1 + 2 * 3:"
    print $ sqrt $ 1 + 2 * 3        -- Результат: 2.6457513110645907
    putStrLn "Result map ($ 2) [(+3), (*5), (^2)]:"
    print $ map ($ 2) [(+3), (*5), (^2)] -- Результат: [5,10,4]
    putStrLn "Result sum $ map (^2) $ filter even [1..10]:"
    print $ sum $ map (^2) $ filter even [1..10] -- Результат 220