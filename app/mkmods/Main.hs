{-# LANGUAGE GHC2024 #-}
{-# LANGUAGE OverloadedStrings #-}
module Main ( main ) where

import System.Environment
import System.Process
import Text.Printf

main :: IO ()
main = do
    { args <- getArgs
    ; case args of
        s:t:modu:_ -> mapM_ callCommand [ "modu " ++ modu ++ printf "%02d" i | i <- [read @Int s .. read t]]
        _          -> usage
    }

usage :: IO ()
usage = putStrLn "usage: mkmods <from> <to> <module>"
