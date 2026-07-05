-- # Answer.DataStructures.Ex0303
{-# LANGUAGE GHC2024 #-}
{-# LANGUAGE OverloadedStrings #-}
module Answer.DataStructures.Ex0303
    ( setHead
    ) where

{- $setup
>>> :set -XOverloadedStrings
-}
{- | setHead 先頭要素を指定した値にしたリスト
>>> setHead 57 [0,3,8,7,11] :: [Int]
[57,3,8,7,11]
>>> setHead 'A' "abcde" :: [Char]
"Abcde"
-}
setHead :: a -> [a] -> [a]
setHead x xs = case xs of
    []    -> []
    _:xs' -> x : xs'
    
