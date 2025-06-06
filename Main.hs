
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Network.Wai
import Network.Wai.Handler.Warp
import Network.HTTP.Types (status200)
import qualified Data.ByteString.Lazy.Char8 as L8

app :: Application
app _ respond = respond $ responseLBS
    status200
    [("Content-Type", "text/plain")]
    "Здравей, свят от Haskell уеб сървър!"

main :: IO ()
main = do
    putStrLn "Сървърът стартира на порт 8080..."
    run 8080 app
