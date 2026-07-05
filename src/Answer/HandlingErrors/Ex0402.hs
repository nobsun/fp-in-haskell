-- # Answer.HandlingErrors.Ex0402
-- ---
module Answer.HandlingErrors.Ex0402
    ( mean
    , variance
    ) where

-- ## 練習問題 4.2
-- variance（分散）関数をflatMapを用いて実装せよ。
-- 分散はシーケンス内の要素ごとの平均値からの偏差の自乗の平均値のことである
--
mean :: Fractional a => [a] -> Maybe a
mean = \ case
    [] -> Nothing
    xs -> Just $ sum xs / fromIntegral (length xs)
-- ---
-- | 実装
-- >>> sample = [3,1,4,1,5,9,2,6,5,3]
-- >>> mean sample
--
variance :: Fractional a => [a] -> Maybe a
variance xs = mean xs >>= \ m -> 
              mean $ map (square . subtract m) xs

square :: Num a => a -> a
square x = x * x
