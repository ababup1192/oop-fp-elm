module Foo exposing (..)

import Bar exposing (..)


{-| Foo 5 (Bar 6 7)
-}
type Foo
    = Foo Int Bar


getX : Foo -> Int
getX (Foo x _) =
    x


setX : Foo -> Int -> Foo
setX (Foo _ bar) x =
    Foo x bar


getY : Foo -> Int
getY (Foo _ (Bar y _)) =
    y


setY : Foo -> Int -> Foo
setY (Foo x (Bar _ z)) y =
    Foo x (Bar y z)


getZ : Foo -> Int
getZ (Foo _ (Bar _ z)) =
    z


setZ : Foo -> Int -> Foo
setZ (Foo x (Bar y _)) z =
    Foo x (Bar y z)


{-| (Foo 5 (Bar 6 7) |> calc) == 18
-}
calc : Foo -> Int
calc (Foo x (Bar y z)) =
    x + y + z
