main = print $ rDup "removed duplicates _with spaces!!"

rDup :: Eq a => [a] -> [a]
rDup [] = []
rDup (x:xs) = x : [y | y <- rDup xs, x /= y]