-- # Exercise.DataStructures.Ex0315
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Exercise.DataStructures.Ex0315
    ( myConcat
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | myConcat
concatは標準プレリュード関数
>>> myConcat ["ab","","cde","f","ghij"]
"abcdefghij"
-}
myConcat :: [[a]] -> [a]
myConcat = foldr (++) []
