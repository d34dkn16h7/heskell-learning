module Main where

import qualified System.IO.UTF8 as IO

main = do
	htmlFile <- getFile "Enter a HTML File -> "
	IO.print $ rm htmlFile 's'

rm xs tRm = [x | x <- xs, x /= tRm ] 

mkk' str brk = mkk str brk []  []

mkk :: [Char] -> Char -> [Char] -> [[Char]] -> [[Char]]
mkk [] br word list = list ++ [word]
mkk (x:xs) br word list = if x == br
					 then
					 	mkk xs br "" (list ++ [word])
					 else
					 	mkk xs br (word ++ [x]) list

getFile :: String -> IO String
getFile ask = do
	putStr ask
	fileName <- IO.getLine
	content <- IO.readFile fileName
	return content