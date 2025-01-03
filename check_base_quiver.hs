:l src/base.hs -- base.hsをロード

instance Quiver BoolQuiver where
    data QuiverData BoolQuiver = QuiverData { vertices = [True, False], arrows = [TrueToFalse, FalseToTrue], source = \case TrueToFalse -> True; FalseToTrue -> False, target = \case TrueToFalse -> False; FalseToTrue -> True }

main = do
    print $ vertices BoolQuiver
    print $ arrows BoolQuiver
    print $ source BoolQuiver TrueToFalse
    print $ target BoolQuiver TrueToFalse
    print $ source BoolQuiver FalseToTrue
    print $ target BoolQuiver FalseToTrue

