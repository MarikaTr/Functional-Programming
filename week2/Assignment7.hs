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
--create a function, which return a list with non unique teams name:
lis = ([fst(a,b)| (a,b) <- tournamentResults])
--create a function, which return a list with unique teams name:
listTeams  [] = []
listTeams  [x] = [x]
listTeams  (x:xs)
  | not (elem x xs) = x : listTeams (xs)
  | otherwise = listTeams (xs)
--How to call this function:
--listTeams Lis