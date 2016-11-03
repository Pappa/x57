prompts = ["Enter a noun: ", "Enter a verb: ", "Enter a adjective: ", "Enter a adverb: "]

promptUser prompts = do
    putStrLn (head prompts)
    line <- getLine
    promptUser (tail prompts)

main :: IO ()
main = promptUser prompts