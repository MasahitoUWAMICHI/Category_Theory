class Category cat where -- 型クラスを使った圏の定義
    id :: cat a a -- 恒等射。圏クラスのメソッド
    (.) :: cat b c -> cat a b -> cat a c -- 射の合成。圏クラスのメソッド

class (Category c, Category d) => Functor c d f where -- 関手の定義
    fmap :: c a b -> d (f a) (f b) -- 関手の合成。関手クラスのメソッド

newtype f :~> g = NT { unNT :: forall x. f x -> g x } -- 自然変換の定義