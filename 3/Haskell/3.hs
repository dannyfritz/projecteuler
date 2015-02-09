-- Problem 3
-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?

isDivisible :: (Integral a) => a -> a -> Bool
isDivisible numerator denominator = (mod numerator denominator) == 0

firstPrimeTest :: (Integral a) => a -> a
firstPrimeTest primeCandidate = ceiling $ sqrt $ fromIntegral primeCandidate

isPrime :: (Integral a) => a -> Bool
isPrime primeCandidate = not (any (isDivisible primeCandidate) [2..firstPrimeTest primeCandidate])

main :: IO ()
main =
  putStrLn $ show $
    head $
    filter isPrime $
    filter (isDivisible 600851475143)
    [firstPrimeTest 600851475143, (firstPrimeTest 600851475143)-1..1]
