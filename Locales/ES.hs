dni_letters = "TRWAGMYFPDXBNJZSQVHLCKET"

dni :: String -> Bool
dni ('X':xs) = dni xs
dni code = (last code) == dni_letters !! ((read $ init code) `mod` 23)

postalCode :: String -> Bool
postalCode code = 1000 < (read code) && (read code) < 53000
