import Control.Monad (unless)
import Text.Read (Lexeme(String))

todo :: [String]
todo = []

addTask :: String -> [String] -> [String]
  addTask a todo = todo ++ [a]

printTodo :: [String] -> IO ()
  printTodo [] return ()
  printTodo todos = mapM_ putStrLn todos

prompt :: IO ()
prompt = do
  i <- getLine
  if(i == "q") then
    putStrLn "goodbye!"
  else
    addTask i todo


main :: IO ()
main = do
  putStrLn "Welcome to your task list! \nWhat would you like to do today?"
  putStrLn "press q to quit!"
  prompt
