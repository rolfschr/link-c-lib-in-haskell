module Main where

import LibAb

main :: IO ()
main = do
  putStrLn "Please enter a number:"
  d <- fmap (read::String->Double) getLine
  a <- liba_func d
  putStrLn $ "The answer is: " ++ show a
