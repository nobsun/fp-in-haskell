-- # Answer.DataStructures.Ex0323
-- ## 練習問題 3.23
-- 前問で書いた関数を一般化せよ。
--
{-# LANGUAGE GHC2024 #-}
module Answer.DataStructures.Ex0323
    (
    ) where
--
-- | _zipWith
-- `zipWith`は標準プレリュード関数
-- >>> _zipWith replicate [1,2,3] "abc"
-- ["a","bb","ccc"]
--
_zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
_zipWith _ []     _      = []
_zipWith _ _      []     = []
_zipWith f (x:xs) (y:ys) = z : _zipWith f xs ys
            where
                !z = f x y
