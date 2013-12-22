dni_letters = "TRWAGMYFPDXBNJZSQVHLCKET"

dni :: String -> Bool
dni ('X':xs) = dni xs
dni code = (last code) == dni_letters !! ((read $ init code) `mod` 23)

postalCode :: String -> Bool
postalCode code = 1000 < (read code) && (read code) < 53000

ssn :: String -> Bool
ssn code = c == checksum
                where a = read $ take 2 $ code
                      b = read $ take 8 $ drop 2 $ code
                      checksum = read $ take 2 $ drop 10 $ code
                      d = if b < 10000000
                            then b + (a * 10000000)
                            else read $ (show a) ++ (show b)
                      c = mod d 97

ccc :: String -> Bool
ccc code = result == controlCode
        where weights = [1, 2, 4, 8, 5, 10, 9, 7, 3, 6]
              entity = take 4 code
              office = take 4 $ drop 4 code
              controlCode = take 2 $ drop 8 code
              account = take 10 $ drop 10 code
              firstResult = zipWith (*) (map read ("00" ++ entity ++ office)) weights
              result = 0
