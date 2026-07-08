-- # Answer.DataStructures.Ex0328
{-# LANGUAGE GHC2024 #-}
{-# LANGUAGE TypeFamilies #-}
module Answer.DataStructures.Ex0328
    (
    ) where
import Data.Functor.Foldable
--
-- |
-- `BinTree`を`Functor`型構成子クラスの具体例とすれば`fmap`、`BinTree`を`Foldable`型構成子クラスの具体例とすれば`maximum`が手にはいる。
-- しかし、Functorや`size`、`depth`、`fold`は具体的なノードの形状に関する情報が必要になる。
-- そこで、データ構造がもつ再帰的構造を抽象化する再帰図式という手法を使ってみよう。
-- `recursion-schemes`パッケージの`Data.Functor.Foldable`モジュールを利用する。
-- `BinTree a`を`Recursive`型クラスの具体例として宣言するために、基盤となる`BinTreeF a r`を定義する。
-- そのうえで、`BinTreeT a`の不動点が`BinTree a`となるとしたうえで、`Recursive`型クラスの具体例となることを宣言すれば、`Recursive`型クラスの具体例上で定義される、`cata :: Recusive t => (Base t a -> a) -> t -> a`が、一般化した`fold`として定義される。
-- `size`や`depth`は`cata`の具体例となる。
--
-- >>> _size _sample0
-- 1
-- >>> _size _sample1
-- 9
-- >>> _maximum _sample0
-- 1
-- >>> _maximum _sample1
-- 5
-- >>> _depth _sample0
-- 0
-- >>> _depth _sample1
-- 3
-- >>> _map (show . (1 +)) _sample0
-- Leaf "2"
-- >>> _map (show . (1 +)) _sample1
-- Branch (Branch (Leaf "4") (Leaf "2")) (Branch (Leaf "5") (Branch (Leaf "2") (Leaf "6")))
--
_map :: (a -> b) -> BinTree a -> BinTree b
_map = fmap

_maximum :: Ord a => BinTree a -> a
_maximum = maximum

_size :: BinTree a -> Int
_size = cata phi where
    phi t' = case t' of
        LeafF _     -> 1
        BranchF l r -> 1 + l + r

_depth :: BinTree a -> Int
_depth = cata phi where
    phi t' = case t' of
        LeafF _     -> 0
        BranchF l r -> 1 + l `max` r

data BinTree a
    = Leaf a
    | Branch (BinTree a) (BinTree a)
    deriving (Eq, Show, Read, Functor, Foldable)

_sample0, _sample1 :: BinTree Int
_sample0 = Leaf 1
_sample1 = Branch
    (Branch (Leaf 3) (Leaf 1))
    (Branch (Leaf 4) (Branch (Leaf 1) (Leaf 5)))

data BinTreeF a r
    = LeafF a
    | BranchF r r
    deriving (Eq, Functor)

type instance Base (BinTree a) = BinTreeF a

instance Recursive (BinTree a) where
    project :: BinTree a -> BinTreeF a (BinTree a)
    project t = case t of
        Leaf a     -> LeafF a
        Branch l r -> BranchF l r
