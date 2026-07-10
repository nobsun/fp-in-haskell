-- # Answer.Laziness.Ex0508
-- ## 練習問題 5.8
-- 与えられた要素を無限にならべる`repeat :: a -> [a]`を再実装せよ。
--
{-# LANGUAGE GHC2024 #-}
module Answer.Laziness.Ex0508
    (
    ) where
-- >>> take 5 (repeat 7)
-- [7,7,7,7,7]
_repeat :: a -> [a]
_repeat x = xs where
    xs = x:xs
