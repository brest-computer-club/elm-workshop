module Main exposing (main)

import Browser
import Html


main : Program () () msg
main =
    Browser.sandbox
        { init = ()
        , view = \_ -> Html.text "salut"
        , update = \_ _ -> ()
        }
