
module Main where

-- Simple calculator parsing expressions like "2 + 3 * 4"

import Data.Char (isDigit)
import Text.Read (readMaybe)

evaluate :: String -> Maybe Int
evaluate expr =
    let tokens = words expr
    in evalTokens tokens

evalTokens :: [String] -> Maybe Int
evalTokens [x] = readMaybe x
evalTokens (x:"+":y:rest) = do
    a <- readMaybe x
    b <- readMaybe y
    evalTokens (show (a + b) : rest)
evalTokens (x:"*":y:rest) = do
    a <- readMaybe x
    b <- readMaybe y
    evalTokens (show (a * b) : rest)
evalTokens _ = Nothing

main :: IO ()
main = do
    putStrLn "Въведете израз (напр. 2 + 3 * 4):"
    input <- getLine
    case evaluate input of
        Just result -> print result
        Nothing -> putStrLn "Невалиден израз."
