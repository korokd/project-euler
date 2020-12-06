module Functions exposing (findSumOfEvenValuedTermsOf, findSumOfMultiplesOfOrBetween, makeFibonacciSequence)


findSumOfEvenValuedTermsOf : List Int -> Int
findSumOfEvenValuedTermsOf list =
    list
        |> List.filter
            (\value ->
                modBy 2 value == 0
            )
        |> List.sum


addOneTermToReversedFibonacciSequence : Int -> List Int -> List Int
addOneTermToReversedFibonacciSequence upperBound reversedSequence =
    let
        newTerm =
            reversedSequence
                |> List.take 2
                |> List.sum
    in
    if newTerm > upperBound then
        reversedSequence

    else
        newTerm
            :: reversedSequence
            |> addOneTermToReversedFibonacciSequence upperBound


makeFibonacciSequence : ( Int, Int ) -> Int -> List Int
makeFibonacciSequence ( first, second ) upperBound =
    let
        reversedSequence =
            [ second, first ]
    in
    reversedSequence
        |> addOneTermToReversedFibonacciSequence upperBound
        |> List.reverse


findSumOfMultiplesOfOrBetween : List Int -> ( Int, Int ) -> Int
findSumOfMultiplesOfOrBetween possibleMultipliers ( head, tail ) =
    let
        list =
            List.range head tail

        multiples =
            list
                |> List.filter
                    (\value ->
                        possibleMultipliers
                            |> List.any (\multiplier -> modBy multiplier value == 0)
                    )
    in
    List.sum multiples
