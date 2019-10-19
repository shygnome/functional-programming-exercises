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

{- (4) jumlahList -}
jumlahList xs = foldr (+) 0 xs

{- (5) Fungsi misteri -}
misteri xs ys = concat (map (\x -> map (\y -> (x,y)) ys) xs)

{- (6) primes -}
primes = sieve [2..]
    where sieve (x:xs) = x:(sieve [y | y <- xs, y `mod` x /= 0])

{- (7) fungsi flip -}
-- flip :: (a -> b -> c) -> b -> a -> c
-- flip f x y = f y x

{- (8) Tipe dari fungsi updateState -}

{- 
    Fungsi updateState memiliki tipe updateState :: (RobotState -> RobotState) -> Robot ().
    Fungsi menerima sebuah fungsi yang akan melakukan pengubahan pada RobotState.
    Fungsi tersebut dapat mengubah suatu atribut pada RobotState.
    Dan hasil akhir dari fungsi updateState dibungkus kembali menjadi Robot ()
-}

{- (9) Definisi fungsi turnRight -}

{- 
    turnRight :: Robot ()
    turnRight = updateState (\s -> s {facing = right (facing s)})
-}

{- (10) Tipe dari fungsi toEnum dalam fungsi right -}

{-
    Fungsi toEnum memiliki tipe toEnum :: Enum a => Int -> a.
    Fungsi ini akan mengembalikan suatu jenis data berdasarkan Enum yang sudah dideklarasikan.
    Untuk fungsi right, karena sudah dideklarasikan bahwa fungsi right akan mengembalikan Direction,
    maka toEnum ini akan menghasilkan Direction.
-}
