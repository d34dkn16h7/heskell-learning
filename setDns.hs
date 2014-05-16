import System.IO

main = do
	dnsProv <- getLine
	let nums = (getServer dnsProv)
	writeFile "/etc/resolve.conf" (gWLine nums) -- /etc/resolve.conf
	return ()

gWLine (v1,v2) = nm ++ v1 ++ ['\n'] ++ nm ++ v2

nm = "nameserver "

getServer :: String -> (String,String)
getServer "comodo"  = ("8.26.56.26","8.20.247.20")
getServer "opendns" = ("208.67.222.222","208.67.220.220")
getServer _         = ("8.8.8.8","8.8.4.4")