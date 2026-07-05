-- # Exercise.GettingStarted.Ex0204
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
module Exercise.GettingStarted.Ex0204
    (
    ) where
{- $setup
>>> :set -XOverloadedStrings
-}
{- | _uncurry アンカリー化関数
    uncurry は標準プレリュード関数
>>> bmi :: Double -> (Double -> Double); bmi h w = w / h^(2::Int)
>>> :t bmi
bmi :: Double -> Double -> Double
>>> bmi' = _uncurry bmi
>>> :t bmi'
bmi' :: (Double, Double) -> Double
>>> bmi' (1.7,75) == bmi 1.7 75
True
-}
_uncurry :: (a -> (b -> c)) -> ((a, b) -> c)
_uncurry f (x,y) = f x y
