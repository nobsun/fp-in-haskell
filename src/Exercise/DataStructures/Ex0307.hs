-- # Exercise.DataStructures.Ex0307
-- ## 練習問題 3.7
-- リスト要素の総積を計算する`product`を`foldr`で実装するとき、リストを辿って`0`に遭遇したら即座に再帰を中断するように実装できるか。
-- その理由はなにか。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.DataStructures.Ex0307
    ( product'
    ) where
--
-- | product' (ショートカット版)
-- `product`は標準プレリュード関数である。衝突回避のため`product'`とする。
-- Haskellはデフォルトで非正格関数が扱えるようになっている（Lazy評価機構を採用している）ので、
-- 一般に`foldr`を使う場合、畳み込み演算子が右オペランドに対して非正格ならショートカットができる。
--
-- >>> product' [1,2,3] == product [1,2,3]
-- True
-- >>> product' ([1 .. 10] ++ [0 ..])
-- 0
--
product' :: (Eq a, Num a) => [a] -> a
product' = foldr undefined 1

--
-- 非正格関数: ⊥（底値）に適用しても⊥にならない関数
-- 典型的には、
-- `(True ||)  :: Bool -> Bool`
-- `(False &&) :: Bool -> Bool`
-- がある。
--
-- >>> hoge = (True ||)
-- >>> huga = (False &&)
-- >>> hoge undefined
-- True
-- >>> huga undefined
-- False
