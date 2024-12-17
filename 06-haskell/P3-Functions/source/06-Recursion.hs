-- Прямая рекурсия
sumList :: [Int] -> Int
sumList [] = 0                    -- Базовый случай: если список пуст, то сумма равна 0
sumList (x:xs) = x + sumList xs   -- Рекурсивный случай: складываем первый элемент и сумму оставшихся элементов

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Хвостовая рекурсия
factorialTail :: Integer -> Integer
factorialTail n = go n 1
  where
    go 0 acc = acc -- Базовый случай: возвращаем накопленное значение
    go n acc = go (n - 1) (n * acc)  -- Рекурсивный случай с хвостовой рекурсией

-- Косвенная рекурсия
isEven :: Integer -> Bool
isEven 0 = True
isEven n = isOdd (n - 1)

isOdd :: Integer -> Bool
isOdd 0 = False
isOdd n = isEven (n - 1)