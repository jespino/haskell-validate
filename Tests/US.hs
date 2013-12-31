module Tests.US where

import Validate.US
import Test.HUnit


tests_US_region = TestList [
              TestLabel "region1" $ TestCase $ assertEqual "" True (region "MT"),
              TestLabel "region2" $ TestCase $ assertEqual "" True (region "DC"),
              TestLabel "region3" $ TestCase $ assertEqual "" True (region "il"),
              TestLabel "region4" $ TestCase $ assertEqual "" False (region "ILL"),
              TestLabel "region5" $ TestCase $ assertEqual "" False (region "FLA"),
              TestLabel "region6" $ TestCase $ assertEqual "" False (region "NL"),
              TestLabel "region1-strict" $ TestCase $ assertEqual "" True (regionStrict "MT"),
              TestLabel "region2-strict" $ TestCase $ assertEqual "" True (regionStrict "DC"),
              TestLabel "region3-strict" $ TestCase $ assertEqual "" False (regionStrict "il"),
              TestLabel "region4-strict" $ TestCase $ assertEqual "" False (regionStrict "ILL"),
              TestLabel "region5-strict" $ TestCase $ assertEqual "" False (regionStrict "FLA"),
              TestLabel "region6-strict" $ TestCase $ assertEqual "" False (regionStrict "NL")
           ]

tests_US_ssn = TestList [
                -- Should work
                TestLabel "ssn1" $ TestCase $ assertEqual "" True (ssn "712180565"),
                TestLabel "ssn2" $ TestCase $ assertEqual "" True (ssn "019880001"),
                TestLabel "ssn3" $ TestCase $ assertEqual "" True (ssn "019889999"),
                TestLabel "ssn4" $ TestCase $ assertEqual "" True (ssn "133920565"),
                TestLabel "ssn5" $ TestCase $ assertEqual "" True (ssn "001020030"),
                TestLabel "ssn6" $ TestCase $ assertEqual "" True (ssn "097920845"),
                TestLabel "ssn7" $ TestCase $ assertEqual "" True (ssn "097469490"),
                TestLabel "ssn8" $ TestCase $ assertEqual "" True (ssn "001-01-3000"),
                TestLabel "ssn9" $ TestCase $ assertEqual "" True (ssn "001 42 3000"),
                TestLabel "ssn10" $ TestCase $ assertEqual "" True (ssn "001 44 3000"),

                -- Shouldn't work
                TestLabel "ssn11" $ TestCase $ assertEqual "" False (ssn "001 43 3000"),
                TestLabel "ssn12" $ TestCase $ assertEqual "" False (ssn "019880000"),
                TestLabel "ssn13" $ TestCase $ assertEqual "" False (ssn "712194509"),
                TestLabel "ssn14" $ TestCase $ assertEqual "" False (ssn "019000000"),
                TestLabel "ssn15" $ TestCase $ assertEqual "" False (ssn "019890000"),
                TestLabel "ssn16" $ TestCase $ assertEqual "" False (ssn "001713000"),
                TestLabel "ssn17" $ TestCase $ assertEqual "" False (ssn "133939759"),
                TestLabel "ssn18" $ TestCase $ assertEqual "" False (ssn "097999490")
           ]
