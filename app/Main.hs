-- | Main file
module Main where

-- | The main function
main :: IO ()
main = do
    n <- (read :: String -> Integer) <$> getLine    
    if isEven n
           then putStrLn "Even"
           else putStrLn "Not even"
    main

-- | The 'isEven' function tests if an Integer is even
isEven :: Integer -> Bool
isEven x = is_even x 0 True

-- | Helper function for isEven
is_even :: Integer -> Integer -> Bool -> Bool
is_even x y z | x == y = z
              | otherwise = is_even x (y+1) (not z)