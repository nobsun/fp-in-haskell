-- # Exercise.DataStructures.Ex0313
-- ##  練習問題 3.13
-- `foldr`を`foldl`を用いて書け。また、その逆、`foldl`を`foldr`を用いて書け。
-- 
{-# LANGUAGE GHC2024 #-}
module Exercise.DataStructures.Ex0313
    (
    ) where
-- Haskellでの計算は、基本的にはLazy評価戦略を用いる。これにより、末尾再帰形の`foldl`であっても、リスト走査中は蓄積パラメータはサンクになっており、ステップごとにスタックに積まれることになる。通常はステップごとに、蓄積パラメータをWHNFまでの評価を強要する`foldl'`を使う。これにより、蓄積パラメータがスタックを消費するのを避けられる。

{- $setup
>>> (^!) :: Int -> Int -> Int; (^!) = (^)
-}
-- | _foldr
-- `foldl'`で関数合成をつかって`b -> b`型の関数を構成し、それをシードに適用する。しかし、蓄積パラメータはWHNFであってもクロージャであるので、関数合成されたコンポーネントはすべてそのまま残る。これをシードに適用するときに、スタックが消費されることになるために、`foldl'`で書き換えてもスタックの消費は低減されない。さらに、本来`foldr`がもっていたショートカットの可能性がなくなってしまう。したがって、実用上はデメリットだけ残る。
-- >>> _foldr (:) "" "abc" == "abc"
-- True
-- 
-- ghci> foldr (+) 0 [0 .. 10^!7]
-- 50000005000000
-- (0.74 secs, 1,532,726,656 bytes)
-- ghci> foldr (+) 0 [0 .. 10^!8]
-- *** Exception: stack overflow
-- ghci>
-- ghci> foldr (+) 0 [0 .. 10^!7]
-- 50000005000000
-- (0.57 secs, 1,532,726,632 bytes)
-- ghci> foldr (+) 0 [0 .. 10^!8]
-- *** Exception: stack overflow
-- ghci> _foldr (+) 0 [0 .. 10^!7]
-- 50000005000000
-- (3.63 secs, 2,736,822,832 bytes)
-- ghci> _foldr (+) 0 [0 .. 10^!8]
-- *** Exception: stack overflow
-- ghci> let (^!) :: Int -> Int -> Int; (^!) = (^)
-- ghci> let (*?) :: Int -> Int -> Int; 0 *? _ = 0; x *? y = x * y
-- ghci> :set +s
-- ghci> foldr (*?) 1 [0 .. 10^!7]
-- 0
-- (0.00 secs, 417,880 bytes)
-- ghci> _foldr (*?) 1 [0 .. 10^!7]
-- 0
-- (2.92 secs, 1,920,418,088 bytes)
--
_foldr :: (a -> b -> b) -> b -> [a] -> b
_foldr phi z xs = foldl' psi id xs z where
    psi f x = undefined
--
-- | _foldl
--
-- こちらも合成関数を構成してシードに適用するのであるが、`foldr`を使って実装しているにもかかわらず、ショートカットは効かず、スタックの消費も大きく、巨大なリストに対してスタックオーバーフローを起こす。
-- こちらもメリットはない。
-- 
-- >>> _foldl (flip (:)) "" "abc" == foldl' (flip (:)) "" "abc"
-- True
-- 
-- ghci> _foldl (*?) 1 [0 .. 10^!8]
-- *** Exception: stack overflow
-- ghci> foldl' (*?) 1 [0 .. 10^!8]
-- 0
-- (5.69 secs, 8,800,418,000 bytes)
--
_foldl :: (b -> a -> b) -> b -> [a] -> b
_foldl psi z xs = foldr phi id xs z where
    phi x f = undefined