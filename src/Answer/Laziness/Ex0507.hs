-- # Answer.Laziness.Ex0507
-- ## 練習問題 5.7
-- `map`、`filter`、`(++)`、`concatMap`を`foldr`を用いて再実装せよ。
--
{-# LANGUAGE GHC2024 #-}
module Answer.Laziness.Ex0507
    (
    ) where
_map :: (a -> b) -> ([a] -> [b])
_map f = foldr ((:) . f) []

_filter :: (a -> Bool) -> ([a] -> [a])
_filter p = foldr f [] where
    f = \ case
        x | p x       -> id
          | otherwise -> (x :)

_append :: [a] -> [a] -> [a]
_append xs ys = foldr (:) ys xs

_concatMap :: (a -> [b]) -> ([a] -> [b])
_concatMap f = foldr ((++) . f) []
