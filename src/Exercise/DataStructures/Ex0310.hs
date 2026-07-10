-- # Exercise.DataStructures.Ex0310
-- ##  練習問題 3.10
-- `foldl :: (b -> a -> b) -> b -> [a] -> b`を実装せよ。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.DataStructures.Ex0310
    (
    ) where

-- | _foldl
-- `foldl`は標準プレリュード関数である（ただし、実用上は`fold'`を使う）。
-- 衝突を回避するために`_foldl`とする。
-- >>> _foldl ((+) . (10 *)) 0 [3,1,4,1,5,9,2,6,5]
-- 314159265
-- 
_foldl :: (a -> b -> a) -> a -> [b] -> a
_foldl acc z xs = case xs of
    []    -> undefined
    x:xs' -> undefined
