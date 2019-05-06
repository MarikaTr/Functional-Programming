--creating a list of type [(String, Bool)] for test this function:
listt = [
        ("Team 2", True),
        ("Team 3", False),
        ("Team 4", True),
        ("Team 5", True)]
--creating helper function function that turns a True into 1 and False into 0:
change a
  |  a==True = 1
  |  a==False = 0
--creating a function, which returns how many wins the list has:
teamNumberOfWins  = sum([change(snd(a,b))| (a, b) <- listt])
 
--How to call function:
--teamNumberOfWins