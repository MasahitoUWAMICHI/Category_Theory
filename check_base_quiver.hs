:l src/base.hs -- base.hsをロード

instance Quiver BoolQuiver where
    data QuiverData BoolQuiver = QuiverData { vertices = [True, False], arrows = [TrueToFalse, FalseToTrue], source = \case TrueToFalse -> True; FalseToTrue -> False, target = \case TrueToFalse -> False; FalseToTrue -> True }

vertices BoolQuiver -- [True, False]
arrows BoolQuiver -- [TrueToFalse, FalseToTrue]
source TrueToFalse -- True
target TrueToFalse -- False
source FalseToTrue -- False
target FalseToTrue -- True
