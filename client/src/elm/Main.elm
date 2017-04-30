module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput)


-- component import example

import Components.Til exposing (tilCard)


-- APP


main : Program Never Model Msg
main =
    Html.beginnerProgram { model = initialModel, view = view, update = update }



-- MODEL


type alias Model =
    { newTil : Til
    , tils : List Til
    }


type alias Til =
    { text : String
    , writer : String
    }


initialModel : Model
initialModel =
    { newTil = { text = "", writer = "" }
    , tils = [ { text = "Snow is white", writer = "Omid" }, { text = "Night is dark but it's alright", writer = "Omid" } ]
    }


addTil til tils =
    til :: tils



-- UPDATE


type Msg
    = Change String


update : Msg -> Model -> Model
update msg model =
    case msg of
        Change newTil ->
            { model | newTil = { text = newTil, writer = "Omid" } }



-- VIEW
-- Html is defined as: elem [ attribs ][ children ]
-- CSS can be applied via class names or inline style attrib


view : Model -> Html Msg
view model =
    div [ class "container", style [ ( "margin-top", "30px" ), ( "text-align", "center" ) ] ]
        [ -- inline CSS (literal)
          div [ class "row" ]
            [ div [ class "col-xs-12" ]
                [ div [ class "jumbotron" ]
                    [ img [ src "static/img/elm.jpg", style styles.img ] []
                      -- inline CSS (via var)
                    , p [] [ text ("Written by Omid") ]
                    ]
                , div []
                    [ textarea [ onInput Change ] []
                    , button [] [ text "Add T.I.L" ]
                    ]
                ]
            , div [ class "tils" ]
                [ (viewAllTils model.tils)
                ]
            ]
        ]



-- CSS STYLES


viewAllTils tils =
    ul [] (List.map tilCard tils)


styles : { img : List ( String, String ) }
styles =
    { img =
        [ ( "width", "34%" )
        , ( "border", "4px solid #337AB7" )
        ]
    }
