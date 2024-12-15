import Control.Parallel.Strategies (using, rpar, parList)

parallelSum :: [Int] -> Int
parallelSum xs = sum xs `using` parList rpar

main :: IO ()
main = print (parallelSum [1..1000000])