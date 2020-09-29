module Main exposing (myFunc)


type alias User =
    { name : String
    , age : Int
    }


type Age
    = Adult Int
    | Child


ageToInt : Age -> Int
ageToInt a =
    case a of
        Adult age ->
            age

        Child ->
            5


type alias Name =
    String


user : () -> Age -> Name -> User
user _ =
    \a name -> User name (ageToInt a)


myFunc : User
myFunc =
    Debug.log "->" (user () (Adult 231) "salut")
