module Main where

makeGreeting :: String -> String -> String
makeGreeting salutation person = 
  let messageWithTrailingSpace = salutation <> " "
  in messageWithTrailingSpace <> person

-- не сте ограничени до една поеменлива в let bindings:

extendedGreeting :: [Char] -> String
extendedGreeting person =
    let hello = makeGreeting helloStr person
        goodDay = makeGreeting "I hope you have a nice afternoon" person
        goodBye = makeGreeting "See you later" person
        helloStr = "Hello"
    in hello <> "\n" <> goodDay <> "\n" <> goodBye

-- при тези свързвания от най-високо ниво, сте свободни да препращате към свързвания, които дефинирате по-късно в самия let израз:

extendedGreeting' :: [Char] -> String
extendedGreeting' person =
  let joinWithNewLines a b = a <> " " <> b
      hello = makeGreeting "Hello" person
      goodbye = makeGreeting "Goodbye" person
  in joinWithNewLines hello goodbye 

-- Хаскел поддържа  recursive let bindings, което значи, че елементите в нашия let може да се отнасят един към друг. Редът няма значение. 

extendedGreeting'' :: [Char] -> String
extendedGreeting'' person =
  let joinWithNewLines a b = a <> " " <> b
      joined = joinWithNewLines hello goodBye
      hello = makeGreeting "Hello" person
      goodBye = makeGreeting "Goodbye" person
  in joined  
  



main :: IO ()
main = print $ makeGreeting "Hello" "Evi"

