-- main = do
--     putStrLn "Choose your name: "
--     name <- getLine
--     putStrLn $ "This will be your future: " ++ fortune name

-- fortune :: String -> String  -- String needs to be capitalized
-- fortune name = name ++ " will encounter a horible fate!"

main = do
    foo <- putStrLn "Hello traveller"
    name <- getLine
    putStrLn ("hey " ++ name ++ ", get em!")