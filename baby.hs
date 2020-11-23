-- :set prompt "ghci> ", remember the colon
doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleThem x y z = doubleUs x y + doubleMe z
doubleSmallNumber x = if x > 100
                        then x
                        else doubleMe x
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG" | x <- xs, odd x]

length' xs = sum [1 | _ <- xs]  
-- If don't say the function type it's implicit and highlited here. If not can write it explicitly which is better
-- removeNonUppercase :: [Char] -> [Char]  
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]  -- this removes uppercase letters

makeChicken :: String -> String
makeChicken x = "chicken"

makeChickens :: String -> [String]  -- OUTPUT TYPE IS A LIST OF STRINGS!!!!!!!
makeChickens x = take (length x) (repeat "chicken")

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

factorial :: Integer -> Integer  -- Integers use bignums and are much less effecient than Int
factorial n = product [1..n]