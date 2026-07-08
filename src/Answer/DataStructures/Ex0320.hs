-- # Answer.DataStructures.Ex0320
-- ## 練習問題 3.20
-- `concatMap :: (a -> [b]) -> [a] -> [b]`を書け。
--
{-# LANGUAGE GHC2024 #-}
module Answer.DataStructures.Ex0320
    (
    ) where
--
-- | _concatMap
-- `concatMap`は標準プレリュード関数
--
-- >>> _concatMap (replicate 2) [1,2,3]
-- [1,1,2,2,3,3]
--
_concatMap :: (a -> [b]) -> [a] -> [b]
_concatMap f = foldr ((++) . f) []
