module TestP1 exposing (findSumOfMultiplesOfOrBetweenTest)

import Expect
import P1 exposing (findSumOfMultiplesOfOrBetween)
import Test exposing (Test, describe, test)


findSumOfMultiplesOfOrBetweenTest : Test
findSumOfMultiplesOfOrBetweenTest =
    describe "If we list all the natural numbers below 10 that are multiples of 3 or 5"
        [ test "their sum should be 23" <|
            \_ ->
                findSumOfMultiplesOfOrBetween [ 3, 5 ] ( 1, 10 )
                    |> Expect.equal 23
        ]
