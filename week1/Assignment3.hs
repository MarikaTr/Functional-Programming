--function in *.hs file:
x = ['a'..'z']
howManyPass = length [a:b:c:d:e:f:[] | a <- x, b <- x, c <- x,  d <- x, e <- x, f <- x]
--call:
--howManyPass