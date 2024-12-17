{-
class (Show e, Typeable e) => Exception e where
    toException   :: e -> SomeException
    fromException :: SomeException -> Maybe e
-}

import Control.Exception

-- Определение пользовательского исключения
data MyException = MyException String
    deriving (Show)

instance Exception MyException

riskyAction :: IO ()
riskyAction = do
    putStrLn "Performing risky action..."
    throwIO (MyException "Something went wrong!")

main :: IO ()
main = do
    result <- try riskyAction -- `try` возвращает Either
    case result of
        Left (ex :: MyException) -> putStrLn $ "Caught exception: " ++ show ex
        Right _ -> putStrLn "Risky action completed successfully."

    putStrLn "This will run regardless of exceptions."

    -- Пример с `catch` и `finally`
    (riskyAction
        `catch` \(ex :: MyException) -> putStrLn $ "Handled exception: " ++ show ex)
        `finally` putStrLn "Cleanup: This always runs."