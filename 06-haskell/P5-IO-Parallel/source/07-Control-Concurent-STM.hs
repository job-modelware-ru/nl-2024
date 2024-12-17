import Control.Concurrent.STM

main :: IO ()
main = do
    counter <- atomically $ newTVar 0
    atomically $ do
        value <- readTVar counter
        writeTVar counter (value + 1)
    finalValue <- atomically $ readTVar counter
    putStrLn $ "Значение счётчика: " ++ show finalValue