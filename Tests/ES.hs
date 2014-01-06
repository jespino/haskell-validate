module Tests.ES where

import Validate.ES
import Test.HUnit

tests_ES_ccc = TestList [
        TestLabel "ccc1" $ True ~=? (ccc "20770024003102575766"),
        TestLabel "ccc2" $ True ~=? (ccc "2077 0024 00 3102575766"),
        TestLabel "ccc3" $ False ~=? (ccc "2034 4505 73 1000034682"),
        TestLabel "ccc4" $ True ~=? (ccc "0000 0000 00 0000000000"),
        TestLabel "ccc5" $ False ~=? (ccc "0"),
        TestLabel "ccc6" $ False ~=? (ccc "1111 1111 11 1111111111"),
        TestLabel "ccc7" $ True ~=? (ccc "0001 0001 65 0000000001"),
        TestLabel "ccc8" $ False ~=? (ccc ""),
        TestLabel "ccc1-strict" $ True ~=? (cccStrict "20770024003102575766"),
        TestLabel "ccc1-strict" $ False ~=? (cccStrict "11111111111111111111"),
        TestLabel "ccc2-strict" $ False ~=? (cccStrict "2077 0024 00 3102575766"),
        TestLabel "ccc3-strict" $ False ~=? (cccStrict "2034 4505 73 1000034682"),
        TestLabel "ccc4-strict" $ False ~=? (cccStrict "0000 0000 00 0000000000"),
        TestLabel "ccc5-strict" $ False ~=? (cccStrict "0"),
        TestLabel "ccc6-strict" $ False ~=? (cccStrict "1111 1111 11 1111111111"),
        TestLabel "ccc7-strict" $ False ~=? (cccStrict "0001 0001 65 0000000001"),
        TestLabel "ccc8-strict" $ False ~=? (cccStrict "")
    ]

tests_ES_dni = TestList [
        TestLabel "dni1" $ True ~=? (dni "12345678Z"),
        TestLabel "dni2" $ True ~=? (dni "00000000T"),
        TestLabel "dni3" $ True ~=? (dni "0T"),
        TestLabel "dni4" $ True ~=? (dni "00000000-T"),
        TestLabel "dni5" $ True ~=? (dni "87654321X"),
        TestLabel "dni6" $ False ~=? (dni "87654321J"),
        TestLabel "dni7" $ False ~=? (dni "123456781"),
        TestLabel "dni8" $ False ~=? (dni "X12345678"),
        TestLabel "dni9" $ False ~=? (dni "123K"),
        TestLabel "dni10" $ False ~=? (dni "43215678X"),
        TestLabel "dni11" $ False ~=? (dni ""),
        TestLabel "dni1-strict" $ True ~=? (dniStrict "12345678Z"),
        TestLabel "dni2-strict" $ True ~=? (dniStrict "00000000T"),
        TestLabel "dni3-strict" $ True ~=? (dniStrict "0T"),
        TestLabel "dni4-strict" $ False ~=? (dniStrict "00000000-T"),
        TestLabel "dni5-strict" $ True ~=? (dniStrict "87654321X"),
        TestLabel "dni6-strict" $ False ~=? (dniStrict "87654321J"),
        TestLabel "dni7-strict" $ False ~=? (dniStrict "123456781"),
        TestLabel "dni8-strict" $ False ~=? (dniStrict "X12345678"),
        TestLabel "dni9-strict" $ False ~=? (dniStrict "123K"),
        TestLabel "dni10-strict" $ False ~=? (dniStrict "43215678X"),
        TestLabel "dni11-strict" $ False ~=? (dniStrict "")
    ]

tests_ES_cif = TestList [
        TestLabel "cif1" $ True ~=? (cif "A58818501"),
        TestLabel "cif2" $ True ~=? (cif "B00000000"),
        TestLabel "cif3" $ True ~=? (cif "C0000000J"),
        TestLabel "cif4" $ True ~=? (cif "D00000000"),
        TestLabel "cif5" $ True ~=? (cif "E00000000"),
        TestLabel "cif6" $ True ~=? (cif "F00000000"),
        TestLabel "cif7" $ True ~=? (cif "G00000000"),
        TestLabel "cif8" $ True ~=? (cif "H00000000"),
        TestLabel "cif9" $ False ~=? (cif "I00000000"),
        TestLabel "cif10" $ False ~=? (cif "I0000000J"),
        TestLabel "cif11" $ True ~=? (cif "J00000000"),
        TestLabel "cif12" $ True ~=? (cif "K0000000J"),
        TestLabel "cif13" $ True ~=? (cif "L0000000J"),
        TestLabel "cif14" $ True ~=? (cif "M0000000J"),
        TestLabel "cif15" $ True ~=? (cif "N0000000J"),
        TestLabel "cif16" $ False ~=? (cif "O00000000"),
        TestLabel "cif17" $ False ~=? (cif "O0000000J"),
        TestLabel "cif18" $ True ~=? (cif "P0000000J"),
        TestLabel "cif19" $ True ~=? (cif "Q0000000J"),
        TestLabel "cif20" $ True ~=? (cif "R0000000J"),
        TestLabel "cif21" $ True ~=? (cif "S0000000J"),
        TestLabel "cif22" $ False ~=? (cif "T00000000"),
        TestLabel "cif23" $ False ~=? (cif "T0000000J"),
        TestLabel "cif24" $ True ~=? (cif "U00000000"),
        TestLabel "cif25" $ True ~=? (cif "V00000000"),
        TestLabel "cif26" $ True ~=? (cif "W0000000J"),
        TestLabel "cif27" $ False ~=? (cif "X00000000"),
        TestLabel "cif28" $ False ~=? (cif "X0000000J"),
        TestLabel "cif29" $ False ~=? (cif "Y00000000"),
        TestLabel "cif30" $ False ~=? (cif "Y0000000J"),
        TestLabel "cif31" $ False ~=? (cif "Z00000000"),
        TestLabel "cif32" $ False ~=? (cif "Z0000000J"),
        TestLabel "cif33" $ False ~=? (cif "B0000000J"),
        TestLabel "cif34" $ False ~=? (cif "BC0000000"),
        TestLabel "cif35" $ False ~=? (cif "123456678"),
        TestLabel "cif36" $ True ~=? (cif "B-00000000"),
        TestLabel "cif37" $ True ~=? (cif "K-0000000-J")
    ]

tests_ES_postalCode = TestList [
        TestLabel "postalCode1" $ True ~=? (postalCode "28080"),
        TestLabel "postalCode2" $ True ~=? (postalCode "35500"),
        TestLabel "postalCode3" $ False ~=? (postalCode "59000"),
        TestLabel "postalCode4" $ True ~=? (postalCode "12012"),
        TestLabel "postalCode5" $ True ~=? (postalCode "25120"),
        TestLabel "postalCode6" $ False ~=? (postalCode "10"),
        TestLabel "postalCode7" $ False ~=? (postalCode "x123")
    ]

tests_ES_ssn = TestList [
        TestLabel "ssn1" $ False ~=? (ssn "720111361735"),
        TestLabel "ssn2" $ True ~=? (ssn "281234567840"),
        TestLabel "ssn3" $ True ~=? (ssn "351234567825"),
        TestLabel "ssn4" $ True ~=? (ssn "35/12345678/25"),
        TestLabel "ssn5" $ False ~=? (ssn "35X1234567825"),
        TestLabel "ssn6" $ False ~=? (ssn "031322136383"),
        TestLabel "ssn7" $ False ~=? (ssn "72011a361732"),
        TestLabel "ssn8" $ False ~=? (ssn "73011a361731"),
        TestLabel "ssn9" $ False ~=? (ssn "03092a136383"),
        TestLabel "ssn10" $ False ~=? (ssn "03132a136385"),
        TestLabel "ssn11" $ False ~=? (ssn "201113617312"),
        TestLabel "ssn12" $ False ~=? (ssn "301113617334"),
        TestLabel "ssn13" $ False ~=? (ssn "309221363823"),
        TestLabel "ssn14" $ False ~=? (ssn "313221363822"),
        TestLabel "ssn1-strict" $ False ~=? (ssnStrict "720111361735"),
        TestLabel "ssn2-strict" $ True ~=? (ssnStrict "281234567840"),
        TestLabel "ssn3-strict" $ True ~=? (ssnStrict "351234567825"),
        TestLabel "ssn4-strict" $ False ~=? (ssnStrict "35/12345678/25"),
        TestLabel "ssn5-strict" $ False ~=? (ssnStrict "35X1234567825"),
        TestLabel "ssn6-strict" $ False ~=? (ssnStrict "031322136383"),
        TestLabel "ssn7-strict" $ False ~=? (ssnStrict "72011a361732"),
        TestLabel "ssn8-strict" $ False ~=? (ssnStrict "73011a361731"),
        TestLabel "ssn9-strict" $ False ~=? (ssnStrict "03092a136383"),
        TestLabel "ssn10-strict" $ False ~=? (ssnStrict "03132a136385"),
        TestLabel "ssn11-strict" $ False ~=? (ssnStrict "201113617312"),
        TestLabel "ssn12-strict" $ False ~=? (ssnStrict "301113617334"),
        TestLabel "ssn13-strict" $ False ~=? (ssnStrict "309221363823"),
        TestLabel "ssn14-strict" $ False ~=? (ssnStrict "313221363822")
    ]

tests_ES = TestList [tests_ES_ccc, tests_ES_dni, tests_ES_cif, tests_ES_postalCode, tests_ES_ssn]
