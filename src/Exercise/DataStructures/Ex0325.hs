-- # Exercise.DataStructures.Ex0325
-- ## 練習問題 3.25
-- `BinTree Int`からその二分木に含まれる値の最大値への関数`maximum`を書け。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.DataStructures.Ex0325
    (
    ) where
--
-- | _maximum
-- maximumは標準プレリュードからエクスポートされているFoldable型クラスのメソッド。
-- 通常は型構成子`BinTree`を`Foldable`型構成子クラスの具体例として宣言するだけであるが、ここでは出題意図を汲んで直接実装。

-- >>> _maximum _sample0
-- 1
-- >>> _maximum _sample1
-- 5
--
_maximum :: BinTree Int -> Int
_maximum t = case t of
    _ -> undefined

data BinTree a
    = Leaf a
    | Branch (BinTree a) (BinTree a)

_sample0, _sample1 :: BinTree Int
_sample0 = Leaf 1
_sample1 = Branch
    (Branch (Leaf 3) (Leaf 1))
    (Branch (Leaf 4) (Branch (Leaf 1) (Leaf 5)))
