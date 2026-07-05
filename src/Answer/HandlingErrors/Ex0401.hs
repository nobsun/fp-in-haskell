-- # Answer.HandlingErrors.Ex0401
-- ---
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Answer.HandlingErrors.Ex0401
    ( 
    ) where
import Data.Bool
-- ---
-- 練習問題 4.1
-- `Maybe`（ScalaのOptionに相当する）上の高階関数を定義せよ
-- 型シグネチャーは以下のとおり
_map       :: (a -> b) -> Maybe a -> Maybe b
_getOrElse :: a -> Maybe a -> a
_orElse    :: a -> Maybe a -> Maybe a
_flatMap   :: Maybe a -> (a -> Maybe b) -> Maybe b
_filter    :: (a -> Bool) -> Maybe a -> Maybe a
-- ---
-- ## 実装
--
-- |
-- Maybe は標準プレリュードで Monad型構成子クラスの具体例と宣言されている。
-- したがって、Monadの上位クラスであるFunctorの具体例でもある。
-- _mapはFunctorクラスのメソッドfmapと同じ
-- _flatMapはMonadクラスのメソッド(>>=)と同じ
-- _getOrElseおよび_orElseは標準プレリュード関数maybe :: b -> (a -> b) -> Maybe a -> bを使う
-- maybeはMaybe型データ上のケース分析を肩代わりする関数になっている
-- _filterはfmapと(>>=)を組み合わせるのが直截
-- bool :: a -> a -> Bool -> aは基本モジュールData.Boolで定義されている
-- boolはif構文とは違い関数であるから、部分適用が可能で柔軟な記述がしやすい
_map         = fmap
_flatMap     = (>>=)
_getOrElse   = flip maybe id 
_orElse      = (Just .) . flip maybe id
_filter p mx = fmap p mx >>= bool Nothing mx
