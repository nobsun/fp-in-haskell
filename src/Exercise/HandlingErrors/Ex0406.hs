-- # Exercise.HandlingErrors.Ex0406
-- ## 練習問題 4.6
-- `Either e`上の以下の関数を定義せよ。
-- ```
-- map :: (a -> b) -> Either e a -> Either e b
-- flatMap :: (a -> Either e b) -> Either e a -> Either e b
-- orElse  :: Either e a -> Either e a -> Either e a
-- map2 :: (a -> b -> c) -> Either e a -> Either e b -> Either e c
-- ```
--
{-# LANGUAGE GHC2024 #-}
module Exercise.HandlingErrors.Ex0406
    (
    ) where
--
-- | _map、_flatMap、_orElse、_map2
-- `Either a`は、`Functor`、`Applicative`、`Monad`の３つの型構成子クラスの具体例であり、
-- `either :: (a -> c) -> (b -> c) -> Either a b -> c`という`Either a b`上のケース分析を一般化した関数が定義済みである。
-- それゆえ、
-- ```
-- map          = (<$>)
-- map2 f ea eb = f <$> ea <*> eb
-- flatMap      = (=<<)
-- orElse ed    = either (const ed) Right
-- ```
-- ここでは、`either`を実装してそれを使うことにする。
--
_either :: (a -> c) -> (b -> c) -> Either a b -> c
_either l r eab = case eab of
    Left x  -> l x
    Right y -> r y

_map :: (a -> b) -> Either e a -> Either e b
_map f = _either undefined undefined

_flatMap :: (a -> Either e b) -> Either e a -> Either e b
_flatMap f = _either undefined undefined

_orElse :: Either e a -> Either e a -> Either e a
_orElse d = _either undefined undefined

_map2 :: (a -> b -> c) -> Either e a -> Either e b -> Either e c
_map2 f ea = _either undefined undefined undefined

