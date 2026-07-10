-- # Exercise.GettingStarted.Ex0204
-- ## 練習問題 2.4
-- アンカリー化関数を実装せよ。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.GettingStarted.Ex0204
    (
    ) where
-- | _uncurry
-- `uncurry`は標準プレリュード関数である。衝突回避のため`_uncurry`とする。
--
-- >>> bmi :: Double -> (Double -> Double); bmi h w = w / h^(2::Int)
-- >>> :t bmi
-- bmi :: Double -> Double -> Double
-- >>> bmi' = _uncurry bmi
-- >>> :t bmi'
-- bmi' :: (Double, Double) -> Double
-- >>> bmi' (1.7,75) == bmi 1.7 75
-- True
--
_uncurry :: (a -> (b -> c)) -> ((a, b) -> c)
_uncurry f (x,y) = undefined
