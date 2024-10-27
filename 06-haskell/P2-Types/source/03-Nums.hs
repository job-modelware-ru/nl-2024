import Data.Word
import Data.Ratio
import Data.Complex

intValue :: Int
intValue = 42
intNegative :: Int
intNegative = -100
-- Ошибка: переполнение
-- intValue = 2^31

wordValue :: Word
wordValue = 255
-- Ошибка: отрицательное значение
-- wordValue = -1

bigNumber :: Integer
bigNumber = 123456789012345678901234567890
anotherBigNumber :: Integer
anotherBigNumber = 2 ^ 100

floatValue :: Float
floatValue = 3.14
floatCalculation :: Float
floatCalculation = 1.0 / 3.0  -- 0.33333334

doubleValue :: Double
doubleValue = 3.141592653589793
doubleCalculation :: Double
doubleCalculation = 1.0 / 3.0  -- 0.3333333333333333

ratioValue :: Ratio Int
ratioValue = 3 % 4 -- 3/4

complexValue :: Complex Double
complexValue = 3 :+ 4 -- 3.0 + 4.0i