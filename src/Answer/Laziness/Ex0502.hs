-- # Answer.Laziness.Ex0502
-- ## 練習問題
-- S-combinator、K-combinator、I-conbinator、B-combinator、C-combinator、それぞれのコンビネータの型シグネチャを確認せよ。
-- ```
-- S f g x = f x (g x)
-- K x y = x
-- I x = x
-- B f g x = f (g x)
-- C f x y = f y x
-- ```
--
{-# LANGUAGE GHC2024 #-}
module Answer.Laziness.Ex0502
    (
    ) where
-- | S-combinator、K-combinator、I-conbinator、B-combinator、C-combinator
--
--
_S :: (a -> b -> c) -> (a -> b) -> a -> c
_S = (<*>)

_K :: a -> b -> a
_K = const

_I :: a -> a
_I = id

_B :: (b -> c) -> (a -> b) -> a -> c
_B = (.)

_C :: (a -> b -> c) -> b -> a -> c
_C = flip
