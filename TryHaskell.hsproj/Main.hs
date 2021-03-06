module Main where

import Data.List
import Data.Char

strcmp s1 s2 = case (s1, s2) of
  ([], []) -> True
  (s1:ss1, s2:ss2) 
    | toUpper s1 == toUpper s2 ->
      strcmp ss1 ss2
    | otherwise -> False
  _ -> False