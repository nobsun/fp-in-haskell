-- # Answer.DataStructures.Ex0305
-- ## 練習問題 3.5
-- 指定したリストの先頭から、指定した述語$p$を満すかぎり要素をとりのぞいたリストを構成する関数`dropWhile :: (a -> Bool) -> [a] -> [a]`を実装せよ。
--
{-# LANGUAGE GHC2024 #-}
module Answer.DataStructures.Ex0305
    (
    ) where
-- | _dropWhile
-- `dropWhile`は標準プレリュード関数である。
-- 衝突を回避するため、`_dropWhile`とする。
--
-- >>> _dropWhile odd [3,1,4,1,5,9]
-- [4,1,5,9]
-- >>> sample = [3,1,4,1,5,9]
-- >>> _dropWhile odd sample == dropWhile odd sample
-- True
--
_dropWhile :: (a -> Bool) -> [a] -> [a]
_dropWhile p xxs = case xxs of
    x:xs | p x       -> _dropWhile p xs
         | otherwise -> xxs
    _                -> []
