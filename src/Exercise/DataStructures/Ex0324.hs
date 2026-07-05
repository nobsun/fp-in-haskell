-- # Exercise.DataStructures.Ex0324
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Exercise.DataStructures.Ex0324
    (
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | _hasSubsequence
flip isSubsequenceOf と同じ。isSubsequenceOfは、baseパッケージのData.Listモジュールにある
>>> _hasSubsequence "The Glorious Haskell Compiler" "GHC"
True
>>> _hasSubsequence [10,9 .. 0] [1 .. 10]
False
-}
_hasSubsequence :: Eq a => [a] -> [a] -> Bool
_hasSubsequence sup sub = case sub of
    []   -> True
    q:qs -> case sup of
        []   -> False
        p:ps | p == q    -> _hasSubsequence ps qs
             | otherwise -> _hasSubsequence ps sub
   
