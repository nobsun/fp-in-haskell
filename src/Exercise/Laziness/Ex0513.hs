-- # Exercise.Laziness.Ex0513
-- ## 練習問題 5.13
-- `unfoldr`を用いて`map`、`take`、`takeWhile`、`zipWith`、`zipAll`を実装せよ。
-- `zipAll`は両方のリストが尽きるまでとじあわせる。
-- `zipAll :: [a] -> [b] -> [(Maybe a, Maybe b)]
--
{-# LANGUAGE GHC2024 #-}
{-# LANGUAGE NPlusKPatterns #-}
module Exercise.Laziness.Ex0513
    (
    ) where
import Data.List ( unfoldr )

_map :: (a -> b) -> [a] -> [b]
_map f = unfoldr psi where
    psi = undefined

_take :: Int -> [a] -> [a]
_take n xs = unfoldr psi undefined where
    psi = undefined

_takeWhile :: (a -> Bool) -> [a] -> [a]
_takeWhile p = unfoldr psi where
    psi = undefined

_zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
_zipWith f xs ys = unfoldr psi undefined where
    psi = undefined

_zipAll :: [a] -> [b] -> [(Maybe a, Maybe b)]
_zipAll xs ys = unfoldr psi undefined where
    psi = undefined       
