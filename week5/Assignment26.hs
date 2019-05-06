import System.Environment
import Data.List
main = do
  args <- getArgs
  putStrLn "You choose this file: "
  mapM putStrLn args
 
  letter <- getLine
  putStr "You choose this letter: "
  putStr letter