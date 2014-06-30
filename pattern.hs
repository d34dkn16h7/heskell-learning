isFirstLetterF :: [Char] -> Bool
isFirstLetterF [] = False
isFirstLetterF ('F':xs) = True
isFirstLetterF ('f':xs) = True
isFirstLetterF xs = False

hasChar :: Char -> [Char] -> Bool
hasChar c [] = False
hasChar c (x:xs) | c == x = True
				 | otherwise = hasChar c xs