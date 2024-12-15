{- data Either a b = Left a | Right b -}

safeDivide :: Double -> Double -> Either String Double
safeDivide _ 0 = Left "Division by zero!"
safeDivide x y = Right (x / y)

main = do
    putStrLn "Result safeDivide 10 2:"
    print $ safeDivide 10 2   -- Результат: Right 5.0
    putStrLn "Result safeDivide 10 0:"
    print $ safeDivide 10 0   -- Результат: Left 'Division by zero!'