pNext' max x = pNext 1 max x
pNext curr max x =
	if curr /= max then
	do
		print x
		pNext (curr + 1) max (x + (3 * curr))
	else
		return ()

main = pNext' 8 1