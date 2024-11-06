import Data.Ratio
import Data.Complex

fromInteger 5 :: Float    -- Результат: 5.0
fromInteger 7 :: Complex Double  -- Результат: (7.0 :+ 0.0)

toInteger (3.14 :: Float)   -- Результат: 3
toInteger (5 % 2)           -- Результат: 2

fromRational (3 % 4) :: Float    -- Результат: 0.75
fromRational (2 % 5) :: Complex Double  -- Результат: (0.4 :+ 0.0)

toRational (0.75 :: Float)  -- Результат: 3 % 4
toRational (1.2 :: Double)  -- Результат: 5404319552844595 % 4503599627370496