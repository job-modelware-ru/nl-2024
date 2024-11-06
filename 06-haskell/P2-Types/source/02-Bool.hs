-- (||) :: Bool -> Bool -> Bool
False || True -- -> True

-- (&&) :: Bool -> Bool -> Bool
False && True -- -> False

-- not :: Bool -> Bool
not False -- -> True

if True then '1' else '0'

-- ERROR
-- if False then True else '0'

-- (==) :: Eq a => a -> a -> Bool
'a' == 'b' -- -> False

-- (/=) :: Eq a => a -> a -> Bool
'a' /= 'b' -- -> True

-- (>) :: Ord a => a -> a -> Bool
'a' > 'b' -- -> False

-- (<) :: Ord a => a -> a -> Bool
'a' < 'b' -- -> True

-- (>=) :: Ord a => a -> a -> Bool
'a' >= 'b' -- -> False

-- (<=) :: Ord a => a -> a -> Bool
'a' <= 'b' -- -> True