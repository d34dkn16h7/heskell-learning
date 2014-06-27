import qualified Data.ByteString as B

main = getLine >>=
		 \fName -> B.readFile fName >>=
		 \f -> B.writeFile ("out." ++ fName) (B.reverse f)

domain = do
	fileName <- getLine
	file <- B.readFile fileName
	B.writeFile ("out." ++ fileName) $ B.reverse file
