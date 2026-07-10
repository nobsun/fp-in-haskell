-- # Answer.Laziness.Ex0503
-- ## 練習問題 5.3
--
{-# LANGUAGE GHC2024 #-}
module Answer.Laziness.Ex0503
    (
    ) where
--
-- | _takeWhile
-- >>> _takeWhile odd [3,1,4,1,5,9]
-- [3,1]
-- >>> _takeWhile (5 >) [3,1,4,1,5,9]
-- [3,1,4,1]
-- >>> _takeWhile even [3,1,4,1,5,9]
-- []
--
_takeWhile :: (a -> Bool) -> [a] -> [a]
_takeWhile p = \ case
    [] -> []
    x:xs | p x       -> x : _takeWhile p xs
         | otherwise -> []
