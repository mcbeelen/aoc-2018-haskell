import Aoc (oracle)
import Test.Tasty (defaultMain, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

main = defaultMain unitTests

unitTests =
           testGroup
             "Unit tests"
             [testOracle]


testOracle =
    testCase "Oracle should say 'Marco'" $ assertEqual [] "Marco" (oracle "")
