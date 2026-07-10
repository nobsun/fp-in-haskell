-- # Exercise.Laziness.Ex0501
-- ## 用語について
-- ### 簡約戦略
-- 関数プログラミングにおいて、計算は式の簡約として行われる。
-- 
-- Haskellの簡約戦略は、Lazy戦略といわれるが、これには2つの側面がある。
--
-- - 遅延性：関数適用の際に束縛された変数は必要になるまで簡約されない
--     - 遅延性は、非正格（non-strict）関数を扱う要請から採用されている
-- - Laziness：１つの束縛変数は簡約されるとその簡約結果を保持するので高々１度しか簡約されない
--     - Lazinessは冗長な簡約重複を回避する要請から採用されている。
-- 
-- Haskell以外の多くの関数プログラミング用言語での簡約戦略はEager戦略といい、
--
-- - 関数適用の簡約を行う前に束縛変数の簡約を行う。
-- 
-- ### 非正格関数
-- この資料では、正格（strict）、非正格（non-strict）という用語は、関数の性質にのみ使う。
--
-- - 正格関数とは、⊥に適用すると、⊥になる関数のことであり、
-- - 非正格関数とは、⊥に適用しても、⊥にならない関数のことである。
--
-- ## 練習問題 5.1
-- 遅延リストを普通のリストに変更する関数を書け。

{-# LANGUAGE GHC2024 #-}
module Exercise.Laziness.Ex0501
    (
    ) where
import GHC.List ( foldr' )
-- |
-- Haskellでは、対象が簡約済みかどうかにかかわらず同じに扱う。
-- 型の区別はなく、プログラム上で対象が簡約済かどうかを確認する関数は定義できない。
-- すべての要素がWHNFまで簡約済であるようなリストを構成することはできる。
-- 確認は ghci で :sprint コマンドで行える。
--
{-
stack exec -- ghci src/Answer/Laziness/Ex0501.hs
GHCi, version 9.10.3: https://www.haskell.org/ghc/  :? for help
[1 of 1] Compiling Answer.Laziness.Ex0501 ( src/Answer/Laziness/Ex0501.hs, interpreted )
Ok, one module loaded.
ghci> :sprint _as
_as = _
ghci> _null _as
"not empty"
ghci> :sprint _as
_as = _ : _
ghci> a3 = _as !! 3
ghci> :sprint a3
a3 = _
ghci> a3
4
ghci> :sprint _as
_as = _ : _ : _ : 4 : _
ghci> length _as
7
ghci> :sprint _as
_as = [_,_,_,4,_,_,_]
ghci> sum _as
28
ghci> :sprint _as
_as = [1,2,3,4,5,6,7]
ghci> :sprint _bs
_bs = _
ghci> _null _bs
"not empty"
ghci> :sprint _bs
_bs = [_,_,_,_,_,_,_]
ghci> b3 = _bs !! 3
ghci> :sprint b3
b3 = _
ghci> b3
4
ghci> :sprint _bs
_bs = [_,_,_,4,_,_,_]
ghci> length _bs
7
ghci> :sprint _bs
_bs = [_,_,_,4,_,_,_]
ghci> sum _bs
28
ghci> :sprint _bs
_bs = [1,2,3,4,5,6,7]
ghci> :sprint _cs
_cs = _
ghci> _null _cs
"not empty"
ghci> :sprint _cs
_cs = [1,2,3,4,5,6,7]
ghci> c3 = _cs !! 3
ghci> :sprint c3
c3 = _
ghci> c3
4
ghci> :sprint _cs
_cs = [1,2,3,4,5,6,7]
ghci> length _cs
7
ghci> :sprint _cs
_cs = [1,2,3,4,5,6,7]
ghci> sum _cs
28
ghci> :sprint _cs
_cs = [1,2,3,4,5,6,7]
ghci> :sprint _ds
_ds = _
ghci> _null _ds
"not empty"
ghci> :sprint _ds
_ds = _
ghci> d3 = _ds !! 3
ghci> :sprint d3
d3 = _
ghci> d3
4
ghci> :sprint _ds
_ds = _
ghci> length _ds
7
ghci> :sprint _ds
_ds = _
ghci> sum _ds
28
ghci> :sprint _ds
_ds = _
-}
--
_cons :: a -> [a] -> [a]
_cons !x !xs = x : xs

_null :: [a] -> String
_null xs = if null xs then "empty" else "not empty"

_as :: [Int]
_as = foldr ((:) . (1 +)) [] [0..6]

_bs :: [Int]
_bs = foldr' ((:) . (1 +)) [] [0..6]

_cs :: [Int]
_cs = foldr (_cons . (1 +)) [] [0..6]

_ds :: Integral a => [a]
_ds = foldr (_cons . (1 +)) [] [0..6]
