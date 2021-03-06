#!/usr/bin/env stack
--stack --resolver lts-8.17 script

module Main7 where

import Text.Read

displayAge :: Maybe Int -> IO()
displayAge maybeAge =
    case maybeAge of
        Nothing -> putStrLn "You provided invalid input"
        Just age -> putStrLn $ "In that year, you will be: " ++ show age

main :: IO()
main = do
    putStrLn "Please enter your birth year"
    birthYearString <- getLine
    putStrLn "Please enter some year in the future"
    futureYearString <- getLine
    let maybeAge =
            case readMaybe birthYearString of
                Nothing -> Nothing
                Just birthYear ->
                    case readMaybe futureYearString of
                        Nothing -> Nothing
                        Just futureYear -> Just (futureYear - birthYear)
    displayAge maybeAge
