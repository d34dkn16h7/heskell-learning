main = print $ fmap fac [1..10]

fac 1 = 1
fac x = x * fac (x-1)