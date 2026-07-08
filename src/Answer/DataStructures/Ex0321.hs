-- # Answer.DataStructures.Ex0321
-- ## 練習問題 3.21
-- `concatMap`を使って`filter :: (a -> Bool) -> [a] -> [a]`を書け
--
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Answer.DataStructures.Ex0321
    (
    ) where
import Data.Bool
-- | _filter
-- >>> _filter even [3,1,4,1,5,9,2,6,5]
-- [4,2,6]
--
_filter :: (a -> Bool) -> [a] -> [a]
_filter p = concatMap phi where
    phi x = bool [] [x] (p x)
