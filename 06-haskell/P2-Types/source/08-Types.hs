-- Синтаксис
newtype TypeName = ConstructorName ExistingType
-- Пример
newtype UserId = UserId Int

-- Синтаксис
data TypeName = Constructor1 Type1 Type2 | Constructor2 Type3
-- Пример
data Shape = Circle Float | Rectangle Float Float
area :: Shape -> Float
area (Circle r) = pi * r^2
area (Rectangle w h) = w * h

-- Синтаксис
data TypeName = ConstructorName Type1 Type2 deriving (TypeClass1, TypeClass2)
-- Пример
data Color = Red | Green | Blue deriving (Show, Eq)
show Red   -- "Red"
Green == Blue   -- False