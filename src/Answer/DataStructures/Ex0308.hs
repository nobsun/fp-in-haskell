-- # Answer.DataStructures.Ex0308
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Answer.DataStructures.Ex0308
    ( 
    ) where
{- $setup
>>> :set -XOverloadedStrings
-}
{- 
Haskell では foldr は Foldable 型クラスのメソッド
>>> xs = "foldr (:) [] ≡ id :: [a] -> [a]" :: String
>>> xs == foldr (:) [] xs
True
-}


