-- # Exercise.DataStructures.Ex0302
-- ## 練習問題 3.2
-- リストの先頭要素よりも後にあるリストを示す関数`tail`を定義せよ。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.DataStructures.Ex0302
    ( tail'
    ) where
-- | myTail
-- Haskellでは`tail`は標準プレリュード関数である。
-- 衝突を回避するため`tail'`とする。
-- なお、プレリュード関数`tail :: [a] -> [a]`は空リストに適用したときに、例外を発生する部分関数である。
-- 現在のGHCではコンパイラは`tail`の使用について警告を出し、代替として `drop 1`の使用を示唆する。
-- ここでは、`drop 1`相当の関数を定義する。
--
-- >>> tail' [0,1,1,2,3,5]
-- [1,1,2,3,5]
-- >>> tail' "abcde" :: [Char]
-- "bcde"
-- >>> tail' [] :: [Int]
-- []
-- 
tail' :: [a] -> [a]
tail' xs = undefined