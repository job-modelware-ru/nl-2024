-- add :: Int -> (Int -> Int)
add :: Int -> Int -> Int
add x y = x + y

addFive :: Int -> Int
addFive = add 5

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

main = do
    putStrLn "Result addFive 10:"
    print $ addFive 10           -- Результат: 15
    putStrLn "Result applyTwice addFive 2:"
    print $ applyTwice addFive 2 -- Результат: 12
    putStrLn "Result (\\x -> x + 1) 99:"
    print $ (\x -> x + 1) 99     -- Результат: 100
    putStrLn "Result (\\x y -> x + y) 3 5:"
    print $ (\x y -> x + y) 3 5  -- Результат: 8