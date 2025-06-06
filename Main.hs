
module Main where

-- Stack data structure implementation

data Stack a = Stack [a] deriving Show

empty :: Stack a
empty = Stack []

push :: a -> Stack a -> Stack a
push x (Stack xs) = Stack (x:xs)

pop :: Stack a -> (Maybe a, Stack a)
pop (Stack []) = (Nothing, Stack [])
pop (Stack (x:xs)) = (Just x, Stack xs)

peek :: Stack a -> Maybe a
peek (Stack []) = Nothing
peek (Stack (x:_)) = Just x

isEmpty :: Stack a -> Bool
isEmpty (Stack xs) = null xs

main :: IO ()
main = do
    let s0 = empty
        s1 = push 1 s0
        s2 = push 2 s1
        (popped, s3) = pop s2
    print s3
    print popped
