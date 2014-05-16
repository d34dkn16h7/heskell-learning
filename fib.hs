fib' x y max = fib 1 max x y
fib curr max x y =
	if curr /= max then
	do
		print x
		fib (curr + 1) max y (x + y)
	else
		return ()

main = fib' 0 1 12