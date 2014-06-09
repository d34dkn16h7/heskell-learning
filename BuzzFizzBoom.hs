module Main where

data FB x = Int x | Fizz | Buzz | FizzBuzz deriving (Show)

main = print [ fizzBuzz x | x <- [1 .. 100]]

fizzBuzz :: Int -> FB Int
fizzBuzz x | (mod x 5 == 0) && (mod x 3 == 0) = FizzBuzz
	       | mod x 5 == 0 = Buzz
	       | mod x 3 == 0 = Fizz
		   | otherwise = Int x