-- # Answer.DataStructures.Ex0324
-- ## 練習問題 3.24
-- 指定したリストが、指定したもうひとつのリストを部分列として含むかを判定する関数`hasSubsequence :: Eq a => [a] -> [a] -> Bool`を実装せよ。
{-# LANGUAGE GHC2024 #-}
module Answer.DataStructures.Ex0324
    (
    ) where
--
-- | _hasSubsequence
-- `flip isSubsequenceOf`と同じ。`isSubsequenceOf`は、`Data.List`モジュールにある。
--
-- >>> import Data.List
-- >>> _hasSubsequence "The Glorious Haskell Compiler" "GHC"
-- True
-- >>> _hasSubsequence [10,9 .. 0] [1 .. 10]
-- False
-- >>> _hasSubsequence ['a'..'z'] ('a':['d'..'q']) && flip isSubsequenceOf ['a'..'z'] ('a':['d'..'q'])
-- True
--
_hasSubsequence :: Eq a => [a] -> [a] -> Bool
_hasSubsequence _ [] = True
_hasSubsequence [] _ = False
_hasSubsequence (x:xs) sub@(y:ys)
    | x == y    = _hasSubsequence xs ys
    | otherwise = _hasSubsequence xs sub
