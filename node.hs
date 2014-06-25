data Tree a = Tree a | Empty | Branch (Tree a) (Tree a) deriving (Show)

tree = Tree (Branch Empty Empty)