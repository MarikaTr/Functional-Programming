--function in *.hs file:
x = [1..10]
multiplicationTable y = [(y,z,z*y) | z <- x ]

--call:
--multiplicationTable 2