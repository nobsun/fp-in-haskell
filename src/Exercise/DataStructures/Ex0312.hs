-- # Exercise.DataStructures.Ex0311
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Exercise.DataStructures.Ex0312
    ( myReverse
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | myReverse
reverse は標準プレリュード関数
>>> myReverse "akasaka"
"akasaka"
>>> myReverse [3,1,4,1,5,9,2,6,5]
[5,6,2,9,5,1,4,1,3]
-}
myReverse :: [a] -> [a]
myReverse = foldl' (flip (:)) []
