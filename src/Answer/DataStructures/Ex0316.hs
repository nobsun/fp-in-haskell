-- # Answer.DataStructures.Ex0316
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Answer.DataStructures.Ex0316
    ( incs
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | incs
整数リストの各要素を1増やす
>>> incs [3,1,4,1,5]
[4,2,5,2,6]
-}
incs :: [Int] -> [Int]
incs = map succ
