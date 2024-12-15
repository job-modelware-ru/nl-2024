{- newtype ExceptT e m a = ExceptT { runExceptT :: m (Either e a) } -}

{-
class Monad m => MonadError e m | m -> e where
    throwError :: e -> m a
    catchError :: m a -> (e -> m a) -> m a
-}

import Control.Monad.Except

type App = ExceptT String IO

divide :: Double -> Double -> App Double
divide _ 0 = throwError "Division by zero"
divide x y = return (x / y)

runApp :: App () -> IO ()
runApp app = do
    result <- runExceptT app
    case result of
        Left err  -> putStrLn $ "Error: " ++ err
        Right val -> putStrLn "Success!"

main :: IO ()
main = runApp $ do
    res <- divide 10 2
    lift $ putStrLn $ "Result: " ++ show res