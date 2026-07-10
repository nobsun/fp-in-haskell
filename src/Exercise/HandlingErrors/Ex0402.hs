-- # Exercise.HandlingErrors.Ex0402
-- ## 練習問題 4.2
-- 数値リストの分散を求める関数
-- `variant :: [Double] -> Maybe Double`を`flatMap`を用いて実装せよ。
-- 平均値を求める関数を`mean`は以下のとおりとする。
-- 
-- ```
-- mean :: [Double] -> Maybe Double
-- mean xs = if null xs 
--     then Nothing
--     else sum xs / fromIntegral (length xs)
-- ```
--
{-# LANGUAGE GHC2024 #-}
module Exercise.HandlingErrors.Ex0402
    (
    ) where
-- 
-- | _variant 分散
-- 
--
-- >>> _variant []
-- Nothing
-- >>> _variant [4,2,3,3,6,3,4,3,3,5]
-- Just 1.2399999999999998
--
-- >>> _variant' []
-- NaN
-- >>> _variant' [4,2,3,3,6,3,4,3,3,5]
-- 1.2399999999999998

_variant :: [Double] -> Maybe Double
_variant xs = undefined

_mean :: [Double] -> Maybe Double
_mean xs = undefined
--
-- | _variant' :: [Double] -> Double
-- HaskellにおけるDoubleは、IEEE 754 浮動小数点数に準拠しており
-- 0 / 0 ==> NaN であり、このとき例外はあがらない。
-- （NaNかどうかの判定は、`isNaN :: Double -> Bool`を使う）
--
-- >>> _variant' []
-- NaN
-- >>> _variant' [4,2,3,3,6,3,4,3,3,5]
-- 1.2399999999999998
--
_variant' :: [Double] -> Double
_variant' xs = _mean' (map (square . deviation) xs)
    where
        deviation = subtract mu
        mu        = _mean' xs
        square x  = x * x
    
_mean' :: [Double] -> Double
_mean' = (/) . sum <*> fromIntegral . length
