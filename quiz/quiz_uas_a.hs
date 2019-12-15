module QuizA where

{- Soal 1 weirdFilter -}

-- numberRemoval on string
notNumber x = x `notElem` "1234567890"
numberRemoval = filter notNumber

-- isThreeOrLessVowels filter
isVowel x = x `elem` "aiueoAIUEO"
countVowel = length . filter isVowel
isThreeOrLessVowels str = countVowel str < 4

-- isNotAppearTwiceInARow filter
isNotAppearTwiceInARow (a:b:ls) | (a==b) = False
isNotAppearTwiceInARow (a:ls) = isNotAppearTwiceInARow ls
isNotAppearTwiceInARow [] = True

weirdFilter :: [String] -> [String]
weirdFilter = filter isThreeOrLessVowels
            . filter isNotAppearTwiceInARow
            . map numberRemoval

-- >>> weirdFilter ["ab3c", "bananae", "fuzzy", "c1c2"]
-- ["abc"]
--

{- Soal 2 rotabc -}

rotabc :: String -> String
rotabc = map abc
    where abc 'a' = 'b'
          abc 'b' = 'c'
          abc 'c' = 'a'
          abc x = x

-- >>> rotabc "scyc sukc hcskell"
-- "saya suka haskell"
--

{- Soal 3 point-free style last -}

lastPFS = head . reverse

-- >>> lastPFS "Haskell"
-- 'l'
--

{- Soal 4 zcb -}

-- Pemanggilan fungsi zcb t x k , menyatakan bahwa pada waktu t , 
-- contract ini akan senilai dengan x pada kurs k .

-- one :: Currency -> Contract
-- -- Receive one unit of currency immediately

-- scaleK :: Float -> Contract -> Contract
-- -- Acquire specified number of contracts

-- at :: Date -> Contract -> Contract
-- -- Acquire the contract at specified date

zcb :: Date -> Double -> Currency -> Contract
zcb t x k =  at t (scaleK x (one k))

{- Soal 5 Penerapan Functional Style -}

-- dataPoints = [1, 2, 3, 4, 5]
-- xAxis = dataPoints.map((item, index) => {
--     let temp = new Date();
--     temp.setMonth(temp.getMonth() + item);
--     return temp.getMonth() + " " + temp.getYear();
-- });

-- pseudocode di atas menggunakaan konsep high order function yaitu
-- mapping pada list yang menerima sebuah function untuk diterapkan
-- terhadap setiap elemen di dalam list, yaitu untuk memetakan label
-- bulan untuk Axis X pada grafik.

{- Soal 6 Monad/Applicative Functor -}

-- Kelompok kami menggunakan React Hooks yang merupakan Applicative Functor
-- pada React.

{- Soal 7 Pure Function javascript -}

-- function isRootPath(pathname) {
--     return pathname === "/";
-- }
