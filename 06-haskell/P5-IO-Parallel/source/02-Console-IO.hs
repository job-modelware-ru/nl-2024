main :: IO ()
main = do
    putStrLn "Введите ваше имя:"
    name <- getLine
    putStrLn ("Привет, "  ++ name ++ "!")

    putStrLn "Введите ваш возраст:"
    age <- readLn :: IO Int
    putStr "Ваш возраст: "
    print age

    putStrLn "Нажмите любую клавишу..."
    _ <- getChar
    putStrLn "Завершение..."