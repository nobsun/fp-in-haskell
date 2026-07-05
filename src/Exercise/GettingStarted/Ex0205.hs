-- # Exercise.GettingStarted.Ex0205
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
module Exercise.GettingStarted.Ex0205
    (
    ) where
{- $setup
>>> :set -XOverloadedStrings
-}
{- | _compose 関数合成関数
    関数合成関数(.)は標準プレリュード関数
>>> add :: Int -> (Int -> Int); add = (+)
>>> tenTimes :: Int -> Int; tenTimes = (10 *)
>>> phi = _compose add tenTimes
>>> :t phi
phi :: Int -> Int -> Int
>>> phi 4 7
47
-}
_compose :: (b -> c) -> (a -> b) -> (a -> c)
_compose f g x = f (g x)
