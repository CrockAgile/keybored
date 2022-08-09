module Main exposing (main)

import Browser
import Html
import Html.Attributes as Attr


main : Program () Model Msg
main =
    Browser.document { init = init, update = update, view = view, subscriptions = subscriptions }


type alias Model =
    {}


init : () -> ( Model, Cmd Msg )
init _ =
    ( {}, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


type Msg
    = None


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        None ->
            ( model, Cmd.none )


view : Model -> Browser.Document Msg
view model =
    { title = "MIDI Keybored"
    , body =
        [ Html.div [ Attr.style "font-family" "monospace" ] []
        , Html.h1 [] [ Html.text "TODO" ]
        ]
    }
