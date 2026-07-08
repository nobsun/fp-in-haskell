-- # Answer.DataStructures.Ex0319
-- ## 練習問題 3.19
-- `filter :: (a -> Bool) -> [a] -> [a]`を書け。
--
{-# LANGUAGE GHC2024 #-}
module Answer.DataStructures.Ex0319
    (
    ) where
import Data.Bool
-- | _filter
-- filterは標準プレリュード関数
-- >>> _filter even [3,1,4,1,5,9,2,6,5]
-- [4,2,6]
--
_filter :: (a -> Bool) -> [a] -> [a]
_filter p = foldr phi [] where
    phi x = bool id (x:) (p x)
