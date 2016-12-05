import Text.Printf

getAnswer :: String -> IO String
getAnswer question = do
    putStrLn question
    answer <- getLine
    return answer

getAnswers :: [String] -> String -> [String] -> IO [String]
getAnswers [] q ys = return ys
getAnswers (x:xs) q ys = do
    answer <- getAnswer (printf q x)
    let answers = ys ++ [answer]
    getAnswers xs q answers

makeOutput :: String -> String -> [Float]
makeOutput x y = 
    let n1 = read x
        n2 = read y
    in [n1 + n2, n1 - n2, n1 * n2, n1 / n2]



main = do
    let nums = ["first", "second"]
    let question = "What is the %s number?"
    answers <- getAnswers nums question []
    let output = makeOutput (answers!!0) (answers!!1)
    print output