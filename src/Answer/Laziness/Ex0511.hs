-- # Answer.Laziness.Ex0511
-- ## 練習問題 5.11
-- シードからリストを再帰的に構成する関数
-- `unfoldr :: (a -> Maybe (b, a)) -> a -> [b]`を書け
--
{-# LANGUAGE GHC2024 #-}
module Answer.Laziness.Ex0511
    (
    ) where
-- | 
-- `unfoldr`は基本モジュール`Data.List`の関数である。
--
_unfoldr :: (a -> Maybe (b, a)) -> a -> [b]
_unfoldr psi a = case psi a of
    Nothing    -> []
    Just (y,x) -> y : _unfoldr psi x
