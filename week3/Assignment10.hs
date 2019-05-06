x = ['a'..'z']
filterFunc = [a:b:c:[] | a <- filter(=='a') x, b <- x, c <- filter (=='e')x]

--How to call:
--filterFunc