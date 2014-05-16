import System.IO
import Data.Maybe

data TestData = TestData { _data :: Int } deriving (Show)

main = do
	fl <- readFile "testFile.txt"
	return ()

test x = printT x
printT test i = print i

-- retD Nothing -> 12
-- retD $ Just 42 -> 42
retD :: Maybe Int -> Int
retD a = case a of
	Nothing -> 12
	Just a -> a

curr = \x -> \y -> x + y

dox :: Num a => a -> a
doy :: Num a => a -> a

dox x = x + 1
doy y = y * 2

fBind b = (dox . doy) b