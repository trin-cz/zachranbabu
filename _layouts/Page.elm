module Page exposing (footer, header, layout, main, markdown)

import Elmstatic exposing (..)
import Html exposing (..)
import Html.Attributes as Attr exposing (alt, attribute, class, href, src)
import Markdown
import Styles


githubIcon : Html Never
githubIcon =
    let
        pathNode =
            Html.node "path"
                [ attribute "fill" "#fff"
                , attribute "d" """
M7.999,0.431c-4.285,0-7.76,3.474-7.76,7.761 c0,3.428,2.223,6.337,5.307,7.363c0.388,0.071,0.53-0.168,0.53-0.374c0-0.184-0.007-0.672-0.01-1.32 c-2.159,0.469-2.614-1.04-2.614-1.04c-0.353-0.896-0.862-1.135-0.862-1.135c-0.705-0.481,0.053-0.472,0.053-0.472 c0.779,0.055,1.189,0.8,1.189,0.8c0.692,1.186,1.816,0.843,2.258,0.645c0.071-0.502,0.271-0.843,0.493-1.037 C4.86,11.425,3.049,10.76,3.049,7.786c0-0.847,0.302-1.54,0.799-2.082C3.768,5.507,3.501,4.718,3.924,3.65 c0,0,0.652-0.209,2.134,0.796C6.677,4.273,7.34,4.187,8,4.184c0.659,0.003,1.323,0.089,1.943,0.261 c1.482-1.004,2.132-0.796,2.132-0.796c0.423,1.068,0.157,1.857,0.077,2.054c0.497,0.542,0.798,1.235,0.798,2.082 c0,2.981-1.814,3.637-3.543,3.829c0.279,0.24,0.527,0.713,0.527,1.437c0,1.037-0.01,1.874-0.01,2.129 c0,0.208,0.14,0.449,0.534,0.373c3.081-1.028,5.302-3.935,5.302-7.362C15.76,3.906,12.285,0.431,7.999,0.431z
            """
                ]
                []
    in
    Html.node "svg" [ attribute "width" "20", attribute "height" "20", attribute "viewBox" "0 0 16 16" ] [ pathNode ]


twitterIcon : Html Never
twitterIcon =
    let
        pathNode =
            Html.node "path"
                [ attribute "fill" "#fff"
                , attribute "d" """
M15.969,3.058c-0.586,0.26-1.217,0.436-1.878,0.515c0.675-0.405,1.194-1.045,1.438-1.809 c-0.632,0.375-1.332,0.647-2.076,0.793c-0.596-0.636-1.446-1.033-2.387-1.033c-1.806,0-3.27,1.464-3.27,3.27 c0,0.256,0.029,0.506,0.085,0.745C5.163,5.404,2.753,4.102,1.14,2.124C0.859,2.607,0.698,3.168,0.698,3.767 c0,1.134,0.577,2.135,1.455,2.722C1.616,6.472,1.112,6.325,0.671,6.08c0,0.014,0,0.027,0,0.041c0,1.584,1.127,2.906,2.623,3.206 C3.02,9.402,2.731,9.442,2.433,9.442c-0.211,0-0.416-0.021-0.615-0.059c0.416,1.299,1.624,2.245,3.055,2.271 c-1.119,0.877-2.529,1.4-4.061,1.4c-0.264,0-0.524-0.015-0.78-0.046c1.447,0.928,3.166,1.469,5.013,1.469 c6.015,0,9.304-4.983,9.304-9.304c0-0.142-0.003-0.283-0.009-0.423C14.976,4.29,15.531,3.714,15.969,3.058z
            """
                ]
                []
    in
    Html.node "svg" [ attribute "width" "20", attribute "height" "20", attribute "viewBox" "0 0 16 16" ] [ pathNode ]


facebookIcon : Html Never
facebookIcon =
    let
        pathNode =
            Html.node "path"
                [ attribute "fill" "#fff"
                , attribute "d" """
M211.9 197.4h-36.7v59.9h36.7V433.1h70.5V256.5h49.2l5.2-59.1h-54.4c0 0 0-22.1 0-33.7 0-13.9 2.8-19.5 16.3-19.5 10.9 0 38.2 0 38.2 0V82.9c0 0-40.2 0-48.8 0 -52.5 0-76.1 23.1-76.1 67.3C211.9 188.8 211.9 197.4 211.9 197.4z
            """
                ]
                []
    in
    Html.node "svg" [ attribute "width" "24", attribute "height" "24", attribute "viewBox" "0 0 500 500" ] [ pathNode ]


elmIcon : Html Never
elmIcon =
    let
        pathNodes =
            [ Html.node "path"
                [ attribute "fill" "#5FB4CB"
                , attribute "d" "M128 135.022L7.023 256h241.955z"
                ]
                []
            , Html.node "path"
                [ attribute "fill" "#EEA400"
                , attribute "d" "M202.332 195.311L256 248.98V141.643z"
                ]
                []
            , Html.node "path"
                [ attribute "fill" "#596277"
                , attribute "d" "M120.978 128L0 7.022V248.98z"
                ]
                []
            , Html.node "path"
                [ attribute "fill" "#5FB4CB"
                , attribute "d" "M256 113.806V0H142.193z"
                ]
                []
            , Html.node "path"
                [ attribute "fill" "#8CD636"
                , attribute "d" "M195.584 67.434l60.288 60.289l-60.563 60.564l-60.29-60.29z"
                ]
                []
            , Html.node "path"
                [ attribute "fill" "#8CD636"
                , attribute "d" "M7.021 0l55.725 55.726h121.13L128.15 0z"
                ]
                []
            , Html.node "path"
                [ attribute "fill" "#EEA400"
                , attribute "d" "M128 120.979l55.322-55.323H72.677z"
                ]
                []
            ]
    in
    Html.node "svg" [ attribute "width" "20", attribute "height" "20", attribute "viewBox" "0 0 256 256" ] pathNodes


markdown : String -> Html Never
markdown s =
    let
        mdOptions : Markdown.Options
        mdOptions =
            { defaultHighlighting = Just "elm"
            , githubFlavored = Just { tables = False, breaks = False }
            , sanitize = False
            , smartypants = True
            }
    in
    Markdown.toHtmlWith mdOptions [ attribute "class" "markdown" ] s


header : List (Html Never)
header =
    [ div [ class "header-logo" ]
        [ img [ alt "Zachran babu", src "/img/zachranbabu.svg", attribute "height" "70" ]
            []
        , h1 [] [ text "Zachraň bábu (i dědu)" ]
        ]
    , div [ class "navigation" ]

        [ ul []
            [ li []
                [ a [ href "/posts" ]
                    [ text "Roušky" ]
                ]
            , li []
                [ a [ href "/seem-folder" ]
                    [ text "Zakladač šikmých proužků" ]
                ]
            -- , li []
            --     [ a [ href "/contact" ]
            --         [ text "Contact" ]
            --     ]
            ]
        ]
    ]


footer : Html Never
footer =
    div [ class "footer" ]
        [ --     img
          --     [ alt "Author's blog"
          --     , src "/img/logo.png"
          --     , attribute "style" "float: left; padding-top: 7px"
          --     , attribute "width" "75"
          --     ]
          --     []
          -- ,
          div [ class "link" ]
            [ facebookIcon
            , a [ href "https://facebook.com/zachranbabu" ]
                [ text "Diskutujte, sdílejte" ]
            ]
        , div [ class "link" ]
            [ githubIcon
            , a [ href "https://github.com/trin-cz/zachranbabu" ]
                [ text "Vylepšete web" ]
            ]

        -- , div [ class "link" ]
        --     [ twitterIcon
        --     , a [ href "https://twitter.com" ]
        --         [ text "Author's Twitter" ]
        --     ]
        , div [ class "link" ]
            [ elmIcon
            , a [ href "https://www.npmjs.com/package/elmstatic" ]
                [ text "ElmStatic" ]
            ]
        ]


layout : String -> List (Html Never) -> List (Html Never)
layout title contentItems =
    header
        ++ [ div [ class "sidebar" ]
                []
           , div [ class "content" ]
                ([ h1 [] [ text title ] ] ++ contentItems)
           , footer
           , Elmstatic.stylesheet "/styles.css"
           , Styles.styles
           ]


main : Elmstatic.Layout
main =
    Elmstatic.layout Elmstatic.decodePage <|
        \content ->
            Ok <| layout content.title [ markdown content.content ]
