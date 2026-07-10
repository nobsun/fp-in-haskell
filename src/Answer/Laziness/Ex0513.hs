-- # Answer.Laziness.Ex0513
-- ## 練習問題 5.13
-- 指定したリストがもうひとつのリストの接頭辞になっているかを判定する
-- `isPrefixOf :: Eq a => [a] -> [a] -> Bool`を実装せよ。
--
{-# LANGUAGE GHC2024 #-}
module Answer.Laziness.Ex0513
    (
    ) where
-- | `isPrefixOf`は基本モジュール`Data.List`の関数
-- >>> "abra" `_isPrefixOf` "abracadabra"
-- True
-- >>> "adab" `_isPrefixOf` "abracadabra"
-- False
-- >>> "abracadabra" `_isPrefixOf` "abra"
-- False
_isPrefixOf :: Eq a => [a] -> [a] -> Bool
_isPrefixOf = \ case
    []   -> const True
    x:xs -> \ case
        [] -> False
        y:ys | x == y    -> _isPrefixOf xs ys
             | otherwise -> False
