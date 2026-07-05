-- # Exercise.DataStructures.Ex0311
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Exercise.DataStructures.Ex0311
    ( mySum
    , myProduct
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | 
mySum および product は標準プレリュード関数
>>> sum [3,1,4,1,5,9,2,6,5,3]
39
>>> myProduct [3,1,4,1,5,9,2,6,5,3]
97200
-}
mySum :: Num a =>[a] -> a
mySum = foldl' (+) 0

myProduct :: Num a => [a] -> a
myProduct = foldl' (*) 1

