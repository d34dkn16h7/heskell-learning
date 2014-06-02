module Main where

main = p [1 .. 100]

p [] = return ()
p (x:xs) = do 
	print' x
	p xs

print' x | mod x 5 == 0 && mod x 3 == 0 = do print "FizzBuzz"
         | mod x 5 == 0 = do print "Buzz"
         | mod x 3 == 0 = do print "Fizz"
		 | otherwise = do print x
