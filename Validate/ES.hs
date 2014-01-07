module Validate.ES where

import Data.Char

dniStrict :: String -> Bool
dniStrict [] = False
dniStrict ('X':xs) = dniStrict xs
dniStrict code = case all isDigit (init code) of
                 True -> (last code) == dni_letters !! ((read $ init code) `mod` 23)
                 False -> False
                 where dni_letters = "TRWAGMYFPDXBNJZSQVHLCKET"

dni :: String -> Bool
dni code = dniStrict $ filter (\x -> not (x `elem` ['-', ' '])) (map toUpper code)

postalCode :: String -> Bool
postalCode "" = False
postalCode code = case all isDigit code of
                    True -> 1000 < (read code) && (read code) < 53000
                    False -> False

ssn :: String -> Bool
ssn code = ssnStrict $ filter (\x -> not (x `elem` ['-', ' ', '/'])) (map toUpper code)

ssnStrict :: String -> Bool
ssnStrict code = case all isDigit code of
                True -> c == checksum
                False -> False
                where a = read $ take 2 $ code
                      b = read $ take 8 $ drop 2 $ code
                      checksum = read $ take 2 $ drop 10 code
                      d = if b < 10000000
                            then b + (a * 10000000)
                            else read $ (show a) ++ (show b)
                      c = mod d 97

cccStrict :: String -> Bool
cccStrict code = case all isDigit code of
                    True -> [checksum firstGroup, checksum secondGroup] == controlCode
                    False -> False
        where weights = [1, 2, 4, 8, 5, 10, 9, 7, 3, 6]
              firstGroup = "00" ++ (take 8 code)
              secondGroup = take 10 $ drop 10 code
              controlCode = take 2 $ drop 8 code
              checksum codeGroup = intToDigit $ ccc_mod11 $ 11 - (sum $ zipWith (*) (map digitToInt codeGroup) weights)
              ccc_mod11 value = case mod value 11 of
                    10 -> 1
                    11 -> 0
                    otherwise -> mod value 11

ccc :: String -> Bool
ccc code = cccStrict $ filter (\x -> not (x `elem` ['-', ' '])) (map toUpper code)

cif :: String -> Bool
cif code = cifStrict $ filter (\x -> not (x `elem` ['-'])) (map toUpper code)

cifStrict :: String -> Bool
cifStrict code = controlCode == (intToDigit d) || controlCode == (letters !! d)
        where letters = "ABCDEFGHIJ"
              letter = code !! 0
              odd_numbers = map digitToInt [code !! 1, code !! 3, code !! 5, code !! 7]
              even_numbers = map digitToInt [code !! 2, code !! 4, code !! 6]
              controlCode = code !! 8
              a = sum even_numbers
              b = sum $ map sum_odd_numbers odd_numbers
              e = (a + b) `mod` 10
              d = case (e == 0) of
                    True -> 0
                    False -> 10 - e
              sum_odd_numbers x = case ((x * 2) >= 10) of
                                    True -> ((x * 2) `mod` 10) + 1
                                    False -> x * 2
