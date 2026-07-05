-- # Answer.DataStructures.Ex0305
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Answer.DataStructures.Ex0305
    ( myDropWhile
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | myDropWhile
dropWhileは標準プレリュード関数
>>> myDropWhile odd [3,1,4,1,5,9]
[4,1,5,9]
-}
myDropWhile :: (a -> Bool) -> [a] -> [a]
myDropWhile p = \ case
    [] -> []
    xxs@(x:xs)
        | p x       -> myDropWhile p xs
        | otherwise -> xxs

