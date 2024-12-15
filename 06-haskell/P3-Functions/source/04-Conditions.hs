{- Синтаксис:
if условие
then результат1
else результат2
-}
-- Пример
absolute :: Int -> Int
absolute x = if x < 0
             then -x
             else x

{- Синтаксис:
case выражение of
  шаблон1 -> результат1
  шаблон2 -> результат2
  ...
  _       -> результат по умолчанию
-}
-- Пример
describeList :: [a] -> String
describeList lst = case lst of
  []      -> "Пустой список"
  [x]     -> "Список с одним элементом"
  (x:xs)  -> "Список с более чем одним элементом"

{- Синтаксис:
имяФункции аргументы
  | условие1 = результат1
  | условие2 = результат2
  | otherwise = результат по умолчанию
-}
bmiCategory :: Double -> String
bmiCategory bmi
  | bmi < 18.5 = "Недостаточный вес"
  | bmi < 25.0 = "Нормальный вес"
  | bmi < 30.0 = "Избыточный вес"
  | otherwise  = "Ожирение"