module Helper exposing (..)

import Html


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 float1 float2 float3 =
    float1 + float2 + float3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2


langs : List { name : String, releaseYear : Int, currentVersion : String }
langs =
    [ { name = "elm", releaseYear = 2012, currentVersion = "0.19.1" }, { name = "Javascript", releaseYear = 1995, currentVersion = "ECMAScript 2025" } ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames listLanguages =
    List.map .name listLanguages


users : List { name : String, uType : String }
users =
    [ { name = "Roberto", uType = "Student" }, { name = "Mitsiu", uType = "Professor" } ]


onlyStudents : List { name : String, uType : String } -> List String
onlyStudents listUsers =
    List.map
        (\user ->
            if user.uType == "Student" then
                user.name

            else
                ""
        )
        listUsers


type alias Videogame =
    { title : String, releaseYear : Int, available : Bool, downloads : Int, genres : List String }


videoGames : List Videogame
videoGames =
    [ { title = "Control", releaseYear = 2019, available = True, downloads = 10, genres = [ "Action", "Shooter" ] }
    , { title = "Ocarina of time", releaseYear = 2022, available = True, downloads = 100, genres = [ "Action", "Adventure" ] }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres videogames =
    List.map .genres videogames


type alias Computer =
    { ram : String, model : String, brand : String, screenSize : String }


myLaptop : Computer
myLaptop =
    { ram = "16gb", model = "Inspiron15", brand = "Dell", screenSize = "15.6" }


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 [] [ Html.text "My laptop" ]
        , Html.div []
            [ Html.ul []
                [ Html.li [] [ Html.text ("Ram: " ++ .ram myLaptop) ]
                , Html.li [] [ Html.text ("Modelo: " ++ .model myLaptop) ]
                , Html.li [] [ Html.text ("Marca: " ++ .brand myLaptop) ]
                , Html.li [] [ Html.text ("Pulgadas: " ++ .screenSize myLaptop) ]
                ]
            ]
        ]
