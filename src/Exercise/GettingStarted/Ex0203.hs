-- # Exercise.GettingStarted.Ex0203
-- ## 練習問題 2.3
-- カリー化関数を実装せよ。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.GettingStarted.Ex0203
    (
    ) where
-- | _curry
-- `curry`は標準プレリュード関数である。衝突回避のため`_curry`とする
--
-- >>> bmi' :: (Double, Double) -> Double; bmi' (h,w) = w / h^(2::Int)
-- >>> :type bmi'
-- bmi' :: (Double, Double) -> Double
-- >>> bmi = _curry bmi'
-- >>> :t bmi
-- bmi :: Double -> Double -> Double
-- >>> bmi 1.7 75 == bmi' (1.7, 75)
-- True
-- >>> myH = 1.7
-- >>> myBmi = bmi myH
-- >>> myBmi 70 
-- 24.221453287197235
-- >>> myBmi 60
-- 20.761245674740486
--
-- >>> bmiSpec = curry bmi'
-- >>> bmi 1.7 75 == bmiSpec 1.7 75
-- True
--
_curry :: ((a, b) -> c) -> (a -> (b -> c))
_curry f x y = undefined