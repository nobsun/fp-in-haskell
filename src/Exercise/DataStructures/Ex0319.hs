-- # Exercise.DataStructures.Ex0319
-- ## 練習問題 3.19
-- `filter :: (a -> Bool) -> [a] -> [a]`を書け。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.DataStructures.Ex0319
    (
    ) where
import Data.Bool ( bool )
-- | _filter
-- filterは標準プレリュード関数
-- >>> _filter even [3,1,4,1,5,9,2,6,5]
-- [4,2,6]
--
_filter :: (a -> Bool) -> [a] -> [a]
_filter p = undefined
