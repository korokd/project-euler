module TestFunctions exposing (findSumOfEvenValuedTermsOfTest, findSumOfMultiplesOfOrBetweenTest, makeFibonacciSequenceTest)

import Expect
import Functions exposing (findSumOfEvenValuedTermsOf, findSumOfMultiplesOfOrBetween, makeFibonacciSequence)
import Test exposing (Test, describe, test)



{-
   The last test case of each function with more than 1 case being tested shall test against the values
   that can be seen at https://github.com/luckytoilet/projecteuler-solutions/blob/master/Solutions.md
-}


findSumOfEvenValuedTermsOfTest : Test
findSumOfEvenValuedTermsOfTest =
    describe "Given two initial terms X and Y and an upper bound Z, return the sum of the even-valued terms of the fibonacci sequence"
        [ describe "For X = 1, Y = 2, and Z = 100"
            [ test "the sum of the even-valued terms should be 34" <|
                \_ ->
                    makeFibonacciSequence ( 1, 2 ) 100
                        |> findSumOfEvenValuedTermsOf
                        |> Expect.equal 44
            ]
        , describe "For X = 1, Y = 2, and Z = 4000000"
            [ test "the sum of the even-valued terms should be 4613732" <|
                \_ ->
                    makeFibonacciSequence ( 1, 2 ) 4000000
                        |> findSumOfEvenValuedTermsOf
                        |> Expect.equal 4613732
            ]
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
    describe "Find the sum of all the multiples of at least one of the multipliers provided, starting from X and up to Y"
        [ describe "For multipliers = [ 3, 5 ], X = 1, and Y = 9"
            [ test "the sum should be 23" <|
                \_ ->
                    findSumOfMultiplesOfOrBetween [ 3, 5 ] ( 1, 9 )
                        |> Expect.equal 23
            ]
        , describe "For multipliers = [ 3, 5 ], X = 1, and Y = 999"
            [ test "the sum should be 233168" <|
                \_ ->
                    findSumOfMultiplesOfOrBetween [ 3, 5 ] ( 1, 999 )
                        |> Expect.equal 233168
            ]
        ]
