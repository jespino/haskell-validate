module Tests.ES where

import Validate.ES
import HUnit

ccc1 = assertEqual "" True (ccc "2077 0024 00 3102575766")
ccc2 = assertEqual "" False (ccc "2034 4505 73 1000034682")
ccc3 = assertEqual "" True (ccc "0000 0000 00 0000000000")
ccc4 = assertEqual "" False (ccc "0")
ccc5 = assertEqual "" False (ccc "1111 1111 11 1111111111")
ccc6 = assertEqual "" True (ccc "0001 0001 65 0000000001")
ccc7 = assertEqual "" False (ccc "")

dni1 = assertEqual "" True (dni "12345678Z")
dni2 = assertEqual "" True (dni "00000000T")
dni3 = assertEqual "" True (dni "0T")
dni4 = assertEqual "" True (dni "00000000-T")
dni5 = assertEqual "" True (dni "87654321X")
dni6 = assertEqual "" False (dni "87654321J")
dni7 = assertEqual "" False (dni "123456781")
dni8 = assertEqual "" False (dni "X12345678")
dni9 = assertEqual "" False (dni "123K")
dni10 = assertEqual "" False (dni "43215678X")
dni11 = assertEqual "" False (dni "")
