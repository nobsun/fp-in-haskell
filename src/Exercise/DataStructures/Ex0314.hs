-- # Exercise.DataStructures.Ex0314
-- ## 練習問題 3.14
-- `(++) :: [a] -> [a] -> [a]`を`foldr`あるいは`foldl'`のいずれかで実装せよ。
{-# LANGUAGE GHC2024 #-}
module Exercise.DataStructures.Ex0314
    ( 
    ) where
-- | _append
-- 直接再帰では以下のように定義する
-- ```haskell
-- append :: [a] -> [a] -> [a]
-- append []     ys = ys
-- append (x:xs) ys = x : append xs ys
-- ```
--
_append :: [a] -> [a] -> [a]
_append xs ys = undefined
