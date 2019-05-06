BuggyUtils(
`  isValidIPv4Address
)where

isValidDNSHostname xs= not (elem False(( map (\xs -> ((isAlphaNum xs==True)||(xs=='.')||(xs=='-'))) xs)))