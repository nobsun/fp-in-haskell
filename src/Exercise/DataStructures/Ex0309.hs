-- # Exercise.DataStructures.Ex0309
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Exercise.DataStructures.Ex0309
    ( myLength
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | myLength
length は標準プレリュード関数
>>> myLength [3,1,4,1,5,9,2,6,5]
9
>>> myLength "fp_matsuri"
10
-}
myLength :: [a] -> Int
myLength = foldr phi 0
    where
        phi _ a = succ a
