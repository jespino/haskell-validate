module Tests.ES where

import Validate.ES
import Test.HUnit

tests_ES_ccc = TestList [
        TestLabel "ccc1" $ TestCase $ assertEqual "" True (ccc "2077 0024 00 3102575766"),
        TestLabel "ccc2" $ TestCase $ assertEqual "" False (ccc "2034 4505 73 1000034682"),
        TestLabel "ccc3" $ TestCase $ assertEqual "" True (ccc "0000 0000 00 0000000000"),
        TestLabel "ccc4" $ TestCase $ assertEqual "" False (ccc "0"),
        TestLabel "ccc5" $ TestCase $ assertEqual "" False (ccc "1111 1111 11 1111111111"),
        TestLabel "ccc6" $ TestCase $ assertEqual "" True (ccc "0001 0001 65 0000000001"),
        TestLabel "ccc7" $ TestCase $ assertEqual "" False (ccc "")
    ]

tests_ES_dni = TestList [
        TestLabel "dni1" $ TestCase $ assertEqual "" True (dni "12345678Z"),
        TestLabel "dni2" $ TestCase $ assertEqual "" True (dni "00000000T"),
        TestLabel "dni3" $ TestCase $ assertEqual "" True (dni "0T"),
        TestLabel "dni4" $ TestCase $ assertEqual "" True (dni "00000000-T"),
        TestLabel "dni5" $ TestCase $ assertEqual "" True (dni "87654321X"),
        TestLabel "dni6" $ TestCase $ assertEqual "" False (dni "87654321J"),
        TestLabel "dni7" $ TestCase $ assertEqual "" False (dni "123456781"),
        TestLabel "dni8" $ TestCase $ assertEqual "" False (dni "X12345678"),
        TestLabel "dni9" $ TestCase $ assertEqual "" False (dni "123K"),
        TestLabel "dni10" $ TestCase $ assertEqual "" False (dni "43215678X"),
        TestLabel "dni11" $ TestCase $ assertEqual "" False (dni ""),
        TestLabel "dni1-strict" $ TestCase $ assertEqual "" True (dniStrict "12345678Z"),
        TestLabel "dni2-strict" $ TestCase $ assertEqual "" True (dniStrict "00000000T"),
        TestLabel "dni3-strict" $ TestCase $ assertEqual "" True (dniStrict "0T"),
        TestLabel "dni4-strict" $ TestCase $ assertEqual "" False (dniStrict "00000000-T"),
        TestLabel "dni5-strict" $ TestCase $ assertEqual "" True (dniStrict "87654321X"),
        TestLabel "dni6-strict" $ TestCase $ assertEqual "" False (dniStrict "87654321J"),
        TestLabel "dni7-strict" $ TestCase $ assertEqual "" False (dniStrict "123456781"),
        TestLabel "dni8-strict" $ TestCase $ assertEqual "" False (dniStrict "X12345678"),
        TestLabel "dni9-strict" $ TestCase $ assertEqual "" False (dniStrict "123K"),
        TestLabel "dni10-strict" $ TestCase $ assertEqual "" False (dniStrict "43215678X"),
        TestLabel "dni11-strict" $ TestCase $ assertEqual "" False (dniStrict "")
    ]

tests_ES_cif = TestList [
        TestLabel "cif1" $ TestCase $ assertEqual "" True (cif "A58818501"),
        TestLabel "cif2" $ TestCase $ assertEqual "" True (cif "B00000000"),
        TestLabel "cif3" $ TestCase $ assertEqual "" True (cif "C0000000J"),
        TestLabel "cif4" $ TestCase $ assertEqual "" True (cif "D00000000"),
        TestLabel "cif5" $ TestCase $ assertEqual "" True (cif "E00000000"),
        TestLabel "cif6" $ TestCase $ assertEqual "" True (cif "F00000000"),
        TestLabel "cif7" $ TestCase $ assertEqual "" True (cif "G00000000"),
        TestLabel "cif8" $ TestCase $ assertEqual "" True (cif "H00000000"),
        TestLabel "cif9" $ TestCase $ assertEqual "" False (cif "I00000000"),
        TestLabel "cif10" $ TestCase $ assertEqual "" False (cif "I0000000J"),
        TestLabel "cif11" $ TestCase $ assertEqual "" True (cif "J00000000"),
        TestLabel "cif12" $ TestCase $ assertEqual "" True (cif "K0000000J"),
        TestLabel "cif13" $ TestCase $ assertEqual "" True (cif "L0000000J"),
        TestLabel "cif14" $ TestCase $ assertEqual "" True (cif "M0000000J"),
        TestLabel "cif15" $ TestCase $ assertEqual "" True (cif "N0000000J"),
        TestLabel "cif16" $ TestCase $ assertEqual "" False (cif "O00000000"),
        TestLabel "cif17" $ TestCase $ assertEqual "" False (cif "O0000000J"),
        TestLabel "cif18" $ TestCase $ assertEqual "" True (cif "P0000000J"),
        TestLabel "cif19" $ TestCase $ assertEqual "" True (cif "Q0000000J"),
        TestLabel "cif20" $ TestCase $ assertEqual "" True (cif "R0000000J"),
        TestLabel "cif21" $ TestCase $ assertEqual "" True (cif "S0000000J"),
        TestLabel "cif22" $ TestCase $ assertEqual "" False (cif "T00000000"),
        TestLabel "cif23" $ TestCase $ assertEqual "" False (cif "T0000000J"),
        TestLabel "cif24" $ TestCase $ assertEqual "" True (cif "U00000000"),
        TestLabel "cif25" $ TestCase $ assertEqual "" True (cif "V00000000"),
        TestLabel "cif26" $ TestCase $ assertEqual "" True (cif "W0000000J"),
        TestLabel "cif27" $ TestCase $ assertEqual "" False (cif "X00000000"),
        TestLabel "cif28" $ TestCase $ assertEqual "" False (cif "X0000000J"),
        TestLabel "cif29" $ TestCase $ assertEqual "" False (cif "Y00000000"),
        TestLabel "cif30" $ TestCase $ assertEqual "" False (cif "Y0000000J"),
        TestLabel "cif31" $ TestCase $ assertEqual "" False (cif "Z00000000"),
        TestLabel "cif32" $ TestCase $ assertEqual "" False (cif "Z0000000J"),
        TestLabel "cif33" $ TestCase $ assertEqual "" False (cif "B0000000J"),
        TestLabel "cif34" $ TestCase $ assertEqual "" False (cif "BC0000000"),
        TestLabel "cif35" $ TestCase $ assertEqual "" False (cif "123456678"),
        TestLabel "cif36" $ TestCase $ assertEqual "" True (cif "B-00000000"),
        TestLabel "cif37" $ TestCase $ assertEqual "" True (cif "K-0000000-J")
    ]

tests_ES_postalCode = TestList [
        TestLabel "postalCode1" $ TestCase $ assertEqual "" True (postalCode "28080"),
        TestLabel "postalCode2" $ TestCase $ assertEqual "" True (postalCode "35500"),
        TestLabel "postalCode3" $ TestCase $ assertEqual "" False (postalCode "59000"),
        TestLabel "postalCode4" $ TestCase $ assertEqual "" True (postalCode "12012"),
        TestLabel "postalCode5" $ TestCase $ assertEqual "" True (postalCode "25120"),
        TestLabel "postalCode6" $ TestCase $ assertEqual "" False (postalCode "10"),
        TestLabel "postalCode7" $ TestCase $ assertEqual "" False (postalCode "x123")
    ]

tests_ES_ssn = TestList [
        TestLabel "ssn1" $ TestCase $ assertEqual "" True (ssn "720111361735"),
        TestLabel "ssn2" $ TestCase $ assertEqual "" True (ssn "281234567840"),
        TestLabel "ssn3" $ TestCase $ assertEqual "" True (ssn "351234567825"),
        TestLabel "ssn4" $ TestCase $ assertEqual "" True (ssn "35/12345678/25"),
        TestLabel "ssn5" $ TestCase $ assertEqual "" False (ssn "35X1234567825"),
        TestLabel "ssn6" $ TestCase $ assertEqual "" False (ssn "031322136383"),
        TestLabel "ssn7" $ TestCase $ assertEqual "" False (ssn "72011a361732"),
        TestLabel "ssn8" $ TestCase $ assertEqual "" False (ssn "73011a361731"),
        TestLabel "ssn9" $ TestCase $ assertEqual "" False (ssn "03092a136383"),
        TestLabel "ssn10" $ TestCase $ assertEqual "" False (ssn "03132a136385"),
        TestLabel "ssn11" $ TestCase $ assertEqual "" False (ssn "201113617312"),
        TestLabel "ssn12" $ TestCase $ assertEqual "" False (ssn "301113617334"),
        TestLabel "ssn13" $ TestCase $ assertEqual "" False (ssn "309221363823"),
        TestLabel "ssn14" $ TestCase $ assertEqual "" False (ssn "313221363822")
    ]
