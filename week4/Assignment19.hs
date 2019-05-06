import Data.List

tournamentResults ::  [(String,[(String, Bool)])]
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

type Team = String
type Opponent = String
type IsTeamWin = Bool

type tournamentResults = [(Team,[(Opponent, IsTeamWin)])]

--listTeams:

listTeams = ( nub (map fst tournamentResults))


--teamNumberOfWins:

listt :: [(String, Bool)]
listt = [
        ("Team 2", True),
        ("Team 3", False),
        ("Team 4", True),
        ("Team 5", True)]
type IsTeamWin = Bool
type Opponent = String

type Listt = [(Opponent, IsTeamWin)]
        
--create a function, which returns how many wins the list has, using higher order functions:
teamNumberOfWins = length(last(group ( sort (map snd listt))))

--numberOfWinsForAllTeams
numberOfWinsForAllTeams = zip (map fst tournamentResults) (map length (map (filter (==True))(map (map snd) (map snd tournamentResults))))