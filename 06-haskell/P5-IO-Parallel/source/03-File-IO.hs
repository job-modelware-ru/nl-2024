main :: IO ()
main = do
    writeFile "example.txt" "Привет, Haskell!\n"
    appendFile "example.txt" "Это добавленная строчка.\n"

    content <- readFile "example.txt"

    putStrLn "Содержимое файла:"
    putStrLn content