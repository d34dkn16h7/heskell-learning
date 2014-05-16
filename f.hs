import qualified System.IO as IO
import qualified Data.Char as Char

main = do
	putStr "(r)ead or (w)rite -> "
	rOrW <- getLine
	doStuff rOrW
	return ()

doStuff v 	| "w" == v = do
						readed <- getFile "Source File -> "
						putStr "File Name -> "
						outFile <- getLine
						IO.writeFile outFile readed
						return ()
		  	| "r" == v = do
		  				readed <- getFile "Enter File 1 ->"
		  				readed2 <- getFile "Enter File 2 ->"
		  				print $ toAscii (blend readed readed2)
		  				return ()

getFile :: String -> IO String
getFile ask = do
	putStr ask
	fileName <- IO.getLine
	content <- IO.readFile fileName
	return content

toAscii:: [Char] -> [Int]
toAscii [] = []
toAscii xs = [ Char.ord x | x <- xs ]

blend :: [Char] -> [Char] -> [Char]
blend [] [] = []
blend (x:xs) [] = [x] ++ [' '] ++ blend xs []
blend  [] (y:ys) = [' '] ++ [y] ++ blend [] ys
blend (x:xs) (y:ys) = [x] ++ [y] ++ blend xs ys