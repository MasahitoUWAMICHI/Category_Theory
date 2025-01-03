import CategoryBase

instance QuiverData Bool where
    vertices _ = [True, False]
    arrows _ = [TrueToFalse, FalseToTrue]
    source _ TrueToFalse = True
    source _ FalseToTrue = False
    target _ TrueToFalse = False
    target _ FalseToTrue = True

main = do
    print $ vertices Bool
    print $ arrows Bool
    print $ source Bool TrueToFalse
    print $ target Bool TrueToFalse
    print $ source Bool FalseToTrue
    print $ target Bool FalseToTrue

