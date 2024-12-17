{-
type Monad :: (* -> *) -> Constraint
class Applicative m => Monad m where
    (>>=) :: m a -> (a -> m b) -> m b
    (>>) :: m a -> m b -> m b
    return :: a -> m a
    {- # MINIMAL (>>=) # -}

-- 1. Закон левостороней единицы
return a >>= f  ==  f a
-- 2. Закон правостороней единицы
m >>= return  ==  m
-- 3. Закон ассоциативности
(m >>= k) >>= h  ==  m >>= (\x -> k x >>= h)
-}

{-
instance Monad Maybe where
    return = Just
    Nothing >>= _ = Nothing
    (Just x) >>= f = f x
-}

{-
instance Monad (Either e) where
    return = Right
    (Left e) >>= _ = Left e
    (Right x) >>= f = f x
-}

exampleMaybe :: Maybe Int
exampleMaybe = do
    x <- Just 10    -- Получить значение из Just
    y <- Just 20    -- Получить значение из Just
    return (x + y)  -- Вернуть результат

-- Эквивалентное выражение без do:
exampleMaybe' :: Maybe Int
exampleMaybe' =
    Just 10 >>=
      (\x -> Just 20 >>=
        (\y -> return (x + y)))

main = do
    putStrLn "Result exampleMaybe:"
    print $ exampleMaybe   -- Результат: Just 30
    putStrLn "Result exampleMaybe':"
    print $ exampleMaybe'  -- Результат: Just 30