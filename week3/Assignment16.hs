import Data.Char
isValidDNSHostname xs= not (elem False(( map (\xs -> ((isAlphaNum xs==True)||(xs=='.')||(xs=='-'))) xs)))

--how to call:
--isValidDNSHostname "hjki.fi"