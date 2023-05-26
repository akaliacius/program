main = do
    putStrLn "a: "
    aLine <- getLine
    putStrLn "b: "
    bLine <- getLine
    putStrLn "c: "
    cLine <- getLine

    let a = read aLine :: Double
    let b = read bLine :: Double
    let c = read cLine :: Double

    let root1 = roots b a (root a b c) False
    let root2 = roots b a (root a b c) True

    putStrLn (show (round root1) ++ " " ++ show (round root2))

root a b c = sqrt (b*b - 4 * a * c)

roots b a root negative 
    | negative = ((-b) - root) / (2 * a) 
    | otherwise = ((-b) + root) / (2 * a) 