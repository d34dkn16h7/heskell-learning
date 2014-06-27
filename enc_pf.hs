import qualified Data.ByteString as B

main = ask "File : " >>=
	   \fName -> B.readFile fName >>=
	   \f -> B.writeFile ("out." ++ fName) (B.reverse f)

ask :: String -> IO String
ask ask = putStrLn ask >> getLine >>= return