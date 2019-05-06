import Control.Monad
import Data.Char
import Data.Maybe
import Data.List
import System.IO
import System.Environment
import qualified Data.Map as Map
import qualified Data.List as List
import qualified Data.Set as Set
  
main = do  
   contents <- readFile "enable1.txt" 
   let  eee = words contents
   let t = insertWords eee emptyTrie
   putStrLn $ "Input the word please: "
   inputWord <- getLine
   if null inputWord
      then return ()
      else do
            let b = anagramSearch inputWord t
            putStrLn $ show b  
            main
   
data Trie = Trie    {   terminator :: Bool,
                        children :: Map.Map Char Trie
                    } deriving (Show)

emptyTrie :: Trie
emptyTrie = Trie False Map.empty

trieInsert :: String -> Trie -> Trie
trieInsert [] (Trie _ children) = Trie True children
trieInsert (x:xs) (Trie term children) = Trie term (Map.alter (Just . trieInsert xs . fromMaybe emptyTrie) x children)
--hClose handle
insertWords :: [String] -> Trie -> Trie
insertWords words trie = foldr pred emptyTrie words
    where
        pred word acc = trieInsert word acc

trieContains :: String -> Trie -> Bool
trieContains [] (Trie isTerminator _) = isTerminator
trieContains (x:xs) (Trie _ children) = case Map.lookup x children of
    Nothing -> False
    Just trie -> trieContains xs trie

anagramSearch :: String -> Trie -> Maybe [String]
anagramSearch word trie = case results of
    [] -> Nothing
    xs -> Just xs
    where
        results = filter (\x -> x /= word) $ Set.toList $ Set.fromList anagrams
        anagrams = foldr pred [] $ List.permutations word
        pred word acc = if trieContains word trie then word:acc else acc