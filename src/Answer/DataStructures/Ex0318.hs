-- # Answer.DataStructures.Ex0318
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Answer.DataStructures.Ex0318
    (
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | _map
mapは標準プレリュード関数
>>> conv :: Int -> Bool; conv = even
>>> _map conv [3,1,4,1,5,9,2]
[False,False,True,False,False,False,True]
-}
_map :: (a -> b) -> [a] -> [b]
_map f = foldr ((:) . f) []

