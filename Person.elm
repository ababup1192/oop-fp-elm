module Person exposing (Person(..), getName, setName, getAge, setAge)


type alias Name =
    String


type alias Age =
    Int



-- Person "Takeshi" 15


type Person
    = Person Name Age



-- (Person "Takeshi" 15 |> getName) == "Takeshi"


getName : Person -> Name
getName (Person name _) =
    name



-- (Person "Takeshi" 15 |> setName "John") == Person "John" 15


setName : Name -> Person -> Person
setName name (Person _ age) =
    Person name age



-- (Person "Takeshi" 15 |> getAge) == 15


getAge : Person -> Age
getAge (Person _ age) =
    age



-- (Person "Takeshi" 15 |> setAge 20) == Person "John" 20


setAge : Age -> Person -> Person
setAge age (Person name _) =
    Person name age



-- (Person "Takeshi" 15 |> toString) == "Person \"Takeshi\" 15"
