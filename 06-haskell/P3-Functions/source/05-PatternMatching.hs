-- Простые типы
describeNumber :: Int -> String
describeNumber 0 = "Ноль"
describeNumber 1 = "Один"
describeNumber _ = "Другое число"

-- Списки и строки
describeList :: [Int] -> String
describeList []     = "Пустой список"
describeList [x]    = "Список с одном элементом: " ++ show x
describeList [x,y]  = "Список с двумя элементами: " ++ show x ++ " и " ++ show y
describeList (x:xs) = "Список со множеством элементов, начиная с " ++ show x

describeString :: String -> String
describeString "" = "Пустая строка"
describeString [x] = "Одиночный символ: " ++ [x]
describeString (x:xs) = "Первый символ длинной строки: " ++ [x]

-- Кортежи
addVectors :: (Int, Int) -> (Int, Int) -> (Int, Int)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

describeTriple :: (Int, Int, Int) -> String
describeTriple (0, 0, 0) = "Все нули!"
describeTriple (x, 0, 0) = "Первое число не ноль"
describeTriple (0, y, 0) = "Второе число не ноль"
describeTriple (0, 0, z) = "Третье число не ноль"
describeTriple _         = "Смешанные значения"

-- Сложные типы
-- data Maybe a = Just a | Nothing
describeMaybe :: Maybe Int -> String
describeMaybe Nothing = "Нет значения"
describeMaybe (Just x) = "Значение: " ++ show x

data Shape = Circle Float | Rectangle Float Float
area :: Shape -> Float
area (Circle r) = pi * r ^ 2
area (Rectangle w h) = w * h