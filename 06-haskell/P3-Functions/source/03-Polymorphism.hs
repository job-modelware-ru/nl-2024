-- Параметрический полиморфизм

identity :: a -> a
identity x = x

{- map :: (a -> b) -> [a] -> [b] -}

-- Ограниченный (ад-хок) полиморфизм
sum' :: Num a => [a] -> a
sum' []     = 0
sum' (x:xs) = x + sum' xs

{- maximum :: Ord a => [a] -> a -}

-- Полиморфизм более высокого рода
{- fmap :: Functor f => (a -> b) -> f a -> f b -}