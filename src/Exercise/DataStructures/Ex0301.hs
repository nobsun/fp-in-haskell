-- # Exercise.DataStructures.Ex0301
-- ## リスト型
-- 要素を`T`型のデータとするリストの型を`[T]`と書く。
-- `[T]`型のデータは以下のように帰納的に構成します。
-- 1. 要素を含まない空リスト`[]`は`[T]`型のリストである
-- 2. `x`が`T`型のデータ、`xs`が`[T]`型のリストであるとき、`xs`の先頭に`x`を追加したもの`x : xs`は`[T]`型のリストである
--
-- 空リスト`[]`および`:`をデータ構成子とよぶ。リスト構成後も、データ構成子はパターン照合で識別できる。
-- リスト`x : (y : (z : []))`を`[x,y,z]`と書くこともできる。
-- また、データ構成子`:`は右結合の二項演算子であるので、括弧を省略して`x : y : z : []`と書いてもよい。
--
-- ```
-- ## 練習問題 3.1
-- リスト上のパターン照合
--
{-# LANGUAGE GHC2024 #-}
module Exercise.DataStructures.Ex0301
    (
    ) where

-- | パターン照合の例
--
-- >>> result = _aCaseAnalysisOnList [1,2,3,4,5]
-- >>> result
-- 3
--
_aCaseAnalysisOnList :: [Int] -> Int
_aCaseAnalysisOnList = \ case
    x:2:4:_   -> x
    []        -> 42
    x:y:3:4:_ -> x + y
    h:t       -> h + sum t
    _         -> 101 -- never selected

