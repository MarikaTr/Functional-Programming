data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show) 
singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
  |  x == a = Node x left right
  |  x < a = Node a (treeInsert x left) right
  |  x > a = Node a left (treeInsert x right)


treeContains :: (Ord a) => a -> Tree a -> Bool
treeContains x EmptyTree = False
treeContains x (Node a left right)
  | x == a = True
  | x < a = treeContains x left
  | x > a = treeContains x right
  
--Create tree:
--*Main> let testTree = treeInsert "hello" EmptyTrie
--*Main> let testTree' = treeInsert "world" testTree
--etc

--How to call treeContains:
--treeContains "hello" testTree
