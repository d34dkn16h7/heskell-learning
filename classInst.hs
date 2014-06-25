class MyClass a where
	is :: a -> Bool

-- Support for int
instance MyClass Int where
	is t = True

-- Support for int list based on first instance
instance MyClass a => MyClass [a] where
	is t = True

main = p (12 :: Int)

p :: MyClass mc => mc -> IO ()
p x = print $ is x