-- # Exercise.Laziness.Ex0516
-- ## 練習問題 5.16
-- `tails`を一般化して`foldr`の累積リストを構成する関数
-- `scanr :: (a -> b -> b) -> b -> [a] -> [b]`を実装せよ。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.Laziness.Ex0516
    (
    ) where
-- | 
-- `scanr`は標準プレリュード関数
-- >>> import Data.List ( isPrefixOf )
-- >>> _tails = _scanr (:) []
-- >>> _tails "scanr"
-- ["scanr","canr","anr","nr","r",""]
-- >>> _isInfixOf sub sup = any (isPrefixOf sub) (_tails sup)
-- >>> "cad" `_isInfixOf` "abracadabra"
-- True
-- >>> "cdr" `_isInfixOf` "abracadabra"
-- False
--
_scanr :: (a -> b -> b) -> b -> [a] -> [b]
_scanr f z = undefined
