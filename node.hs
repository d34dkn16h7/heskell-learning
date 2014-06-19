nodeMin = 0
nodeMax = 15

main = do
	val <- getLine
	print (addNd (read val))
	main

addNd :: Int -> Int
addNd x | x > (nodeMax - 1) = addNd (x - nodeMax)
		| x < nodeMin = addNd (x + nodeMax)
		| otherwise = x