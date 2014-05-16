main = do
	print $ calc  12

calc n = [ gen x 1 | x <- [0 .. n]]
	where
			gen 0 val = val
			gen x val = gen (x-1) val + x * 3