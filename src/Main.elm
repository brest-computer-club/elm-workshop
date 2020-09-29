module Main exposing (main)

import Browser
import Html exposing (Html, div, h1, text)
import Html.Events as HE


type alias Model =
    Int


init : Model
init =
    0


type Msg
    = Inc
    | Dec
    | IncBy Int


titleText : String
titleText =
    "== type writer =="


view : Model -> Html Msg
view m =
    div []
        [ h1 [ HE.onClick Inc ] [ text titleText ]
        , Html.button [ HE.onClick Inc ] [ text "inc" ]
        , Html.button [ HE.onClick Dec ] [ text "dec" ]
        , Html.button [ HE.onClick <| IncBy 100 ] [ text "inc 100" ]
        , text (String.fromInt m)
        ]


update : Msg -> Model -> Model
update msg m =
    case msg of
        Inc ->
            m + 1

        Dec ->
            m - 1

        IncBy x ->
            m + x


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }
