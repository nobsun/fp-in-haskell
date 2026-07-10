-- # Exercise.HandlingErrors.Ex0405
-- ## 練習問題 4.5
-- `traverse :: (a -> Maybe b) -> [a] -> Maybe [b]`を実装せよ。
-- 
{-# LANGUAGE GHC2024 #-}
module Exercise.HandlingErrors.Ex0405
    (
    ) where
-- 
-- | _traverse
-- `traverse`は`Traversable`型構成子クラスのメソッドである。
-- `t`を`Traversable`の具体例とすると、
-- `traverse :: Applicative f => (a -> f b) -> t a -> f (t b)`である。
-- リストは`Traversable`の具体例、`Maybe`は`Applicative`の具体例なので、
-- ```
-- _traverse :: (a -> Maybe b) -> [a] -> Maybe [a]
-- _traverse = traverse
-- ```
-- であるが、ここでは、題意に沿って実装する。
--
-- >>> _traverse Just [1,2,3,4]
-- Just [1,2,3,4]
-- >>> _traverse (const Nothing) [1,2,3,4]
-- Nothing
--
_traverse :: (a -> Maybe b) -> [a] -> Maybe [b]
_traverse f = foldr phi (Just [])
    where
        phi x my = undefined
