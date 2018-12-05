import Aoc (oracle, polymerReact)
import Test.Tasty (defaultMain, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

main = defaultMain unitTests

unitTests =
           testGroup
             "Unit tests"
             [testOracle, day05example]


testOracle =
    testCase "Oracle should say 'Marco'" $ assertEqual [] "Marco" (oracle "")


day05example =
    testCase "Example of polymer reaction of day 5" $ assertEqual [] "dabCBAcaDA" (polymerReact "dabAcCaCBAcCcaDA")