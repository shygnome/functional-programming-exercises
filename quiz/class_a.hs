{- (1) Fungsi maxTiga -}

maxTiga :: Ord b => b -> b -> b -> b
maxTiga a b c = foldr max a [b,c]

{- (2) Evaluasi fungsi -}

arr2 = [ (x,y) | x <- [1..4], y <- [2..6], x * 2 == y]

{- (3) quickSort -}

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = (quickSort [y | y <- xs, y <= x])
                ++ [x] ++
                (quickSort [y | y <- xs, y > x])

{- (4)  -}