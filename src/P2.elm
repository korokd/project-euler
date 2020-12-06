module P2 exposing (solution)

import Functions exposing (findSumOfEvenValuedTermsOf, makeFibonacciSequence)


firstTerm : Int
firstTerm =
    1


secondTerm : Int
secondTerm =
    2


upperBound : Int
upperBound =
    4000000


solution : Int
solution =
    let
        sequence =
            makeFibonacciSequence ( firstTerm, secondTerm ) upperBound
    in
    findSumOfEvenValuedTermsOf sequence
