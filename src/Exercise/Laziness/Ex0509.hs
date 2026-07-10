-- # Exercise.Laziness.Ex0509
-- ## 練習問題 5.9
-- 指定した数から１ずつ増加する無限列を生成する
-- `enumFrom :: Int -> [Int]`
-- を実装せよ。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.Laziness.Ex0509
    (
    ) where
-- | `enumFrom`は`Enum`型クラスのメソッド
-- ここでは、標準プレリュード関数`iterate :: (a -> a) -> a -> [a]`を使う。
--
-- >>> take 5 (_enumFrom 7)
-- [7,8,9,10,11]
--
_enumFrom :: Int -> [Int]
_enumFrom = iterate inc where
    inc = undefined

