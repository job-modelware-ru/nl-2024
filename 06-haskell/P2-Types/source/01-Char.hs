import Data.Char

exampleChar1 :: Char
exampleChar1 = 'a'

exampleChar2 :: Char
exampleChar1 = 'λ'

-- ord :: Char -> Int
ord 'a' -- Вернёт 97

-- chr :: Int -> Char
chr 97 -- Вернёт 'a'

-- isAlpha :: Char -> Bool
isAlpha 'a' -- Вернёт True
isAlpha '9' -- Вернёт False

-- isDigit :: Char -> Bool
isAlpha 'a' -- Вернёт False
isAlpha '9' -- Вернёт True