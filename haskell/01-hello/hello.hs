main = do  
    putStrLn "What is your name?"  
    name <- getLine
    putStrLn ("Hey " ++ name ++ ", you're a banana.")  