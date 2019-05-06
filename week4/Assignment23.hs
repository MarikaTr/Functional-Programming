data Person = Person { firstNane :: String,
lastName :: String,
age :: Int,
ssn :: String } deriving (Eq, Show)

p1 = Person "John" "Doe" 23 "1234-111A"
p2 = Person "John" "Doe" 41 "1234-111B"