import Text.Printf

promptAndReturnInput :: String -> IO String
promptAndReturnInput prompt = putStrLn prompt >> getLine

getResponses :: [String] -> IO [String]
getResponses = mapM promptAndReturnInput

makeOutputLine :: String -> String -> String -> String -> String
makeOutputLine n1 n2 o n3 = 
    printf "%s %s %s = %s" n1 n2 o n3

makeOutput :: [String] -> [Float]
makeOutput answers = 
    let n1 = read (answers!!0)
        n2 = read (answers!!1)
        operators = ["+", "-", "*", "/"]
        outputLine = "%s %s %s = %s"
        output :: [String]
        output = []

    --print (makeOutputLine n1 n2 "+" (show ((read n1::Int) + (read n2::Int)))

    in [n1 + n2, n1 - n2, n1 * n2, n1 / n2]



main = do
    let nums = ["first", "second"]
        question = "What is the %s number?"
        questions :: [String]
        questions = map (printf question) nums
    answers <- getResponses questions
    let output = makeOutput answers
    print output