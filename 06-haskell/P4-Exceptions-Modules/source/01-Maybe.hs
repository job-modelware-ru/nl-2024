{- data Maybe a = Nothing | Just a -}

safeDivide :: Double -> Double -> Maybe Double
safeDivide _ 0 = Nothing
safeDivide x y = Just (x / y)

main = do
    putStrLn "Result safeDivide 10 2:"
    print $ safeDivide 10 2   -- Результат: Just 5.0
    putStrLn "Result safeDivide 10 0:"
    print $ safeDivide 10 0   -- Результат: Nothing