data Mtext = Mtext {x :: Double , y :: Double} deriving (Show)

main = input tt

input t = input t

mody :: Mtext -> Mtext
mody f = f { y = y f * 2 , x = x f + 1 }

tt = Mtext 0 0