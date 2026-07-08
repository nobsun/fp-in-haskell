-- # Answer.DataStructures.Ex0306
-- ## 練習問題 3.6
-- 指定したリストの最後尾の要素以外の要素からなるリストを構成する関数`init`を実装せよ。
{-# LANGUAGE GHC2024 #-}
module Answer.DataStructures.Ex0306
    ( init'
    ) where
--
-- | init'
-- `init`は標準プレリュード関数。衝突回避のため`init'`とする。
-- `init`はリストを末尾までシーケンシャルに辿る必要があるので$O(1)$では実現できない。
-- `init`は、空リストを与えると例外が発生する部分関数なので、仕様を`tail'`のときと同じように変更する。
-- >>> init' [1,2,3,4]
-- [1,2,3]
-- >>> sample = "abcdefg"
-- >>> init' sample == init sample
-- True
-- >>> init' ""
-- ""
--
init' :: [a] -> [a]
init' xs = case xs of
    x:xs'@(_:_) -> x : init' xs'
    _           -> []
