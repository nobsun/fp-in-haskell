-- # Answer.DataStructures.Ex0318
-- ## 練習問題 3.18
-- `map :: (a -> b) -> [a] -> [b]`を書け。
--
{-# LANGUAGE GHC2024 #-}
module Answer.DataStructures.Ex0318
    (
    ) where

-- | _map
-- すでに使ったように、`map`はプレリュード関数。
-- `map`の型シグネチャーを`(a -> b) -> ([a] -> [b])`と認識できると「関数プログラミングが少しわかりはじめる（個人の感想）。
-- すなわち、`map`は関数`a -> b`とリスト`[a]`を取って、`[b]`を返す関数という見かただけではなく、`map`は、関数`a -> b`から関数`[a] -> [b]`を構成する関数、という見かたができれば、ステージが１つアップする（個人の感想）。
--
-- >>> _map even [3,1,4,1,5,9,2]
-- [False,False,True,False,False,False,True]
--
_map :: (a -> b) -> [a] -> [b]
_map f = foldr ((:) . f) []

