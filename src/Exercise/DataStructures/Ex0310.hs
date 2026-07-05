-- # Exercise.DataStructures.Ex0310
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Exercise.DataStructures.Ex0310
    ( myFoldl
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | myFoldl
foldlは標準プレリュード関数
>>> myFoldl ((+) . (10 *)) 0 [3,1,4,1,5,9,2,6,5]
314159265
-}
myFoldl :: (a -> b -> a) -> a -> [b] -> a
myFoldl phi z = \ case
    []   -> z
    x:xs -> myFoldl phi (phi z x) xs
