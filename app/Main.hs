
module Main where

    import System.Environment

    import DayX

    days =
        [ 
            ("01", [DayX.part1, DayX.part2])
        ]


    main :: IO ()
    main = do 
        args <- getArgs
        print args
        let day = (read (head args) :: Int) - 1
        print day
        let (file, solutions) = days !! day
        let part = (read (args !! 1) :: Int) - 1
        print part
        let solution = solutions !! part
        solution (readFile ("inputs/main/day" ++ file ++ ".txt"))

