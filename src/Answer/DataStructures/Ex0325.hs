-- # Answer.DataStructures.Ex0325
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Answer.DataStructures.Ex0325
    (
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | _maximum
maximumは標準プレリュードからエクスポートされているFoldable型クラスのメソッド
通常は型構成子TreeをFoldable型クラスの具体例として宣言するだけであるが、ここでは出題意図を汲んでそのまま実装
>>> _maximum _sample0
1
>>> _maximum _sample1
5
-}
_maximum :: Tree Int -> Int
_maximum = \ case
    Leaf x -> x
    Branch l r -> _maximum l `max` _maximum r

data Tree a
    = Leaf a
    | Branch (Tree a) (Tree a)

_sample0, _sample1 :: Tree Int
_sample0 = Leaf 1
_sample1 = Branch
    (Branch (Leaf 3) (Leaf 1))
    (Branch (Leaf 4) (Branch (Leaf 1) (Leaf 5)))
