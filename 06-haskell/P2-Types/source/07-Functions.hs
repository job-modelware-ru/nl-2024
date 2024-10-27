piValue :: Double
piValue = 3.14159
-- Пример использования
piValue  -- Результат: 3.14159

square :: Int -> Int
square x = x * x
-- Пример использования
square 5  -- Результат: 25

add :: Int -> Int -> Int
add x y = x + y
-- Пример использования
add 3 4  -- Результат: 7
add 5 2  -- Результат: 7

calculate :: Int -> Int -> Int
calculate x y = let z = x * 2
                    in z + y
-- Пример использования
calculate 3 4  -- Результат: 10

calculateWithWhere :: Int -> Int -> Int
calculateWithWhere x y = z + y
    where z = x * 2
-- Пример использования
calculateWithWhere 3 4  -- Результат: 10