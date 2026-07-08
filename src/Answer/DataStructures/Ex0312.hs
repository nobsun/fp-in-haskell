-- # Answer.DataStructures.Ex0312
-- ##  練習問題 3.12
-- 逆順のリストを構成する関数`reverse`を畳み込みを使って書け。
--
{-# LANGUAGE GHC2024 #-}
module Answer.DataStructures.Ex0312
    (
    ) where
--
-- | _reverse
-- `reverse`は標準プレリュード関数である。
-- 衝突回避のため`_reverse`とする。

-- >>> _reverse "akasaka"
-- "akasaka" 
-- >>> _reverse [3,1,4,1,5,9,2,6,5]
-- [5,6,2,9,5,1,4,1,3]
-- 
_reverse :: [a] -> [a]
_reverse = foldl' (flip (:)) []
--
-- >>> sm = foldr (+) 0
-- >>> sm [1..1000000]
