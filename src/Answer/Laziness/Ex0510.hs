-- # Answer.Laziness.Ex0510
-- ## 練習問題 5.10
-- フィボナッチ数列を構成せよ。
--
{-# LANGUAGE GHC2024 #-}
module Answer.Laziness.Ex0510
    (
    ) where
-- | _fibs
-- >>> take 10 _fibs
-- [0,1,1,2,3,5,8,13,21,34]
_fibs,_fibs' :: [Integer]
_fibs@(_:_fibs') = 0 : 1 : zipWith add _fibs _fibs' where
    add x !y = x + y
