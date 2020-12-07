module Main exposing (main)

import Html exposing (Html, a, div, li, text, ul)
import Html.Attributes exposing (href, rel, target)
import P1
import P2


solutions : List ( String, Int )
solutions =
    [ ( "Problem 1", P1.solution )
    , ( "Problem 2", P2.solution )
    ]


solutionsView : Html msg
solutionsView =
    ul
        []
        (solutions
            |> List.map
                (\( problem, solution ) ->
                    li []
                        [ div [] [ text problem ]
                        , div [] [ text <| String.fromInt solution ]
                        ]
                )
        )


main : Html msg
main =
    div
        []
        [ solutionsView
        ]
