-- # Exercise.DataStructures.Ex0306
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Exercise.DataStructures.Ex0306
    ( myInit
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | myInit
initは標準プレリュード関数。
initは、空リストを与えると例外が発生する部分関数なので、仕様をmyTailのときと同じように変更する
>>> myInit [1,2,3,4]
[1,2,3]

-}
myInit :: [a] -> [a]
myInit = \ case
    []  -> []
    [_] -> []
    x:xs@(_:_) -> x : myInit xs
