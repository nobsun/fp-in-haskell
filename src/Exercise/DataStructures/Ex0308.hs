-- # Exercise.DataStructures.Ex0308
-- ##  練習問題 3.8
-- `foldr (:) []`をリストに適用するとどうなるか
--
{-# LANGUAGE GHC2024 #-}
module Exercise.DataStructures.Ex0308
    ( 
    ) where
--
-- `foldr (:) []`
--  = { `id`は`.`の単位元 } 
-- `foldr ((:) . id) []
--  = { `map`の定義（`map f = foldr ((:) . f）[]`}
-- `map id`
--  = { リストの関手則 }
-- `id`
--
-- >>> xs = "foldr (:) [] = id :: [a] -> [a]" :: String
-- >>> xs
-- "foldr (:) [] = id :: [a] -> [a]"
-- >>> xs == foldr (:) [] xs
-- True
-- >>> ys = [1 .. 5]
-- >>> ys
-- [1,2,3,4,5]
-- >>> ys == foldr (:) [] ys
-- True
