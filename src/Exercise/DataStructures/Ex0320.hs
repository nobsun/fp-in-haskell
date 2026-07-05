-- # Exercise.DataStructures.Ex0320
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Exercise.DataStructures.Ex0320
    (
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | _flatMap
標準プレリュード関数のconcatMapと同じ
>>> _flatMap _conv [3,1,4,1,5]
"Fizz141Buzz"
-}
_flatMap :: (a -> [b]) -> [a] -> [b]
_flatMap f = foldr ((++) . f) []

_conv :: Int -> [Char]
_conv = \ case
    n | n `mod` 5 == 0, n `mod` 3 == 0 -> "FizzBuzz"
      | n `mod` 5 == 0                 -> "Buzz"
      | n `mod` 3 == 0                 -> "Fizz"
      | otherwise                      -> show n
