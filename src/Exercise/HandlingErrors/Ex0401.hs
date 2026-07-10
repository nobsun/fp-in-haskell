-- # Exercise.HandlingErrors.Ex0401
-- ## 練習問題 4.1
-- 以下にあげる、Maybe上の関数を定義せよ。
-- ```
-- map       :: (a -> b) -> Maybe a -> Maybe b
-- getOrElse :: a -> Maybe a -> a
-- flatMap   :: (a -> Maybe b) -> Maybe a -> Maybe b
-- orElse    :: Maybe a -> Maybe a -> Maybe a
-- filter    :: (a -> Bool) -> Maybe a -> Maybe a
-- ```
--
{-# LANGUAGE GHC2024 #-}
module Exercise.HandlingErrors.Ex0401
    (
    ) where
-- | 
-- `Maybe`は、
-- 
-- 1. `Functor`型構成子クラスの具体例
-- 2. `Monad`型構成子クラスの具体例
--
-- である（標準プレリュードで宣言されている）。
-- `fmap :: Functor f => (a -> b) -> f a -> f b`
-- `(=<<) :: Monad m => (a -> m b) -> m a -> m b`が、それぞれ、`map`と`flatMap`に対応する。
-- 
-- `getOrElse`は、Maybe上のケース分析を一般化した、`maybe :: b -> (a -> b) -> Maybe a -> b`（標準プレリュードがエクスポートしている）を使えば定義できる。
-- 
-- ```
-- map = fmap
-- flatMap = (=<<)
-- getOrElse d = maybe d id
-- ```
--
-- ここでは、題意にしたがって実装する
-- 
_map :: (a -> b) -> Maybe a -> Maybe b
_map f m = case m of
    _ -> undefined

_getOrElse :: a -> Maybe a -> a
_getOrElse d m = case m of
    _ -> undefined

_flatMap :: (a -> Maybe b) -> (Maybe a -> Maybe b)
_flatMap f = undefined

_orElse :: Maybe a -> Maybe a -> Maybe a
_orElse d = undefined

_filter :: (b -> Bool) -> Maybe b -> Maybe b
_filter p = _flatMap phi where
    phi x = undefined 
