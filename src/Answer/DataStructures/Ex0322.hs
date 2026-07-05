-- # Answer.DataStructures.Ex0322
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Answer.DataStructures.Ex0322
    ( addPairwise
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | addPairwise
Haskellでやるなら標準プレリュード関数zipWithを使う。
ここは出題意図を汲んで再帰定義
>>> addPairwise [1,2,3] [4,5,6]
[5,7,9]
-}
addPairwise :: [Int] -> [Int] -> [Int]
addPairwise = \ case
    []   -> const []
    x:xs -> \ case
        []   -> []
        y:ys -> x + y : addPairwise xs ys
