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
--creating helper function function that turns a True into 1 and False into 0:
change a
  |  a==True = 1
  |  a==False = 0
--creating a function, which returns returns a list of tuples, where the first value of the tuple the Team’s name and the second value is the number of wins for that team.    
numberOfWinsForAllTeams  [] = []
numberOfWinsForAllTeams   (x:xs)= (fst(x),sum([change(snd(a,b))| (a, b) <- snd(x)])):numberOfWinsForAllTeams (xs)

--How to call:
--numberOfWinsForAllTeams tournamentResults