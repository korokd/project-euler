module TestFunctions exposing (findSumOfMultiplesOfOrBetweenTest, makeFibonacciSequenceTest)

import Expect
import Functions exposing (findSumOfMultiplesOfOrBetween, makeFibonacciSequence)
import Test exposing (Test, describe, test)


makeFibonacciSequenceTest : Test
makeFibonacciSequenceTest =
    describe "Starting with 1 and 2, with an upper bound of 100"
        [ test "the sequence should be [ 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 ]" <|
            \_ ->
                makeFibonacciSequence ( 1, 2 ) 100
                    |> Expect.equal [ 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 ]
        ]


findSumOfMultiplesOfOrBetweenTest : Test
findSumOfMultiplesOfOrBetweenTest =
    describe "If we list all the natural numbers below 10 that are multiples of 3 or 5"
        [ test "their sum should be 23" <|
            \_ ->
                findSumOfMultiplesOfOrBetween [ 3, 5 ] ( 1, 9 )
                    |> Expect.equal 23
        ]
