-- # Exercise.Laziness.Ex0514
-- ## 練習問題 5.14
-- 指定したリストがもうひとつのリストの接頭辞になっているかを判定する
-- `isPrefixOf :: Eq a => [a] -> [a] -> Bool`を実装せよ。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.Laziness.Ex0514
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
_isPrefixOf = undefined
