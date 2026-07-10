-- # Exercise.DataStructures.Ex0326
-- ## 練習問題 3.26
-- `BinTree a`の深さを計算する関数`depth`を書け。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.DataStructures.Ex0326
    (
    ) where
--
-- | _depth
-- 木構造一般の型クラスを定義してから、そのメソッドを使うアドホック多相関数として定義するのがよいが、ここでは出題意図を汲んでそのまま実装
-- >>> _depth _sample0
-- 0
-- >>> _depth _sample1
-- 3
--
_depth :: BinTree a -> Int
_depth = \ case
    _ -> undefined

data BinTree a
    = Leaf a
    | Branch (BinTree a) (BinTree a)

_sample0, _sample1 :: BinTree Int
_sample0 = Leaf 1
_sample1 = Branch
    (Branch (Leaf 3) (Leaf 1))
    (Branch (Leaf 4) (Branch (Leaf 1) (Leaf 5)))
