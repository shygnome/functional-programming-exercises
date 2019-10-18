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

foldExpr :: (a->a->a) -> (Float->a) -> Expr -> a
foldExpr combine constFn (C x) = constFn x
foldExpr combine constFn (e1 :+ e2) = combine (foldExpr combine constFn e1) (foldExpr combine constFn e2)
foldExpr combine constFn (e1 :- e2) = combine (foldExpr combine constFn e1) (foldExpr combine constFn e2)
foldExpr combine constFn (e1 :* e2) = combine (foldExpr combine constFn e1) (foldExpr combine constFn e2)
foldExpr combine constFn (e1 :/ e2) = combine (foldExpr combine constFn e1) (foldExpr combine constFn e2)


{- Redefine Evaluate Function -}
-- fancyEval :: Expr -> Float
-- fancyEval (C x) = x
-- fancyeval (e1 :+ e2) = foldExpr (+) fancyEval (e1 :+ e2)