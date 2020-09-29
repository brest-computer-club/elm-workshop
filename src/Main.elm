module Main exposing (main)

import Browser
import Html


titleText : String
titleText =
    (\str -> String.repeat 4 str |> String.reverse |> String.toUpper) "hello"


title : Html.Html a
title =
    Html.h1 [] [ Html.text titleText ]


main : Program () () a
main =
    Browser.sandbox
        { init = ()
        , view = \_ -> title
        , update = \_ _ -> ()
        }
