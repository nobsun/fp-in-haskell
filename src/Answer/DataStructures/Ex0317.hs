-- # Answer.DataStructures.Ex0317
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Answer.DataStructures.Ex0317
    ( doublesToString
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | doublesToString
？ユースケースがわからない
>>> doublesToString [3,1,4]
"3.01.04.0"
-}
doublesToString :: [Double] -> String
doublesToString = concatMap show

