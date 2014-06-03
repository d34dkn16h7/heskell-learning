module Main where

import qualified System.IO as IO

main = do
	htmlFile <- getFile "Enter a HTML File -> "
	IO.print $ rm htmlFile 's'

rm xs tRm = [x | x <- xs, x /= tRm ] 

split' str brk = split str brk []  []

split :: [Char] -> Char -> [Char] -> [[Char]] -> [[Char]]
split [] splitter word list = list ++ [word]
split (x:xs) splitter word list | x == splitter = split xs splitter "" (list ++ [word])
								 | otherwise    = split xs splitter (word ++ [x]) list


-- ["this is a string"]
split'f :: [[Char]] -> Char -> [[Char]]
split'f [] splitter = []
split'f (x:xs) splitter = split' x splitter ++ split'f xs splitter

getFile :: String -> IO String
getFile ask = do
	putStr ask
	fileName <- IO.getLine
	content <- IO.readFile fileName
	return content