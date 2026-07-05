-- # Answer.DataStructures.Ex0314
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Answer.DataStructures.Ex0314
    ( appendr
    , appendl
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | appendr
>>> appendr "abc" "1234"
"abc1234"
-}
appendr :: [a] -> [a] -> [a]
appendr xs ys = foldr (:) ys xs
{- | appendl
>>> appendl "abc" "1234"
"abc1234"
-}
appendl :: [a] -> [a] -> [a]
appendl xs ys = foldl psi id xs ys where
    psi f x = f . (x :)
