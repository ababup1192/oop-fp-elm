module Node exposing (..)

import Html exposing (..)


type Node
    = Num Int
    | Add Node Node


calc : Node -> Int
calc node =
    case node of
        Num n ->
            n

        Add l r ->
            let
                lValue =
                    calc l

                rValue =
                    calc r
            in
                lValue + rValue


main : Html msg
main =
    let
        tree =
            Add
                (Add
                    (Num 2)
                    (Num 3)
                )
                (Num 4)
    in
        text <| toString <| calc tree
