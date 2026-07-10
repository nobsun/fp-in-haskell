-- # Exercise.Laziness.Ex0505
-- ## 練習問題 5.5
-- `foldr`を用いて`takeWhile`を実装せよ。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.Laziness.Ex0505
    (
    ) where
_takeWhile :: (a -> Bool) -> [a] -> [a]
_takeWhile p = foldr phi [] where
    phi = undefined
