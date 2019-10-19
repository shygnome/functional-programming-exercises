data Direction = North | East | South | West
            deriving (Eq, Show, Enum)

right :: Direction -> Direction
right d = toEnum(succ (fromEnum d) `mod` 4)