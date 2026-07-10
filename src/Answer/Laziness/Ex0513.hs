-- # Answer.Laziness.Ex0513
-- ## 練習問題 5.13
-- `unfoldr`を用いて`map`、`take`、`takeWhile`、`zipWith`、`zipAll`を実装せよ。
-- `zipAll`は両方のリストが尽きるまでとじあわせる。
-- `zipAll :: [a] -> [b] -> [(Maybe a, Maybe b)]
--
{-# LANGUAGE GHC2024 #-}
{-# LANGUAGE NPlusKPatterns #-}
module Answer.Laziness.Ex0513
    (
    ) where
import Data.List ( unfoldr )

_map :: (a -> b) -> [a] -> [b]
_map f = unfoldr psi where
    psi = \ case
        []   -> Nothing
        x:xs -> Just (f x, xs)

_take :: Int -> [a] -> [a]
_take n xs = unfoldr psi (n,xs) where
    psi = \ case
        (m+1,aas) -> case aas of
            []        -> Nothing
            a:as      -> Just (a,(m,as))
        _         -> Nothing

_takeWhile :: (a -> Bool) -> [a] -> [a]
_takeWhile p = unfoldr psi where
    psi = \ case
        []   -> Nothing
        x:xs | p x       -> Just (x,xs)
             | otherwise -> Nothing

_zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
_zipWith f xs ys = unfoldr psi (xs,ys) where
    psi = \ case
        ([],_)      -> Nothing
        (_,[])      -> Nothing
        (a:as,b:bs) -> Just (f a b, (as,bs))

_zipAll :: [a] -> [b] -> [(Maybe a, Maybe b)]
_zipAll xs ys = unfoldr psi (xs,ys) where
    psi = \ case
        (a:as,b:bs) -> Just ((Just a,  Just b),  (as, bs))
        ([],b:bs)   -> Just ((Nothing, Just b),  ([], bs))
        (a:as,[])   -> Just ((Just a , Nothing), (as, []))
        _           -> Nothing
        