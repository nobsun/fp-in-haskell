-- # Answer.DataStructures.Ex0323
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Answer.DataStructures.Ex0323
    (
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | _zipWith
zipWithは標準プレリュード関数
>>> _zipWith replicate [1,2,3] "abc"
["a","bb","ccc"]
-}
_zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
_zipWith f = \ case
    []   -> const []
    x:xs -> \ case
        []   -> []
        y:ys -> f x y : _zipWith f xs ys

