-- https://stackoverflow.com/questions/16430025/ambiguous-occurrence/16430305
import Prelude hiding (Eq, (==), (/=))  -- Need to import prelude with these hiding so doesn't conflict with standard ones from prelude

class Eq a where
    (==) :: a -> a -> Bool
    (/=) :: a -> a -> Bool
    x == y = not (x /= y)
    x /= y = not (x == y)

data TrafficLight = Red | Yellow | Green

instance Eq TrafficLight where  
    Red == Red = True
    Yellow == Yellow = True
    Green == Green = True
    _ == _ = False

instance Show TrafficLight where  
    show Red = "Red light"  
    show Yellow = "Yellow light"  
    show Green = "Green light" 


-- VS Code Shortcuts
-- Move Code Alt+Up/Down
-- Create Collapsible Region Ctrl+M+H/Ctrl+M+U
-- Comment Code Block Ctrl+K+C/Ctrl+K+U
-- Peek Definition Alt+F12
-- Navigate Forward/Backward Ctrl+–/Ctrl+Shift+–

-- A kinda True-ish False-ish defining typeclass
class YesNo a where
    yesno :: a -> Bool

instance YesNo Int where
    yesno 0 = False
    yesno _ = True

instance YesNo [a] where
    yesno [] = False
    yesno _ = True

instance YesNo Bool where
    yesno = id  -- id is a standard library that takes a paramater and returns the same thing

instance YesNo (Maybe a) where
    yesno (Just _) = True
    yesno Nothing = False


