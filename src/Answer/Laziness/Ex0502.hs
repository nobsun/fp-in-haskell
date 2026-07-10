-- # Answer.Laziness.Ex0502
-- ## 練習問題 5.2
-- 指定されたリストの先頭から指定された個数分の要素からなるリストを構成する関数
-- `take :: Int -> [a] -> [a]` 
-- および、指定されたリストの先頭から指定された個数分以外の要素からなるリストを構成する関数
-- `drop :: Int -> [a] -> [a]`
-- を書け。
--
{-# LANGUAGE GHC2024 #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
module Answer.Laziness.Ex0502
    (
    ) where
-- $setup
-- >>> :set -XLexicalNegation
-- >>> :set -XNPlusKPatterns
--
-- | `take`、`drop`は標準プレリュード関数
-- >>> _take 0 [1 ..]
-- []
-- >>> _take 3 [1 ..]
-- [1,2,3]
-- >>> _take -1 [1 ..]
-- []
-- >>> _take 5 (_take 3 [1 ..])
-- [1,2,3]
-- >>> _take 3 (_take 0 [1 ..])
-- []
--
_take :: Int -> [a] -> [a]
_take = \ case
    n+1 -> \ case
        x:xs -> x : _take n xs
        _    -> []
    _   -> const []
--
-- |
-- >>> _drop 0 [1,2,3]
-- [1,2,3]
-- >>> _drop 1 [1,2,3]
-- [2,3]
-- >>> _drop -2 [1,2,3]
-- [1,2,3]
-- >>> _drop 5 [1,2,3]
-- []
--
_drop :: Int -> [a] -> [a]
_drop = \ case
    n+1 -> \ case
        _:xs -> _drop n xs
        _    -> []
    _   -> id
