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

--create numberOfWinsForAllTeams function:
numberOfWinsForAllTeams = zip (map fst tournamentResults) (map length (map (filter (==True))(map (map snd) (map snd tournamentResults))))

--How to call:
--numberOfWinsForAllTeams