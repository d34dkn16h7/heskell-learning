f[]=[]
f(x:xs)=x: [y | y <- f xs, x/=y]