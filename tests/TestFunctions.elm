module TestFunctions exposing (findSumOfEvenValuedTermsOfTest, findSumOfMultiplesOfOrBetweenTest, makeFibonacciSequenceTest)

import Expect
import Functions exposing (findSumOfEvenValuedTermsOf, findSumOfMultiplesOfOrBetween, makeFibonacciSequence)
import Test exposing (Test, describe, test)


findSumOfEvenValuedTermsOfTest : Test
findSumOfEvenValuedTermsOfTest =
    describe "For a Fibonacci sequence starting with 1 and 2 and with an upper bound of 100"
        [ test "the sum of the even-valued terms should be 34" <|
            \_ ->
                makeFibonacciSequence ( 1, 2 ) 100
                    |> findSumOfEvenValuedTermsOf
                    |> Expect.equal 44
        ]


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
