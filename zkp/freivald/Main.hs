module Main where
{-# LANGUAGE ScopedTypeVariables #-}

import Data.Matrix
import System.Random
import System.IO.Unsafe

main :: IO ()
-- This is Freivald implementation. We pass Matrix A B and its Result along with a psuedom random Matrix.

freivald :: Matrix Int -> Matrix Int -> Matrix Int -> Matrix Int -> Bool
freivald a b c r = (x == y)
    where
        x1 = multStd b r
        x = multStd a x1
        y = multStd c r

-- a crap way to generate a random. Need to clean this up

gr :: Int -> Int
gr a = unsafePerformIO (getStdRandom( randomR (a,a*10))) `mod` 7


-- Just a trial test 
m1 = matrix 2 2 $ \(i,j) -> 2*i - j
m2 = fromLists [[10,11],[12,13]]

-- Generate a list with randoms and assign it to matrix. Needs cleanup

m3 = fromLists [[gr 33, gr 66],[gr 63,gr 43]]

-- Just a trial to genearte a matrix and fail
m4 = matrix 2 2 $ \(i,j) -> (2*i + 10*j)

test = multStd m1 m2

-- pr is a positive test and pr_ is a negative test
pr = freivald m1 m2 test m3
pr_ = freivald m1 m4 test m3

main = do
     putStrLn (" Inputs ")
     putStrLn (show m1)
     putStrLn (show m2)
     putStrLn (" Output ")
     putStrLn (show test)
     putStrLn (" Random matrix")
     putStrLn (show m3)
     putStrLn (" With correct proof")
     putStrLn (show pr)
     putStrLn (" No correct proof")
     putStrLn (show pr_)

