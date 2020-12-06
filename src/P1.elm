module P1 exposing (findSumOfMultiplesOfOrBetween)


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
