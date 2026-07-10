-- # Exercise.Laziness.Ex0504
-- ## 練習問題 5.4
-- 指定したリスト内の要素がすべて指定した述語を満すかどうかを判定する関数
-- `all :: (a -> bool) -> [a] -> [a]`
-- 実装せよ。不適合要素をがみつかったら後の要素の判定はスキップしてショートカットせよ。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.Laziness.Ex0504
    (
    ) where
--
-- | `all`は標準プレリュード関数
-- `foldr`をつかって`(&&)`で畳み込む。`(False &&)`は非正格関数なのでショートカットできる。
--
-- >>> _all odd [1 .. 5]
-- False
-- >>> _all even (map (2 *) [1 .. 5])
-- True
-- >>> _all (10 >) [0 ..]
-- False
--
_all :: (a -> Bool) -> [a] -> Bool
_all p = undefined
