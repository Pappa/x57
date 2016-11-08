import Text.Printf

getAnswer :: String -> IO String
getAnswer question = do
    putStrLn question
    answer <- getLine
    return answer

getAnswers :: [String] -> [String] -> IO [String]
getAnswers [] ys = return ys
getAnswers (x:xs) ys = do
    answer <- getAnswer x
    let answers = ys ++ [answer]
    getAnswers xs answers

main = do
    let questions = ["Enter a noun:", "Enter a verb:", "Enter an adjective:", "Enter an adverb:"]
    let madlib = "Your %s is %s up a %s mountain %s."
    answers <- getAnswers questions []
    printf madlib (answers!!0) (answers!!1) (answers!!2) (answers!!3)
    putStrLn ""