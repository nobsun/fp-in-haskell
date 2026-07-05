-- # Answer.DataStructures.Ex0302
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
module Answer.DataStructures.Ex0302
    ( myTail
    ) where
{- $setup
>>> :set -XOverloadedStrings
-}
{- | myTail
   Haskell では tail は標準プレリュード関数
   tail :: [a] -> [a]は、空リストを引数として与えられたとき例外を発生する部分関数である。
   現在の GHC ではコンパイラは tail の使用について警告を出し、
   tail の代替として drop 1 を使うことが示唆される。
   ここでは drop 1 と同じ仕様で実装する。
>>> myTail [0,1,1,2,3,5]
[1,1,2,3,5]
>>> myTail "abcde" :: [Char]
"bcde"
>>> myTail [] :: [Int]
[]
>>> myTail "" :: [Char]
""
-}
myTail :: [a] -> [a]
myTail = \ case
    []   -> []
    _:xs -> xs

