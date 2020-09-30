module Main exposing (main)

import Browser
import Html exposing (Html, div, h1, text)
import Html.Events as HE


type alias Model =
    { count : Int
    , wordList : List String
    }


init : Model
init =
    { count = 0, wordList = [] }


type Msg
    = Inc
    | Dec
    | IncBy Int


titleText : String
titleText =
    "== type writer =="


inc100 : Msg
inc100 =
    IncBy 100


view : Model -> Html Msg
view m =
    div []
        [ h1 [ HE.onClick Inc ] [ text titleText ]
        , Html.button [ HE.onClick Inc ] [ text "inc" ]
        , Html.button [ HE.onClick Dec ] [ text "dec" ]
        , Html.button [ HE.onClick inc100 ] [ text "inc 100" ]
        , text (String.fromInt m.count)
        ]


update : Msg -> Model -> Model
update msg m =
    case msg of
        Inc ->
            let
                nextCount =
                    m.count + 1
            in
            { m | count = nextCount }

        Dec ->
            { m | count = m.count - 1 }

        IncBy x ->
            { m | count = m.count + x }


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }
