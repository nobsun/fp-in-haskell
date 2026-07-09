-- # doctests.hs
{-# LANGUAGE GHC2024 #-}
module Main ( main ) where

import Text.Printf ( printf )
import Test.DocTest ( doctest )

main :: IO ()
main = doctest
     $ map ("src/Answer/" <>) 
     $ concat
     [ [ printf "GettingStarted/Ex02%02d.hs" i | i <- [1 .. 5 :: Int] ]
     , [ printf "DataStructures/Ex03%02d.hs" i | i <- [1 .. 28 :: Int] ]
     , [ printf "HandlingErrors/Ex04%02d.hs" i | i <- [1 .. 7 :: Int] ]
     , [ printf "Laziness/Ex05%02d.hs"       i | i <- [1 .. 16 :: Int] ]
     ]
