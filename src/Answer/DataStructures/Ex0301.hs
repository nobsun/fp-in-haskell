-- # Answer.DataStructures.Ex0301
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Answer.DataStructures.Ex0301
    ( caseAnalysisOnList
    ) where
{- $setup
>>> :set -XOverloadedStrings
-}
{- | caseAnalysisOnList パターン照合の例
>>> caseAnalysisOnList [1,2,3,4,5]
3
-}
caseAnalysisOnList :: [Int] -> Int
caseAnalysisOnList = \ case
    x:2:4:_   -> x
    []        -> 42
    x:y:3:4:_ -> x + y
    h:t       -> h + sum t
    _         -> 101 -- never selected

