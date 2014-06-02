module Main where

main = print' [1 .. 100]

print' [] = return ()
print' (x:xs) | mod x 5 == 0 && mod x 3 == 0 = do
												print "FizzBuzz"
												print' xs
			  | mod x 5 == 0 = do
												print "Buzz"
												print' xs
			  | mod x 3 == 0 = do
												print "Fizz"
												print' xs
			  | otherwise = do
												print x
												print' xs
