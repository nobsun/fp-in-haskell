-- # Exercise.DataStructures.Ex0304
-- ## 練習問題 3.4
-- 指定したリスト先頭の先頭から$n$個要素を取り除いたリストを構成する関数`drop :: Int -> [a] -> [a]`を実装せよ。
--
{-# LANGUAGE GHC2024 #-}
{-# LANGUAGE NPlusKPatterns #-}
module Exercise.DataStructures.Ex0304
    (
    ) where

-- | _drop
-- dropは標準プレリュード関数である。
-- 衝突を回避するために`_drop`とする。

-- >>> _drop 3 [1,2,3,4,5] :: [Int]
-- [4,5]
-- >>> _drop 2 "abcde" :: [Char]
-- "cde"
-- >>> _drop 100 "hoge" :: [Char]
-- ""
--
_drop :: Int -> [a] -> [a]
_drop n xs = undefined
