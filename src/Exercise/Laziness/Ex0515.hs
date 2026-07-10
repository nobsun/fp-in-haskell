-- # Exercise.Laziness.Ex0515
-- ## 練習問題 5.15
-- `unfoldr`を用いて`tails :: [a] -> [[a]]`を実装せよ
-- 
{-# LANGUAGE GHC2024 #-}
module Exercise.Laziness.Ex0515
    (
    ) where
import Data.List ( unfoldr )
-- |
-- `tails`は基本モジュール`Data.List`で定義されている。
-- >>> _tails "tails"
-- ["tails","ails","ils","ls","s",""]
-- >>> _tails ""
-- [""]
_tails :: [a] -> [[a]]
_tails xs = undefined
