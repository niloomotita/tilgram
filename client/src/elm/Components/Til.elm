module Components.Til exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


type alias Til =
    { text : String
    , writer : String
    }



-- til component


tilCard : Til -> Html a
tilCard model =
    li
        [ class "h2" ]
        [ text ("T.I.L. " ++ model.text) ]
