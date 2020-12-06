module Main exposing (main)

import Html exposing (Html, div, li, text, ul)
import P1


allSolutions : List ( String, Int )
allSolutions =
    [ ( "Problem 1", P1.solution )
    ]


main : Html msg
main =
    ul
        []
        (allSolutions
            |> List.map
                (\( problem, solution ) ->
                    li []
                        [ div [] [ text problem ]
                        , div [] [ text <| String.fromInt solution ]
                        ]
                )
        )
