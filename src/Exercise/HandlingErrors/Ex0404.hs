-- # Exercise.HandlingErrors.Ex0404
-- ## 練習問題 4.4
-- `Maybe`のリストをリストの`Maybe`に変換する関数
-- `sequnce :: [Maybe a] -> Maybe [a]`
-- を定義せよ。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.HandlingErrors.Ex0404
    (
    ) where
--
-- | _sequence
-- `sequence`および`sequenceA`は`Traversable`型構成子クラスのメソッドである。
-- ここでは、題意に沿って実装する。
--
-- >>> sample1 = [Just 3, Just 1, Nothing, Just 1, Just 5] :: [Maybe Int]
-- >>> sample2 = [Just 3, Just 1, Just 1, Just 5] :: [Maybe Int]
-- >>> _sequence sample1
-- Nothing
-- >>> _sequence sample2
-- Just [3,1,1,5]
-- >>> _sequence sample1 == sequenceA sample1
-- True
-- >>> _sequence sample1 == sequence sample1
-- True
-- >>> _sequence sample2 == sequenceA sample2
-- True
-- >>> _sequence sample2 == sequence sample2
-- True
_sequence :: [Maybe a] -> Maybe [a]
_sequence mxs = case mxs of
    []         -> undefined
    Nothing:_  -> undefined
    Just x:mrs -> undefined
