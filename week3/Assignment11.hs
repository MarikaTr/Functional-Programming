--create a list of type [(String, Bool)] for test this function:
listt = [
        ("Team 2", True),
        ("Team 3", False),
        ("Team 4", True),
        ("Team 5", True)]
        
--create a function, which returns how many wins the list has, using higher order functions:
teamNumberOfWins = length(filter (==True) (map snd listt))

--How to call function:
--teamNumberOfWins
