{- (1) Fungsi KPK -}

kpk x y = foldl (min) (x*y) [i | i <- (map (*x) [1..y]), j <- (map (*y) [1..x]), i==j]

{- (2) Evaluasi fungsi -}

arr2 = [(x,y) | x<-[1..3], y<-[1..(2*x)]]

{- (3) Merge Sort -}

mergeSort :: ([a] -> [a] -> [a]) -> [a] -> [a]
mergeSort merge xs
        | length xs < 2 = xs
        | otherwise = merge (mergeSort merge first) (mergeSort merge second)
        where first = take half xs 
              second = drop half xs 
              half = length xs `div` 2

merge :: Ord a => [a] -> [a] -> [a]
merge [] ys         = ys
merge xs []         = xs
merge (x:xs) (y:ys) | x < y     = x:merge xs (y:ys)
                    | otherwise = y:merge (x:xs) ys