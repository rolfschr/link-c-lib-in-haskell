module Main where

import LibAb

main :: IO ()
main = do
  putStrLn "Please enter a number:"
  d <- fmap (read::String->Double) getLine
  putStrLn $ "The answer is: " ++ show (liba_func d)
