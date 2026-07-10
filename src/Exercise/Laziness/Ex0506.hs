-- # Exercise.Laziness.Ex0506
-- ## 練習問題 5.6
-- `foldr`を用いて
-- `safeHead :: [a] -> Maybe a`を実装せよ
--
{-# LANGUAGE GHC2024 #-}
module Exercise.Laziness.Ex0506
    (
    ) where
-- |
-- `safeHead`の実装は、基本モジュール`Data.List`にある`uncons :: [a] -> Maybe (a, [a])`を使って
-- `safeHead = fst <$> uncons`
-- とするのが簡便。
-- 
_safeHead :: [a] -> Maybe a
_safeHead = foldr phi Nothing where
    phi = undefined

