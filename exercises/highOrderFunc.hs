{-
    Exercise from Chapter 9 - 10 of The Craft of Functional Programming
    Nama    : Muhammad Yudistira Hanifmuti
    NPM     : 1606829560
-}

{-
    (*) Define the length function using map and sum.
-}
length xs = sum (map ones xs) where ones x = 1

{-
    (*) What does map (+1) (map (+1) xs) do? Can you conclude anything in
        general about properties of map f (map g xs), where f and g are arbitrary
        functions?
-}

{-
    Answer: map (+1) (map (+1) xs) akan melakukan fungsi (+1) atau menambah 1 pada setiap anggota
            dari xs dan diikuti dengan fungsi (+1) kembali. Jika digeneralisasi menjadi map f (map g xs),
            maka keduanya akan menghasilkan fungsi komposisi yang bila direpresentasikan dengan notasi
            matematis sebagai f(g(xs)) atau f o g.
-}
plusone xs = map (+1) (map (+1) xs)
compose f g xs = map f (map g xs)

{-
    Give the type of, and define the function iter so that
        iter n f x = f (f (... (f x))) 
    where f occurs n times on the right-hand side of the equation.
    For instance, we should have
        iter 3 f x = f (f (f x)) 
    and iter 0 f x should return x.
-}
iter :: (Eq(a), Num(a)) => a -> (b -> b) -> b -> b
iter 0 f x = x
iter n f x = f (iter (n-1) f x)

{-
    What is the type and effect of the following function?
    \n -> iter n succ
-}

{-
    Answer: Type dari fungsi tersebut adalah succss :: (Eq a, Num a, Enum b) => a -> b -> b.
            Efek yang diberikan dari fungsi tersebut adalah melakukan successive function atau menambah satu
            dan diulang sebanyak n kali. Dengan kata lain fungsi tersebut adalah fungsi yang mengembalikan
            n angka setelah angka yang diberikan sebagai input.
-}
succss :: (Eq a, Num a, Enum b) => a -> b -> b
succss = \n -> iter n succ

{-
    How would you define the sum of the squares of the natural numbers 1
    to n using map and foldr?
• How does the function
• mystery xs = foldr (++) [] (map sing xs)
• where
• sing x = [x]
behave?
-}