-- # Answer.HandlingErrors.Ex0403
-- ## 練習問題 4.3
-- 2つの`Maybe`値を結合する汎用関数`map2 :: (a -> b -> c) -> Maybe a -> Maybe b -> Maybe c`を書け。
--
{-# LANGUAGE GHC2024 #-}
module Answer.HandlingErrors.Ex0403
    (
    ) where
--
-- | _map2
--
-- `Maybe`は`Functor`型構成子クラスの具体例であるから、`fmap :: (a -> b) -> Maybe a -> Maybe b`が定義済みである。
-- ここで、`f :: a -> b -> c`としよう。関数`f`の域は`a`、余域は`b -> c`である、すなわち、
-- `f :: a -> (b -> c)`
-- `fmap f :: Maybe a -> Maybe (b -> c)`
-- である。もし、`appMaybe :: Maybe (b -> c) -> (Maybe b -> Maybe c)`があれば、
-- `map2 f (ma :: Maybe a) (mb :: Maybe b)` = appMaybe (fmap f ma) mb :: Maybe c`である。
-- すなわち
-- `map2 f = appMaybe . fmap f`
-- であるから、`appMaybe`が定義できればよい。
--
-- >>> _map2 (+) (Just 2) (Just 3)
-- Just 5
-- >>> _map2 (+) Nothing (Just 5)
-- Nothing
-- >>> _map2 (+) (Just 7) Nothing
-- Nothing
-- >>> _map2 (+) Nothing Nothing
-- Nothing
--
_map2 :: (a -> b -> c) -> Maybe a -> Maybe b -> Maybe c
_map2 f = _appMaybe . fmap f

_appMaybe :: Maybe (a -> b) -> Maybe a -> Maybe b
_appMaybe = maybe (const Nothing) fmap
--
-- 実際は、`Maybe`は`Applicative`型構成子クラスの具体例であるから、
--
-- `_appMaybe = (<*>)`
--
-- である。また、
--
-- `(<$>) = fmap`
--
-- であるから、`map2 f mx my`は、`f <$> mx <*> my`と書けるので、わざわざ`map2`のような名付けをしないことも多い。
--
