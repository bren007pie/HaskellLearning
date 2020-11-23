--data Bool = True | False  
--newtype typename = valueconstructor | otherpossiblevalues

-- Algebraic Data Type for Chickens
data Chicken = Angry Int | Clucking Int | Eating | Happy Int | Birding Int

-- Intermediate algebraic data type for points, helpful for shapes
data Point = Point Float Float deriving (Show)  -- Having the Point as a type constructor doesn't matter but is common for only one value constructor
-- Algebraic Data type for Shapes
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

-- Surface area function for our algebraic DT using pattern matching with the value constructors
surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rectangle (Point x1 y1) (Point x2 y2)) = ( abs $ x2 - x1 ) * (abs $ y2 - y1)

-- Nudge function to move amount of points on x or y axis
nudge :: Shape -> Float -> Float -> Shape  -- 3 inputs 1 output
nudge (Circle (Point x y) r ) xmove ymove = Circle (Point (x+xmove) (y + ymove) ) r 
nudge (Rectangle (Point x1 y1) (Point x2 y2 ) ) xmove ymove = Rectangle (Point (x1 + xmove) (y1 + ymove)) (Point (x2+xmove) (y2+ymove) )  

-- Some Shortcuts functions to make shapes at the origin (atleast touching the origin)
baseCircle :: Float -> Shape
baseCircle r = Circle (Point 0 0) r

baseRectangle :: Float -> Float -> Shape
baseRectangle xsize ysize = Rectangle (Point 0 0) (Point xsize ysize)
-- remember, no parentheses for function calls. Functions are to seperate parameters

-- Using Folds
sum' :: (Num a) => [a] -> a  -- this says taking type variable that is a member of number (class constraint), takes list of homogenous a and turns it into a single value
sum' xs = foldl (\acc x -> acc + x) 0 xs -- foldl is starting from left fold, xs is the list, 0 is accumulator, and \acc x 0 -> acc + x is the lambda binary function
