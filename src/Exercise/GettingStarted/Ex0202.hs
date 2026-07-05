-- # Exercise.GettingStarted.Ex0202
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
module Exercise.GettingStarted.Ex0202
    ( isSorted
    ) where
{- $setup
>>> :set -XOverloadedStrings
-}
{- | isSorted リストがソート済みであるかを確認する述語関数
>>> isSorted (>) [1,2,3::Int]
True
>>> isSorted (>) "aba"
False
>>> isSorted (<) [3,2,1::Int]
True
>>> isSorted (<) [1,2,3::Int]
False
>>> isSorted (>) []
True
>>> isSorted (>) [1,3,3::Int]
True
-}
isSorted :: (a -> a -> Bool) -> [a] -> Bool
isSorted cmp = and . (zipWith ((not .) . cmp) <*> drop 1)

{- | _isSorted リストが整列しているかを確認する述語関数
    整列している場合の要素間の条件を指定するのが判りやすい
>>> _isSorted (<=) [1,2,3::Int]
True
>>> _isSorted (<=) "aba"
False
>>> _isSorted (>=) [3,2,1::Int]
True
>>> _isSorted (>=) [1,2,3::Int]
False
>>> _isSorted (<=) []
True
>>> _isSorted (<=) [1,3,3::Int]
True
-}
_isSorted :: (a -> a -> Bool) -> [a] -> Bool
_isSorted cmp = and . (zipWith cmp <*> drop 1)
