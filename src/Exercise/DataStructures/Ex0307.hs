-- # Exercise.DataStructures.Ex0307
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Exercise.DataStructures.Ex0307
    ( myProduct
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | myProduct
product は標準プレリュード関数。
product は 0 によるショートカットはない。
Haskell は Lazy な評価を行うので、foldr を使う場合の畳み込み関数が非正格関数ならショートカットができる。
>>> myProduct [1,2,3] == product [1,2,3]
True
>>> myProduct [0 ..]
0
-}
myProduct :: (Eq a, Num a) => [a] -> a
myProduct = foldr phi 1
    where
        phi = \ case
            0 -> const 0
            m -> \ n -> m * n
