-- # Exercise.GettingStarted.Ex0201
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE LexicalNegation #-}
{-# LANGUAGE NPlusKPatterns #-}
{-# LANGUAGE OverloadedStrings #-}
module Exercise.GettingStarted.Ex0201
    ( fib
    , fib'
    ) where
{- $setup
>>> :set -XOverloadedStrings
-}
{- | n番目のフィボナッチ数
末尾再帰版 O(n)
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
-}
fib :: Int -> Integer
fib = iter 0 1
    where
        iter !a b = \ case
            0   -> a
            n+1 -> iter b (a + b) n
            _   -> error "fib: negative"
{- | n 番目のフィボナッチ数
末尾再帰版 O(log n)
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
