module Main exposing (main)

import Browser
import Html exposing (Html, div, h1, text)


type alias Model =
    Int


init : Model
init =
    0


titleText : String
titleText =
    "== type writer =="


view : Model -> Html a
view m =
    div []
        [ h1 [] [ text titleText ]
        , text (String.fromInt m)
        ]


main : Program () Model a
main =
    Browser.sandbox
        { init = init
        , view = view
        , update = \_ _ -> 34
        }
