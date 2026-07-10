-- # Exercise.HandlingErrors.Ex0407
-- ## 練習問題 4.7
-- `Either e`に対する`traverse :: (a -> [b]) -> Either e a -> [Either e b]`および
-- `sequence :: Either e [a] -> [Either e a]

{-# LANGUAGE GHC2024 #-}
module Exercise.HandlingErrors.Ex0407
    (
    ) where
--
-- | _traverse、_sequence
-- `Either e`は`Traversable`型構成子クラスの具体例なので、
-- `traverse :: Applicative f => (a -> f b) -> Either e a -> f (Either e b)`が定義済である。
-- 
-- ここでは、題意にそって、_traverse、_sequenceを定義する。
-- 
_traverse :: (a -> [b]) -> Either e a -> [Either e b]
_traverse f ea = case ea of
    Left e  -> undefined
    Right x -> undefined

_sequence :: Either e [a] -> [Either e a]
_sequence = undefined
