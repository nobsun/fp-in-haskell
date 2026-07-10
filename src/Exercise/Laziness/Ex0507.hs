-- # Exercise.Laziness.Ex0507
-- ## 練習問題 5.7
-- `map`、`filter`、`(++)`、`concatMap`を`foldr`を用いて再実装せよ。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.Laziness.Ex0507
    (
    ) where
_map :: (a -> b) -> ([a] -> [b])
_map f = foldr phi [] where
    phi = undefined

_filter :: (a -> Bool) -> ([a] -> [a])
_filter p = foldr phi [] where
    phi = undefined

_append :: [a] -> [a] -> [a]
_append xs ys = undefined where

_concatMap :: (a -> [b]) -> ([a] -> [b])
_concatMap f = foldr phi [] where
    phi = undefined
