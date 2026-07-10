-- # Exercise.DataStructures.Ex0322
-- ## 練習問題 3.22
-- 2つのリストから対応する要素を加算した新しい要素を含むリストを構成する関数を書け。
-- 
{-# LANGUAGE GHC2024 #-}
module Exercise.DataStructures.Ex0322
    (
    ) where
-- 
-- | _addPairwise
-- Haskellでやるなら標準プレリュード関数`zipWith`を使う。
-- ここは出題意図を汲んで直接再帰定義
-- >>> _addPairwise [1,2,3] [4,5,6]
-- [5,7,9]
--
_addPairwise :: [Int] -> [Int] -> [Int]
_addPairwise []     _      = []
_addPairwise _      []     = []
_addPairwise (x:xs) (y:ys) = undefined
