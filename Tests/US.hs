module Tests.US where

import Validate.US
import Test.HUnit


tests_US_region = TestList [
              TestLabel "region1" $ True ~=? (region "MT"),
              TestLabel "region2" $ True ~=? (region "DC"),
              TestLabel "region3" $ True ~=? (region "il"),
              TestLabel "region4" $ False ~=? (region "ILL"),
              TestLabel "region5" $ False ~=? (region "FLA"),
              TestLabel "region6" $ False ~=? (region "NL"),
              TestLabel "region1-strict" $ True ~=? (regionStrict "MT"),
              TestLabel "region2-strict" $ True ~=? (regionStrict "DC"),
              TestLabel "region3-strict" $ False ~=? (regionStrict "il"),
              TestLabel "region4-strict" $ False ~=? (regionStrict "ILL"),
              TestLabel "region5-strict" $ False ~=? (regionStrict "FLA"),
              TestLabel "region6-strict" $ False ~=? (regionStrict "NL")
           ]

tests_US_ssn = TestList [
                -- Should work
                TestLabel "ssn1" $ True ~=? (ssn "712180565"),
                TestLabel "ssn2" $ True ~=? (ssn "019880001"),
                TestLabel "ssn3" $ True ~=? (ssn "019889999"),
                TestLabel "ssn4" $ True ~=? (ssn "133920565"),
                TestLabel "ssn5" $ True ~=? (ssn "001020030"),
                TestLabel "ssn6" $ True ~=? (ssn "097920845"),
                TestLabel "ssn7" $ True ~=? (ssn "097469490"),
                TestLabel "ssn8" $ True ~=? (ssn "001-01-3000"),
                TestLabel "ssn9" $ True ~=? (ssn "001 42 3000"),
                TestLabel "ssn10" $ True ~=? (ssn "001 44 3000"),

                -- Shouldn't work
                TestLabel "ssn11" $ False ~=? (ssn "001 43 3000"),
                TestLabel "ssn12" $ False ~=? (ssn "019880000"),
                TestLabel "ssn13" $ False ~=? (ssn "712194509"),
                TestLabel "ssn14" $ False ~=? (ssn "019000000"),
                TestLabel "ssn15" $ False ~=? (ssn "019890000"),
                TestLabel "ssn16" $ False ~=? (ssn "001713000"),
                TestLabel "ssn17" $ False ~=? (ssn "133939759"),
                TestLabel "ssn18" $ False ~=? (ssn "097999490")
           ]

tests_US = TestList [tests_US_region, tests_US_ssn]
