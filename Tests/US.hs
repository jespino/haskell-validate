module Tests.US where

import Validate.US
import HUnit

region1 = assertEqual "" True (region "MT")
region2 = assertEqual "" True (region "DC")
region3 = assertEqual "" True (region "il")
region4 = assertEqual "" False (region "ILL")
region5 = assertEqual "" False (region "FLA")
region6 = assertEqual "" False (region "NL")

-- Should work
ssn1 = assertEqual "" True (ssn "712180565")
ssn2 = assertEqual "" True (ssn "019880001")
ssn3 = assertEqual "" True (ssn "019889999")
ssn4 = assertEqual "" True (ssn "133920565")
ssn5 = assertEqual "" True (ssn "001020030")
ssn6 = assertEqual "" True (ssn "097920845")
ssn7 = assertEqual "" True (ssn "097469490")
ssn8 = assertEqual "" True (ssn "001-01-3000")
ssn9 = assertEqual "" True (ssn "001 42 3000")
ssn10 = assertEqual "" True (ssn "001 44 3000")

-- Shouldn't work
ssn11 = assertEqual "" False (ssn "001 43 3000")
ssn12 = assertEqual "" False (ssn "019880000")
ssn13 = assertEqual "" False (ssn "712194509")
ssn14 = assertEqual "" False (ssn "019000000")
ssn15 = assertEqual "" False (ssn "019890000")
ssn16 = assertEqual "" False (ssn "001713000")
ssn17 = assertEqual "" False (ssn "133939759")
ssn18 = assertEqual "" False (ssn "097999490")
