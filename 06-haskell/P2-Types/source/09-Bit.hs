data Bit = Zero | One

instance Eq Bit where
  (==) :: Bit -> Bit -> Bool
  (==) Zero Zero = True
  (==) One  One  = True
  (==) _    _    = False

Zero == One -- False
Zero /= One -- True

{-
type Eq :: * -> Constraint
class Eq a where
    (==) :: a -> a -> Bool
    (/=) :: a -> a -> Bool
    {-# MINIMAL (==) | (/=) #-}
-}