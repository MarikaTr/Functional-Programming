--Create list:
tournamentResults = [
    ("Team 1", [
        ("Team 2", True),
        ("Team 3", False),
        ("Team 4", True),
        ("Team 5", True)]),
    ("Team 2", [
        ("Team 3",True),
        ("Team 4", False),
        ("Team 5", False) ]),
    ("Team 3", [
        ("Team 4", False),
        ("Team 5", False) ]),
    ("Team 4", [
        ("Team 5", True)]),
    ("Team 5", []),
    ("Team 1", [])]
--Function from previous assignment:
numberOfWinsForAllTeams = zip (map fst tournamentResults) (map length (map (filter (==True))(map (map snd) (map snd tournamentResults))))
--Create quick sort function:
quicksort [] = []
quicksort (x:xs) = quicksort large ++ (x : quicksort small)
   where large = [y | y <- xs, y >= x]
         small = [y | y <- xs, y < x]
--Create function that sorts the list returned by the function in the previous assignment so that the team with the most wins is the first in the list.
eee = zip (map fst tournamentResults) (quicksort (map snd numberOfWinsForAllTeams))

--How to call:
--eee