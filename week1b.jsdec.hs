main = print $ charRemap "dllkhGlgME" ['a' .. 'm'] ['z','y' .. 'n']

charRemap :: [Char] -> [Char] -> [Char] -> [Char]
charRemap [] _ _ = []
charRemap (w:word) mapFrom mapTo = if hasChar w mapFrom
							   	   then (mapTo !! (charIndex w mapFrom 0)) : charRemap word mapFrom mapTo
							       else w : charRemap word mapFrom mapTo

hasChar :: Char -> [Char] -> Bool
hasChar _ [] = False
hasChar c (x:xs) | c == x = True
				 | otherwise = hasChar c xs

charIndex :: Char -> [Char] -> Int -> Int
charIndex _ [] _ = -1
charIndex c (x:xs) ind | c == x = ind
				   	   | otherwise = charIndex c xs (ind+1)