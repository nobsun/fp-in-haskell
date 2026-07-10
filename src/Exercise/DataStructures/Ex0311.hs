-- # Exercise.DataStructures.Ex0311
-- ##  練習問題 3.11
-- `sum`、`product`、`length`を`foldl`を用いて実装せよ。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.DataStructures.Ex0311
    (
    ) where
-- | 
-- `sum`、`product`、`length`は標準プレリュード関数である。
-- 衝突回避のために、それぞれ、`_sum`、`_product`、`_length`とする

-- >>> sample = [3,1,4,1,5,9,2,6,5,3] :: [Int]
-- >>> _sum sample
-- 39
-- >>> _sum sample == sum sample
-- True
-- >>> _product sample
-- 97200
-- >>> _product sample == product sample
-- True
-- >>> _length sample
-- 10

_sum :: Num a => [a] -> a
_sum = foldl' undefined undefined

_product :: Num a => [a] -> a
_product = foldl' undefined undefined

_length :: [a] -> Int
_length = foldl' undefined undefined
