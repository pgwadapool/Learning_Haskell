-- first main

toPart recepient = "Dear " ++ recepient ++ ",\n"
bodyPart bookTitle = "You selected book " ++ bookTitle ++ "\n"
fromPart author = ", \n" ++ author

createRes recepient bookTitle author = toPart recepient ++ 
                               bodyPart bookTitle ++ 
                               fromPart author

main = do
    print "What is your name "
    recepient <- getLine
    print "Name of book "
    title <- getLine
    print " Name of Author" 
    author <- getLine
    print (createRes recepient title author)
 
