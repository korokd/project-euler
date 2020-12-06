module Main exposing (main)

import Html exposing (Html, a, div, li, text, ul)
import Html.Attributes exposing (href, rel, target)
import P1


mySolutions : List ( String, Int )
mySolutions =
    [ ( "Problem 1", P1.solution )
    ]


checkSolutionsView : Html msg
checkSolutionsView =
    a
        [ href "https://github.com/luckytoilet/projecteuler-solutions/blob/master/Solutions.md"
        , target "_blank"
        , rel "noreferrer noopener"
        ]
        [ text "You can verify the answers here" ]


mySolutionsView : Html msg
mySolutionsView =
    ul
        []
        (mySolutions
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
        [ checkSolutionsView
        , mySolutionsView
        ]
