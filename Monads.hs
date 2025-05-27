module Main where


safeDivide :: Int -> Int -> Either String Int
safeDivide _ 0 = Left "Wrong : Divide by Zero"
safeDivide x y = Right (x `div` y)

main :: IO ()
main = print "Do nothing"