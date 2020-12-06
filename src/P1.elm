module P1 exposing (solution)

import Functions exposing (findSumOfMultiplesOfOrBetween)


multipliers : List Int
multipliers =
    [ 3, 5 ]


head : Int
head =
    1


tail : Int
tail =
    999


solution : Int
solution =
    findSumOfMultiplesOfOrBetween multipliers ( head, tail )
