-- # Exercise.DataStructures.Ex0327
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Exercise.DataStructures.Ex0327
    (
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | _map
標準プレリュードからエクスポートされているFunctor型構成子クラスのメソッドfmapと同じ
通常は型構成子TreeをFunctor型構成子クラスの具体例として宣言するだけであるが、ここでは出題意図を汲んでそのまま実装
>>> _sample0
Leaf 1
>>> _map (show . succ) _sample0
Leaf "2"
>>> _sample1
Branch (Branch (Leaf 3) (Leaf 1)) (Branch (Leaf 4) (Branch (Leaf 1) (Leaf 5)))
>>> _map (show . succ) _sample1
Branch (Branch (Leaf "4") (Leaf "2")) (Branch (Leaf "5") (Branch (Leaf "2") (Leaf "6")))
-}
_map :: (a -> b) -> Tree a -> Tree b
_map f = \ case
    Leaf x     -> Leaf (f x)
    Branch l r -> Branch (_map f l) (_map f r)

data Tree a
    = Leaf a
    | Branch (Tree a) (Tree a)
    deriving (Eq, Show)

_sample0, _sample1 :: Tree Int
_sample0 = Leaf 1
_sample1 = Branch
    (Branch (Leaf 3) (Leaf 1))
    (Branch (Leaf 4) (Branch (Leaf 1) (Leaf 5)))
