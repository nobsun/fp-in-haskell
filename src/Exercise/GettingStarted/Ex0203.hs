-- # Exercise.GettingStarted.Ex0203
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
module Exercise.GettingStarted.Ex0203
    (
    ) where
{- $setup
>>> :set -XOverloadedStrings
-}
{- | _curry カリー化関数
    curryは標準プレリュード関数
>>> bmi' :: (Double, Double) -> Double; bmi' (h,w) = w / h^(2::Int)
>>> :type bmi'
bmi' :: (Double, Double) -> Double
>>> bmi = _curry bmi'
>>> :t bmi
bmi :: Double -> Double -> Double
>>> bmi' (1.7,75) == bmi 1.7 75
True
>>> myH = 1.7
>>> myBmi = bmi myH
>>> myBmi 70
24.221453287197235
>>> myBmi 60
20.761245674740486
-}
_curry :: ((a, b) -> c) -> (a -> (b -> c))
_curry f x y = f (x, y)
{- ^
_curry       :: ((a,b) -> c) -> (a -> (b -> c))
_curry f     :: a -> (b -> c)
_curry f x   :: b -> c
_curry f x y :: c
-}
