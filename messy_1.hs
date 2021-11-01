messyMain :: IO ()
messyMain =  do
	print "What is your name"
	recepient <- getLine
	print "Name of Book"
	title <- getLine
	print "Who is author"
	author <- getLine
	print ("Dear" ++ recepient ++ ",\n" ++
	 "You selected book " ++ title ++ "\nAuthor " ++ author )
