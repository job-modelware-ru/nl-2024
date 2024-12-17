import System.IO

main :: IO ()
main = do
    handle <- openFile "example.txt" WriteMode
    hPutStr handle "Привет, Haskell!\n"
    hPutStr handle "Это работа через дескриптор.\n"
    hClose handle