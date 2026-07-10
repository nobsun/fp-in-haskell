-- # Exercise.DataStructures.Ex0309
-- ##  練習問題 3.9
-- リストの長さを`foldr`を使って計算せよ。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.DataStructures.Ex0309
    (
    ) where
--
-- >>> foldr (const (1 +)) (0 :: Int) [3,1,4,1,5,9,2,6,5]
-- 9
-- >>> foldr (const (1 +)) (0 :: Int) "fp_matsuri"
-- 10


