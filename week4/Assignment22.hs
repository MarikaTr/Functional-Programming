data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show) 
singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree
insertWords x EmptyTree = singleton x
insertWords x (Node a left right)
  |  sort x == sort a = Node x left right
  |  sort x < sort a = Node a (insertWords x left) right
  |  sort x > sort a = Node a left (insertWords x right)
trieWords  = ["hello", "world", "ancestries", "resistance", "admirer", "married"]
tree = foldr insertWords EmptyTree trieWords 

--anagramSearch :: (Ord a) => a -> Tree a -> Maybe a
anagramSearch x EmptyTree = Nothing
anagramSearch x (Node a left right)
  | sort x == sort a = Just a
  | sort x < sort a = anagramSearch x left
  | sort x > sort a = anagramSearch x right
  
--Create tree:
--tree

--How to call treeContains:
--anagramSearch "loleh" tree
