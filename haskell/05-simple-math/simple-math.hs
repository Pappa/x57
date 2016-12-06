import Text.Printf

promptAndReturnInput :: String -> IO String
promptAndReturnInput prompt = putStrLn prompt >> getLine

getResponses :: [String] -> [String] -> IO [String]
getResponses [] ys = return ys
getResponses (x:xs) ys = do
    answer <- promptAndReturnInput x
    let answers = ys ++ [answer]
    getResponses xs answers

makeOutput :: String -> String -> [Float]
makeOutput x y = 
    let n1 = read x
        n2 = read y
    in [n1 + n2, n1 - n2, n1 * n2, n1 / n2]



main = do
    let nums = ["first", "second"]
        question = "What is the %s number?"
        questions :: [String]
        questions = map (printf question) nums
    answers <- getResponses questions []
    let output = makeOutput (answers!!0) (answers!!1)
    print output