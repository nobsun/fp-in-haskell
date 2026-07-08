-- # Answer.DataStructures.Ex0327
-- ## 練習問題 3.27
-- `BinTree`上の`map :: (a -> b) -> BinTree a -> BinTree b`を書け
--
{-# LANGUAGE GHC2024 #-}
module Answer.DataStructures.Ex0327
    (
    ) where
--
-- | _map
-- 標準プレリュードからエクスポートされている`Functor`型構成子クラスのメソッド`fmap`と同じ。
-- 通常は型構成子`BinTree`を`Functor`型構成子クラスの具体例として宣言するだけであるが、ここでは出題意図を汲んでそのまま実装
--
-- >>> _sample0
-- Leaf 1
-- >>> _map (show . (1 +)) _sample0
-- Leaf "2"
-- >>> _sample1
-- Branch (Branch (Leaf 3) (Leaf 1)) (Branch (Leaf 4) (Branch (Leaf 1) (Leaf 5)))
-- >>> _map (show . (1 +)) _sample1
-- Branch (Branch (Leaf "4") (Leaf "2")) (Branch (Leaf "5") (Branch (Leaf "2") (Leaf "6")))
--
_map :: (a -> b) -> BinTree a -> BinTree b
_map f t = case t of
    Leaf x     -> Leaf (f x)
    Branch l r -> Branch (_map f l) (_map f r)

data BinTree a
    = Leaf a
    | Branch (BinTree a) (BinTree a)
    deriving (Eq, Show)

_sample0, _sample1 :: BinTree Int
_sample0 = Leaf 1
_sample1 = Branch
    (Branch (Leaf 3) (Leaf 1))
    (Branch (Leaf 4) (Branch (Leaf 1) (Leaf 5)))
