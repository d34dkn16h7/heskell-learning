import Data.IORef

main = do
	r <- newIORef (0 :: Int)
	p r
	writeIORef r 24
	p r

refer r = r

p r = print <<= readIORef r >>= 