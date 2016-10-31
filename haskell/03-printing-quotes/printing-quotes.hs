main = do  
    let quoteQuestion = "What is your favourite quote?"
    let authorQuestion = "Who said it?"

    putStrLn quoteQuestion

    quote <- getLine

    putStrLn authorQuestion

    author <- getLine

    putStrLn (makeOutputString quote author)


makeOutputString quote author
    | (length author > 0 && length quote > 0) = author ++ " said, \"" ++ quote ++ "\""
    | length author == 0 = "You forgot the author."
    | otherwise = "You forgot the quote."
