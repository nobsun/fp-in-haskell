-- # Exercise.DataStructures.Ex0303
-- ## 練習問題 3.3
-- 指定したリストの先頭部分を別の値で置き換えたリストを構成する関数`setHead`を実装せよ。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.DataStructures.Ex0303
    ( setHead
    ) where

-- | setHead
-- 前問と同様に、空リストに適用したときに例外を発生しないようにする。
--
-- >>> setHead 57 [0,3,8,7,11] :: [Int]
-- [57,3,8,7,11]
-- >>> setHead 'A' "abcde" :: [Char]
-- "Abcde"
-- >>> setHead 'x' "" :: [Char]
-- ""
--
setHead :: a -> [a] -> [a]
setHead x xs = undefined
