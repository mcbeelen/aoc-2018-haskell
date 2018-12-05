module Main where

import Aoc (oracle)
import Data.List


main :: IO ()
main = putStrLn (concat (intersperse " " ["Hello,", (oracle ""), "!"]))
