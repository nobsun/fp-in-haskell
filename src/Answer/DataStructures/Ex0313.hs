-- # Answer.DataStructures.Ex0313
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Answer.DataStructures.Ex0313
    ( myFoldr2
    , myFoldl2
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | myFoldr2
>>> myFoldr2 (:) "" "abc" == "abc"
True
-}
myFoldr2 :: (a -> b -> b) -> b -> [a] -> b
myFoldr2 phi z xs = foldl psi id xs z where
    psi f x = f . phi x

{- | myFoldl2
>>> myFoldl2 (flip (:)) "" "abc" == "cba"
True
-}
myFoldl2 :: (b -> a -> b) -> b -> [a] -> b
myFoldl2 psi z xs = foldr phi id xs z where
    phi x f = f . flip psi x






