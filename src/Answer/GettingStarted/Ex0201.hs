-- # Answer.GettingStarted.Ex0201
{-# LANGUAGE GHC2024 #-}
{-# LANGUAGE NPlusKPatterns #-}
{- | 練習問題 2.1
    \(n\)番目のFibonacci数を計算する関数をもとめよ。
-}
module Answer.GettingStarted.Ex0201
    ( fib
    , fib'
    ) where

{- |
\(n\)番目のFibonacci数を反復プロセス（いわゆる末尾再帰）で計算する。
算術演算の時間計算量\(O(1)\)なら、@fib@の計算量は\(O(n)\)である。
Fibonacci数の桁数は\(O(n)\)なので、あっというまに@Int@の範囲を超えてしまう。
そこで、任意長整数型@Integer@を使って@fib :: Int -> Integer@とする。
ただし、@Integer@上の算術演算の計算量は桁数に比例する（と思われる）ので、
ここで実装した@fib@の計算量は\(O(n^2)\)である。

==== _Example_

>>> fib 0
0
>>> fib 1
1
>>> fib 2
1
>>> fib 5
5
>>> fib 10
55
>>> fib 100
354224848179261915075
>>> fib 1000
43466557686937456435688527675040625802564660517371780402481729089536555417949051890403879840079255169295922593080322634775209689623239873322471161642996440906533187938298969649928516003704476137795166849228875
>>> fib 1000000 == fib 1000000
True

結果の桁数が大きくなると表示時間が計算時間の大半を占めることになる。
上の最後の例は計算時間を感じるためのものである。

ghciのREPLで以下のように設定すると計算時間と使用メモリが表示されるようになる

@
ghci> :set +s
@

筆者の計算機では以下のようになる

@
ghci> :set +s
ghci> fib 1000000 == fib 1000000
True
(5.38 secs, 88,052,416,728 bytes)
ghci> fib 10000000 == fib 10000000
True
(595.55 secs, 8,690,845,790,912 bytes)
@

-}
fib :: Int -> Integer
fib = iter 0 1
    where
        iter !a b = \ case
            0   -> a
            n+1 -> iter b (a + b) n
            _   -> error "fib: negative"
{- | \(n\)番目のFibonacci数
逐次平方法とよばれるべき乗計算の手法をFibonacci数の計算に応用したもの
算術演算が\(O(1)\)であれば\(O(\log n)\)の計算量になる。
こちらも、@Integer@を使うので\(O(n \log n)\)になりそうです。
>>> fib' 0
0
>>> fib' 1
1
>>> fib' 2
1
>>> fib' 10
55
>>> fib' 100
354224848179261915075
>>> fib' 1000
43466557686937456435688527675040625802564660517371780402481729089536555417949051890403879840079255169295922593080322634775209689623239873322471161642996440906533187938298969649928516003704476137795166849228875
>>> fib' 1000000 == fib' 1000000
True

@
ghci> (^!) :: Int -> Int -> Int; (^!) = (^)
ghci> :s +s
ghci> fib' (10^!6) == fib' (10^!6)
True
(0.02 secs, 2,476,720 bytes)
ghci> fib' (10^!7) == fib' (10^!7)
True
(0.13 secs, 22,513,632 bytes)
ghci> fib' (10^!8) == fib' (10^!8)
True
(2.13 secs, 239,296,552 bytes)
ghci> fib' (10^!9) == fib' (10^!9)
True
(28.72 secs, 2,322,482,536 bytes)
ghci> fib' (10^!10) == fib' (10^!10)
True
(312.68 secs, 22,251,091,544 bytes)
@

-}
fib' :: Int -> Integer
fib' = iter 0 1 1 1
    where
        iter !a b p q m = case m of
            0               -> a
            n+1
                | even m    -> iter a b (p * p + q * q) ((p + p - q) * q) (m `div` 2)
                | otherwise -> iter (p * a + q * b) (q * a + (p - q) * b) p q n
            _               -> error "fib': negative"
