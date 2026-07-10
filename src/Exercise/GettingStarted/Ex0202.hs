-- # Exercise.GettingStarted.Ex0202
-- ## 練習問題 2.2
-- リストが、与えられた比較関数にしたがってソートしたものであることをチェックする`isSorted`関数を実装せよ。
--
{-# LANGUAGE GHC2024 #-}
module Exercise.GettingStarted.Ex0202
    ( isSorted
    , isSorted'
    , isSortedBy
    , isSortedBySpec
    ) where
import Data.List ( sortBy )
--
-- | isSorted
-- 仕様にしたがって実装したもの
--
-- >>> isSorted (>) [1,2,3::Int]
-- True
-- >>> isSorted (>) "aba"
-- False
-- >>> isSorted (<) [3,2,1::Int]
-- True
-- >>> isSorted (<) [1,2,3::Int]
-- False
-- >>> isSorted (>) []
-- True
-- >>> isSorted (>) [1,3,3::Int]
-- True
--
isSorted :: (a -> a -> Bool) -> [a] -> Bool
isSorted gt xs = undefined
--
-- 与えられる比較関数`gt`は、ソートするときに要素の順番を入れ換える条件とみなせる。したがって、ソート済みのものであればこの条件は解消されているはず。
-- `zipWith (⊕) <*> drop 1`はリストのある要素とすぐ右にある要素を二項演算子`⊕`で結合したリスト。すなわち、$[x_0,x_1,\dots,x_{n-1},x_n]$を与えられたとき$[x_0 ⊕ x_1,\cdots,x_{n-1} ⊕ x_n]$を計算するイディオム。
--
-- | isSorted'
-- 仕様がすこし判りにくいので、整列したリストの隣接要素間で満すべき条件を指定する版も作成した。
--
-- >>> isSorted' (<=) [1,2,3::Int]
-- True
-- >>> isSorted' (<=) "aba"
-- False
-- >>> isSorted' (>=) [3,2,1::Int]
-- True
-- >>> isSorted' (>=) [1,2,3::Int]
-- False
-- >>> isSorted' (<=) []
-- True
-- >>> isSorted' (<=) [1,3,3::Int]
-- True
--
isSorted' :: (a -> a -> Bool) -> [a] -> Bool
isSorted' cmp xs = undefined
--
-- | isSortedBy
-- Haskellの`Data.List.sortBy :: (a -> a -> Ordering) -> [a] -> [a]`では比較関数は`a -> a -> Ordering`である。
-- `isSortedBy`は、この`sortedBy`と対応する
--
-- >>> isSortedBy compare [1,2,3::Int]
-- True
-- >>> isSortedBy compare "aba"
-- False
-- >>> isSortedBy (flip compare) [3,2,1::Int]
-- True
-- >>> isSortedBy (flip compare) [1,2,3::Int]
-- False
-- >>> isSortedBy compare []
-- True
-- >>> isSortedBy compare [1,3,3::Int]
-- True
isSortedBy :: (a -> a -> Ordering) -> [a] -> Bool
isSortedBy cmp xs = undefined
--
-- | isSortedBySpec
-- ソートは羃等性をもつので、リストの要素が`Eq`型クラスの具体例であれば、仕様としては、指定されたリストとそれをソートしたものとを比較すればよい。
--
-- >>> isSortedBySpec compare [1,2,3::Int]
-- True
-- >>> isSortedBySpec compare "aba"
-- False
-- >>> isSortedBySpec (flip compare) [3,2,1::Int]
-- True
-- >>> isSortedBySpec (flip compare) [1,2,3::Int]
-- False
-- >>> isSortedBySpec compare []
-- True
-- >>> isSortedBySpec compare [1,3,3::Int]
-- True
--
isSortedBySpec :: Eq a => (a -> a -> Ordering) -> [a] -> Bool
isSortedBySpec cmp xs = xs == sortBy cmp xs
