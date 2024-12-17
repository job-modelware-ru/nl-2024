import Control.Concurrent

main :: IO ()
main = do
    -- Создаём пустую MVar
    mvar <- newEmptyMVar

    -- Создаём поток, который будет записывать данные в MVar
    forkIO $ do
        putStrLn "forkIO: Записываем данные в MVar..."
        threadDelay 1000000 -- Задержка 1 секунда
        putMVar mvar "Привет из forkIO!" -- Записываем строку в MVar
        putStrLn "forkIO: Данные записаны."

    -- Главный поток извлекает данные из MVar
    putStrLn "main: Ждём данные из MVar..."
    message <- takeMVar mvar
    putStrLn $ "main: Полученное сообщение: " ++ message