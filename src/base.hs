-- 型クラスを使った圏の定義
class Category cat where 
    -- 恒等射。圏クラスのメソッド
    id :: cat a a 
    -- 射の合成。圏クラスのメソッド
    (.) :: cat b c -> cat a b -> cat a c 

-- 関手の定義
class (Category c, Category d) => Functor c d f where   
    -- 関手の射に対する作用。関手クラスのメソッド  
    fmap :: c a b -> d (f a) (f b) 

-- 関手の合成を定義する型クラス
class (Functor c d f, Functor d e g) => FunctorCompose c d e f g h | f g -> h where
    composeF :: f a -> g a -> h a

newtype f :~> g = NT { unNT :: forall x. f x -> g x } -- 自然変換の定義

data FunctorCategory c => Category c where
    Category :: (forall a. c a a) -> (forall a b c. c b c -> c a b -> c a c) -> Category c

