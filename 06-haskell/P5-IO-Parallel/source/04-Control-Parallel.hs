import Control.Parallel (par, pseq)

parallelExample :: Integer -> Integer -> Integer
parallelExample x y =
    let a = expensiveComputation x
        b = expensiveComputation y
    in a `par` b `pseq` a `pseq` a + b

expensiveComputation :: Integer -> Integer
expensiveComputation n = sum [1..n]

main :: IO ()
main = print (parallelExample 1000000 1000000)