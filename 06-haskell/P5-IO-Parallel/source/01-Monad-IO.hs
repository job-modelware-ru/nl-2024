main :: IO ()
main = do
    putStrLn "Введите ваше имя:"
    name <- getLine
    putStrLn ("Привет, " ++ name ++ "!")