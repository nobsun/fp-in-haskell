-- # Exercise.DataStructures.Ex0319
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Exercise.DataStructures.Ex0319
    (
    ) where
import Data.Bool
{- $setup
>>> :set -XOverloadedStrings
-}
{- | _filter
filterは標準プレリュード関数
>>> _filter odd [3,1,4,1,5,9,2,6,5]
[3,1,1,5,9,5]
-}
_filter :: (a -> Bool) -> [a] -> [a]
_filter p = foldr phi [] where
    phi x = bool id (x:) (p x)
