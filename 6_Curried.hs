-- Higher order functions. Take functions as paramaters and return functions
-- helps us not do loops (define what stuff is vs define steps)
-- really powerfull way to solve problems and think about problems

-- Curried functions (Haskell Curry)
-- Every function only takes one function
-- A space between two things is function application
-- A partially applied function is returned. 
-- Partial application (calling functions with too few parmaters)

multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x*y*z
-- so each variable is partially applied and returns a function to apply the next one