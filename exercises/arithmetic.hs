data Expr = C Float
            | Expr :+ Expr 
            | Expr :- Expr 
            | Expr :* Expr
            | Expr :/ Expr
        deriving Show

evaluate :: Expr -> Float
evaluate (C x) = x
evaluate (e1 :+ e2) = evaluate e1 + evaluate e2
evaluate (e1 :- e2) = evaluate e1 - evaluate e2
evaluate (e1 :* e2) = evaluate e1 * evaluate e2
evaluate (e1 :/ e2) = evaluate e1 / evaluate e2

{- Higher Order Function for Expr -}
mapExpr :: (Float->Float) -> Expr -> Expr
mapExpr f (C x) = C (f x)
mapExpr f (e1 :+ e2) = (mapExpr f e1) :+ (mapExpr f e2)
mapExpr f (e1 :- e2) = (mapExpr f e1) :- (mapExpr f e2)
mapExpr f (e1 :* e2) = (mapExpr f e1) :* (mapExpr f e2)
mapExpr f (e1 :/ e2) = (mapExpr f e1) :/ (mapExpr f e2)
