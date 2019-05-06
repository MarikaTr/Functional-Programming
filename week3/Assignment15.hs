import Data.List

votes = ["Jack", "Joe", "Joe", "Joe", "Jocelyn", "John", "Jocelyn", "Jack"]
wordNums :: [String] -> [(String, Int)]
wordNums = (map (\ws -> (head ws, length ws)) . group . sort)

tt = reverse (sortOn snd (wordNums votes))

--how to call:
--tt