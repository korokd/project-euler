module P1 exposing (solution)

import Functions


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
    Functions.findSumOfMultiplesOfOrBetween multipliers ( head, tail )
