-- # Answer.DataStructures.Ex0304
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Answer.DataStructures.Ex0304
    ( myDrop
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | myDrop
dropは標準プレリュード関数
>>> myDrop 3 [1,2,3,4,5] :: [Int]
[4,5]
>>> myDrop 2 "abcde" :: [Char]
"cde"
-}
myDrop :: Int -> [a] -> [a]
myDrop = \ case
    0   -> id
    n+1 -> \ case
        []   -> []
        _:xs -> myDrop n xs
    _   -> id
