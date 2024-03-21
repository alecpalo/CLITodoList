import Control.Monad (unless)

prompt :: IO ()
prompt = do
  i <- getLine
  unless(i == "q") $ do
    putStrLn("you entered " ++ i ++ ".")
    prompt

main :: IO ()
main = do
  putStrLn "Welcome to your task list! \nWhat would you like to do today?"
  putStrLn "press q to quit!"
  prompt
