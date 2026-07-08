-- # Answer.DataStructures.Ex0315
-- ## 練習問題 3.15
-- `concat :: [[a]] -> [a]`を実装せよ。
-- 計算量は全体のリストの長さ$n$に対して$O(n)$となるようにせよ。
--
{-# LANGUAGE GHC2024 #-}
module Answer.DataStructures.Ex0315
    (
    ) where

-- | _concat
-- concatは標準プレリュード関数である。
--
-- >>> _concat ["ab","","cde","f","ghij"]
-- "abcdefghij"
--
_concat :: [[a]] -> [a]
_concat = foldr (++) []
