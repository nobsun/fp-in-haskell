-- # Exercise.DataStructures.Ex0326
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Exercise.DataStructures.Ex0326
    (
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | _depth
木構造一般の型構成子クラスを定義してから、そのメソッドを使うアドホック多相関数として定義するのがよいが、ここでは出題意図を汲んでそのまま実装
>>> _depth _sample0
0
>>> _depth _sample1
3
-}
_depth :: Tree a -> Int
_depth = \ case
    Leaf _ -> 0
    Branch l r -> succ $ _depth l `max` _depth r

data Tree a
    = Leaf a
    | Branch (Tree a) (Tree a)

_sample0, _sample1 :: Tree Int
_sample0 = Leaf 1
_sample1 = Branch
    (Branch (Leaf 3) (Leaf 1))
    (Branch (Leaf 4) (Branch (Leaf 1) (Leaf 5)))
