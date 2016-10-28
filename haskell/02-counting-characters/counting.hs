main = do  
    putStrLn "Please enter a string..."  
    name <- getLine
    putStrLn (outputString name)  

    
stringLengthString str = show (length str)

outputString str
    | length str > 0 = str ++ " has " ++ stringLengthString str ++ " characters."
    | otherwise      = "You forgot the string entering bit."