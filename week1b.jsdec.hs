main = print $ charRemap "dllkhGlgME" ['a' .. 'm'] ['z','y' .. 'n']

charRemap :: [Char] -> [Char] -> [Char] -> [Char]
charRemap [] _ _ = []
charRemap (w:word) mapFrom mapTo =
	if snd state
		then mapTo !! fst state : charRemap word mapFrom mapTo
		else w : charRemap word mapFrom mapTo
	where
		state = hasChar w mapFrom 0

hasChar :: Char -> [Char] -> Int -> (Int,Bool)
hasChar _ [] _ = (0,False)
hasChar c (x:xs) i | c == x = (i,True)
				   | otherwise = hasChar c xs (i+1)