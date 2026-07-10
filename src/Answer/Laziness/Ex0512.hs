-- # Answer.Laziness.Ex0512
-- ## 練習問題 5.12
-- `unfoldr`を用いて`fibs`、`enumFrom`、`repeat`、`ones`を定義せよ。
-- ただし、`unfoldr`を用いると`repeat`や`ones`は循環構造にはならない。
--
{-# LANGUAGE GHC2024 #-}
module Answer.Laziness.Ex0512
    (
    ) where
import Data.List ( unfoldr ) 
-- |
-- >>> take 10 _fibs
-- [0,1,1,2,3,5,8,13,21,34]
_fibs :: [Integer]
_fibs = unfoldr psi (0,1) where
    psi (!a,b) = Just (a,(b,a+b))
-- >>> take 5 $ _enumFrom 3
-- [3,4,5,6,7]
_enumFrom :: Int -> [Int]
_enumFrom = unfoldr psi where
    psi n = Just (n, n+1)
-- >>> take 5 $ _repeat 'a'
-- "aaaaa"
_repeat :: a -> [a]
_repeat = unfoldr psi where
    psi x = Just (x,x)
-- >>> take 5 $ _ones
-- [1,1,1,1,1]
_ones :: [Int]
_ones = _repeat 1
