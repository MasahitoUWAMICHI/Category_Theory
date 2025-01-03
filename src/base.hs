module CategoryBase where

data QuiverData a b = QuiverData { vertices :: a, arrows :: b, source :: b -> a, target :: b -> a }
class Quiver q where
    data QuiverData q
    vertices :: q -> a
    arrows :: q -> b
    source :: b -> a
    target :: q -> b -> a

