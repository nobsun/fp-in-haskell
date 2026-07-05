-- # Answer.DataStructures.Ex0328
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds, PolyKinds, NoStarIsType, TypeFamilyDependencies #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Answer.DataStructures.Ex0328
    ( Tree (..)
    , TreeF (..)
    , size
    , depth
    ) where

import Data.Functor.Foldable

{- $setup
>>> :set -XOverloadedStrings
-}
{-
Tree を Functor型構成子クラスの具体例とすれば fmap、Tree を Foldable型構成子クラスの具体例とすれば foldr （maximumも）がそれぞれ手に入る
ここでは recursion-schemeパッケージをインストールしてこちらの仕組みを利用することにする
Tree a を Recursive 型クラスの具体例とすれば cata が foldr の一般化になるので、map、maximum、size は cata の具体例として定義できる
>>> sample0 = _sample0
>>> sample1 = _sample1
>>> size sample0
1
>>> size sample1
9
>>> _maximum sample0
1
>>> _maximum sample1
5
>>> depth sample0
0
>>> depth sample1
3
>>> _map (show . succ) sample0
Leaf "2"
>>> _map (show . succ) sample1
Branch (Branch (Leaf "4") (Leaf "2")) (Branch (Leaf "5") (Branch (Leaf "2") (Leaf "6")))
-}

size :: Tree a -> Int
size = cata phi where
    phi = \ case
        LeafF _     -> 1
        BranchF l r -> 1 + l + r

_maximum :: Ord a => Tree a -> a
_maximum = cata phi where
    phi = \ case
        LeafF x -> x
        BranchF l r -> max l r

depth :: Tree a -> Int
depth = cata phi where
    phi = \ case
        LeafF _     -> 0
        BranchF l r -> succ $ max l r

_map :: (a -> b) -> Tree a -> Tree b
_map f = cata phi where
    phi = \ case
        LeafF x     -> Leaf (f x)
        BranchF l r -> Branch l r

data TreeF a r
    = LeafF a
    | BranchF r r
    deriving (Functor)

data Tree a
    = Leaf a
    | Branch (Tree a) (Tree a)
    deriving (Eq, Show, Read, Functor, Foldable)

type instance Base (Tree a) = TreeF a

instance Recursive (Tree a) where
    project :: Tree a -> TreeF a (Tree a)
    project = \ case
        Leaf x     -> LeafF x
        Branch l r -> BranchF l r

instance Corecursive (Tree a) where
    embed :: TreeF a (Tree a) -> Tree a
    embed = \ case
        LeafF x     -> Leaf x
        BranchF l r -> Branch l r

_sample0, _sample1 :: Tree Int
_sample0 = Leaf 1
_sample1 = Branch
    (Branch (Leaf 3) (Leaf 1))
    (Branch (Leaf 4) (Branch (Leaf 1) (Leaf 5)))
