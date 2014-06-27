import qualified Data.ByteString as B

main = do
	fileName <- ask "File : "
	file <- B.readFile fileName
	B.writeFile ("out." ++ fileName) $ B.reverse file

ask :: String -> IO String
ask ask = putStrLn ask >> getLine >>= return