data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show) 
singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree
insertWords x EmptyTree = singleton x
insertWords x (Node a left right)
  |  x == a = Node x left right
  |  x < a = Node a (insertWords x left) right
  |  x > a = Node a left (insertWords x right)
wordss = ["hello", "world", "foo", "bar"]
tree = foldr insertWords EmptyTree wordss

treeContains :: (Ord a) => a -> Tree a -> Bool
treeContains x EmptyTree = False
treeContains x (Node a left right)
  | x == a = True
  | x < a = treeContains x left
  | x > a = treeContains x right
  
  
--Create tree:
--tree

--How to call treeContains:
--treeContains "foo" tree