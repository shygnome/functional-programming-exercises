module QuizB where

{- Soal 1 capitalise -}

-- > capitalise :: String -> [String] -> String
-- > capitalise "this is a sentence." ["a", "is"]
-- "This is a Sentence."

getWord word [] = (word,[])
getWord word (x:xs) | x == ' ' = (word, xs)
                    | x /= ' ' = getWord (word ++ [x]) xs

-- >>> getWord [] "this is a sentence"
-- ("this","is a sentence")
--

splitter lw []  = lw
splitter lw inp = let (word, rest) = getWord "" inp
                  in splitter (lw ++ [word]) rest 
                  
-- >>> splitter [] "this is a sentence."
-- ["this","is","a","sentence."]
--

{- Soal 2 dot function -}
dot :: (b -> c) -> (a -> b) -> a -> c
dot f g = \x -> f (g x)

{- Soal 3 last with foldl -}
myLast :: Num a => [a] -> a
myLast = foldl (\x y -> y) 0

{- Soal 4 zcb -}

-- Pemanggilan fungsi zcb t x k , menyatakan bahwa pada waktu t , 
-- contract ini akan senilai dengan x pada kurs k .

-- one :: Currency -> Contract
-- -- Receive one unit of currency immediately

-- scaleK :: Float -> Contract -> Contract
-- -- Acquire specified number of contracts

-- at :: Date -> Contract -> Contract
-- -- Acquire the contract at specified date

-- zcb :: Date -> Double -> Currency -> Contract
-- zcb t x k =  at t (scaleK x (one k))

