module Main exposing (main)

import Browser
import Html exposing (Html, div, h1, text)


titleText : String
titleText =
    "== type writer =="


view : Int -> Html a
view i =
    div []
        [ h1 [] [ text titleText ]
        , text (String.fromInt i)
        ]


main : Program () () a
main =
    Browser.sandbox
        { init = ()
        , view = \_ -> view 4
        , update = \_ _ -> ()
        }
