module Problem2 where

{-------------------------------------------------------------------------------

CS:3820 Fall 2020 Problem of the Week, Week 2
=============================================

The problem this week builds on the ideas of recursion developed during this
week's lecture.  The "Collatz conjecture" is a famous unproven result in
mathematics, named after the German mathematician Lothar Collatz.  The
conjecture is based on the following mathematical function on integers:


     f(x) =  x / 2           if x is even
             3x + 1          if x is odd

A Collatz sequence starting at n is a series of numbers

  n, f(n), f(f(n)), ...

until it reaches 1.  For example, the Collatz sequence starting at 3 is:

  3, 10, 5, 16, 8, 4, 2, 1

The Collatz conjecture is that the Collatz sequence reaches 1 for every positive
starting value.  Your problem is not to prove the Collatz conjecture; it is to
define a function `collatz` which, for a given starting value, returns the
Collatz sequence from that value.

You may need a couple of Haskell functions to do this: the `even` function
returns True if its argument is even, the `odd` function does the opposite, and
remember that you can build list using the (:) operator (pronounced "cons"):

    1 : 2 : 3 : []   ==   [1,2,3]

-------------------------------------------------------------------------------}

collatz :: Integer -> [Integer]
collatz = undefined
             -- Replace this with your function that builds the Collatz sequence

-- >>> collatz 2

-- >>> collatz 3

-- prop> \n -> n < 1 || last (collatz n) == 1

tests = and [ collatz 2 == [2, 1]
            , collatz 3 == [3, 10, 5, 16, 8, 4, 2, 1]
            , collatz 7 == [7,22,11,34,17,52,26,13,40,20,10,5,16,8,4,2,1]
            ]
