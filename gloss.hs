import Graphics.Gloss

main = display (InWindow "Hello World"	(400, 150) (10, 10))
	   white
	   picture

picture	= Translate (-170) (-20)
		  $ Scale 0.5 0.5
		  $ Text "Hello World"