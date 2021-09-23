module 706A1fallonbr where



-- Some useful imports from the standard library:

import Relation.Binary.PropositionalEquality as Eq  -- much like Python we want to import the standard library (propositional equality) as an abreivated term
open Eq using (_≡_; refl)  -- adds these names from the package to our scope (equality and refl for two terms are equal)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; _∎)  -- Using a different odule to import more names to our scope for our uses


-- Natural Numbers Definition
data ℕ : Set where  -- natural numbers defined inductively. Data tells use its inductively defined with constructors, set says it's a datatype and where seperates the declaration of the datatype and constructors.
  zero : ℕ  -- Green are constructors, base case
  suc  : ℕ → ℕ  -- inductive case
-- it's inductive because we build up a set from a base case to cover all cases


{-# BUILTIN NATURAL ℕ #-}  -- Pragma for naturals to make working with them more effecient

-- Addition on naturals Definition
_+_ : ℕ → ℕ → ℕ  -- type inputs two natural numbers and gives a natural back. Turns out infix is shorthand for function application. So m + n ≡ _ + _ m n!
zero + n = n  -- So here we use pattern matching for the base and inductive case. This is zero is identity.
suc m + n = suc (m + n)  -- This is just associativity of addition. Q) how come we don't use ≡ here?
-- This is a recursive definition b.c. addition defined in terms of addition. Larger numbers defined in terms of addition of smaller numbers. This is well formed.
-- Use = for definitions and ≡ for asserting that two things are the same.

{-# BUILTIN NATPLUS _+_ #-}


-- Multiplication on naturals Definition
_*_ : ℕ → ℕ → ℕ -- multiplication takes two naturals and spits out a natural
-- case split here, m is the induction variable so increment
zero * n = zero  -- Multiplication by 0. Before I was dumb and wrote zero*n = n
(suc m) * n = n + (m * n) --distributivity of multiplication

{-# BUILTIN NATTIMES _*_ #-}

-- Exponents on naturals definition
_^_ : ℕ → ℕ → ℕ
m ^ zero = 1
m ^ suc n = m * (m ^ n) -- defined on left hand size just so parts are on LHS

-- Monus on naturals Definition
_∸_ : ℕ → ℕ → ℕ
m ∸ zero = m
zero ∸ suc n = 0  -- uses pattern matching against both arguments
suc m ∸ suc n = m ∸ n

{-# BUILTIN NATMINUS _∸_ #-}  -- use MMB to jump to definition of each operator


-- Binary representation.
-- Modified from PLFA exercise (thanks to David Darais).

-- Definition of binary numbers using a sequence of bits
data Bin-ℕ : Set where  
  bits : Bin-ℕ  -- base case constructor of type Bin-ℕ. Empty set of bits
  _x0 : Bin-ℕ → Bin-ℕ  -- 0 bit function, is a postfix operator which a binary number and affixes a 0
  _x1 : Bin-ℕ → Bin-ℕ  -- 1 bit function, is a postfix operator which takes a binary number and affixes a  1

-- Our representation of zero is different from PLFA.
-- We use the empty sequence of bits (more consistent).

bin-zero : Bin-ℕ  -- example of empty bit
bin-zero = bits

bin-one : Bin-ℕ  
bin-one = bits x1     -- 1 in binary

bin-two : Bin-ℕ
bin-two = bits x1 x0  -- 10 in binary

-- 747 exercise: Increment (1 point)
-- Define increment (add one).
 
inc : Bin-ℕ → Bin-ℕ  -- Type definition of increment, case splitting on m gives 3 cases because Bin-ℕ has 3 constructors
inc bits = bits x1 -- base case, incrementing empty bit gives 1
inc (m x0) = m x1  -- number ends in a zero and add 1, instead of adding a zero add a 1 to increment the last bit (no carry so no shifting required,
inc (m x1) = inc(m) x0  -- the inductive/recursive case. In order to flip all the previous bits we need to be able to nest into it and call inc on all the sub bits. Once it gets to a zero (case 2) or to empty bit (case 1/base case) then it will make that a 1 and the come back up,  applying as zeros for each 1 it encountered on the way down.

-- Test Cases for inc --
-- Format: Test case #, input parameters, reasoning

-- test case 0, 1011, testing it works on a bit with any sequence of zeros and ones
_ : inc (bits x1 x0 x1 x1) ≡ bits x1 x1 x0 x0
_ = refl

-- test case 1, empty bit, testing base condition/ empty bits
_ : inc (bits) ≡ bits x1
_ = refl  -- passes

-- test case 2, 10, testing condition number 2/ ends in 0
_ : inc (bits x1 x0) ≡ bits x1 x1
_ = refl  -- passes

-- test case 3, 111, testing inductive condition/ ends in 1
_ : inc (bits x1 x1 x1) ≡ bits x1 x0 x0 x0
_ =
  begin  -- left hand side
    inc (bits x1 x1 x1)
  ≡⟨⟩  -- definition of inc 
    inc (bits x1 x1) x0
  ≡⟨⟩  -- definition of inc, case 3
    inc (bits x1) x0 x0
  ≡⟨⟩ -- definition of inc, case 3
    inc (bits) x0 x0 x0
  ≡⟨⟩  -- definition of inc, case 1
    bits x1 x0 x0 x0
  ∎  -- passes

-- Increment function sucessfully implemented.

-- 747 exercise: To/From (2 points)
-- Define 'tob' and 'fromb' operations  -- convert back and fort between binary and unary notations. Addition and muliplication is a mess
-- to convert between unary (ℕ) and binary (Bin-ℕ) notation.
-- Hint: avoid addition and multiplication,
-- and instead use the provided dbl (double) function.
-- This will make later proofs easier.
-- I've put 'b' on the end of the operations to
-- avoid a name clash in a later file.
-- It also makes the direction clear when using them.

dbl : ℕ → ℕ  -- addition and multiplication are a mess and makes them hard so use double
dbl zero = zero  -- base case
dbl (suc m) = suc (suc (dbl m))  -- inductive case, drills down number adding a suc for each level down inorder to effectively double it

dblb : Bin-ℕ → Bin-ℕ
dblb bits = bits
dblb (n x0) = n x0 x0
dblb (n x1) = n x1 x0

-- Sanity test cases for dbl --

-- test case 1, 1, testing double works
_ : dbl 1 ≡ 2
_ = refl

-- test case 2, double 2, breaking down steps of double to see recursion
_ : dbl 2 ≡ 4
_ =
  begin -- left hand side
    dbl 2
  ≡⟨⟩ -- definition of suc
    dbl (suc 1)
  ≡⟨⟩  -- definition of dbl, case 2
    suc (suc (dbl 1))
  ≡⟨⟩  -- definition of suc
    suc (suc (dbl (suc zero)))
  ≡⟨⟩  -- definition of dbl, case 2
    suc (suc (suc (suc (dbl zero))))
  ≡⟨⟩  -- definition of dbl, case 1
    suc (suc (suc (suc (zero))))
  ≡⟨⟩  -- simplification
    4
  ∎

-- test case 3, double 16, testing double works for larger  number
_ : dbl 16 ≡ 32
_ = refl



tob : ℕ → Bin-ℕ  -- convert from unary ℕ to binary ℕ
tob zero = bits  -- base case, here zero in unary is equivalant to bits in binary
tob (suc m) = inc(tob(m))  -- inductive case, building up naturals from smaller naturals using suc(m) is equivalant to building up bits by  incrementing smaller bits to be converted in binary.

-- Test cases for tob  --
_ : tob 6 ≡ bits x1 x1 x0
_ = refl

_ : tob 16 ≡ bits x1 x0 x0 x0 x0
_ = refl

_ : tob 21 ≡ bits x1 x0 x1 x0 x1 -- case ends in 1
_ = refl

_ : tob 420 ≡ bits x1 x1 x0 x1 x0 x0 x1 x0 x0 -- large number
_ = refl


fromb : Bin-ℕ → ℕ
fromb bits = zero  -- base case empty bit is equivalent to 0
fromb (n x0) = dbl(fromb(n))  --adding a x0 to the right side in binary is equivalant to doubling a natural number. As such we double the number and recurse on the rest of the remaining bits.    
fromb (n x1) = suc(dbl(fromb(n)))  -- adding a x1 to the right side of a binary number is equivalant to doubling and adding a 1 to a natural number. So in this case dbl and suc and then keep recursing on the sub-bits.


-- Test Cases for fromb --

_ : fromb (bits x1 x1 x0) ≡ 6
_ = refl

_ : fromb (bits x1 x1 x1) ≡ 7
_ = refl

--110 ≡ bits x1 x1 x0, n = bits x1 x1
--bits x1 x1 x1 0


-- 747 exercise: BinAdd (2 points)
-- Write the addition function for binary notation.  -- write binary addition
-- Do NOT use 'to' and 'from'. Work with Bin-ℕ as if ℕ did not exist.
-- Hint: use recursion on both m and n.

_bin-+_ : Bin-ℕ → Bin-ℕ → Bin-ℕ  -- Agda kept yelling at me for not having complete pattern matching so I kept adding cases. Bit messy but it works
bits bin-+ bits = bits  -- base case, empty bit plus empty bit is empty bit.
bits bin-+ (n x0) = n x0  -- base case, addition with the empty bit is itself, need patterns for both ending with x0 and x1 cases
bits bin-+ (n x1) = n x1 -- base case, addition with empty bit is itself, need pattern matching for both x0 and x1 constructors
(m x0) bin-+ bits = m x0  -- base case, addition with empty bit is itself. Need pattern for both x0 and x1.
(m x1) bin-+ bits = m x1 -- base case, addition with empty bit is itself. Need pattern for both constructors
(m x0) bin-+ (n x0) = (m bin-+ n) x0  --inductive case, adding bit with 0 on end to bit with 0 on the end. Bit addition is digitwise also known as bitwise so nothing happens with two zeros, a 0 pops out and you keep doing addition on the subpart.
(m x0) bin-+ (n x1) = (m bin-+ n) x1 -- inductive case, adding bitwise a 1 to zero just makes it a one. Then keep doing addition on subpart.
(m x1) bin-+ (n x0) = (m bin-+ n) x1 -- inductive case, adding bitwise 1 to zero makes it one. Then keep doing addition of sub-bits.
(m x1) bin-+ (n x1) = (inc(m) bin-+ n) x0  -- inductive case, for case where there's two bits with ones adding together you need to have a carry. This is done by incrementing  to increment one of the bits and have the bitwise result be a zero. This increment fully takes care of the carry while the bitwise addition result of 0 is the propper sum for the sum of two bits.

-- Test cases for bin-+ -- 

-- Tests can use to/from, or write out binary constants as below.
-- Again: write more tests!

_ : (bits x1 x0) bin-+ (bits x1 x1) ≡ (bits x1 x0 x1)
_ = refl

_ : bits bin-+ bits ≡ bits
_ = refl

_ : (bits x1 x1 x1) bin-+ (bits x1 x1 x1) ≡ (bits x1 x1 x1 x0)
_ =
  begin -- left hand side
    (bits x1 x1 x1) bin-+ (bits x1 x1 x1)
  ≡⟨⟩ -- definition of bin-+ case 9: ending in x1 bin-+ ending in 1
    (inc(bits x1 x1) bin-+ (bits x1 x1)) x0
  ≡⟨⟩  -- definition of inc
    ((bits x1 x0 x0) bin-+ (bits x1 x1)) x0
  ≡⟨⟩  -- definition of bin-+ case 7, ending in x0 bin-+ ending in x1
    ((bits x1 x0) bin-+ (bits x1)) x1 x0
  ≡⟨⟩  -- definition of bin-+ case 7: ending in x0 bin-+ ending in 1
    ((bits x1) bin-+ bits) x1 x1 x0
  ≡⟨⟩ -- definition of bin-+ case 5: base case ending in x0 bin-+ bits
    (bits x1) x1 x1 x0
  ≡⟨⟩ -- function application
    bits x1 x1 x1 x0
  ∎

_ : (bits x1 x0 x0) bin-+ (bits x1 x0) ≡ (bits x1 x1 x0)
_ = refl

-- Assignment Handin
-- Upload as AGDA code
-- Should have 0 type errors. Must compile. Will be severe if it doesn't compile
-- Should know is right because Agda is satisfied.
-- If give code that is wrong put it in a comment and say it's wrong
-- May run into problems of file encoding so if technology is the issue then no wories
-- 8 small assignments during the term of the course.
-- comment the code to say what you're doing, explain WHY you're doing it that way
-- comment basic idea of the algorithm. Add extra tests to show you know what you're doing
-- Don't forget to spell check
-- Extra marks will be given for good documentation. Marks will be deducted for lack of documentation.
-- You may hand in .lagda or .agda files, your choice. 
-- No need to be effecient but explain why you choose to do it that way

-- Find actual proper test documentation style for Python/Java/Agda



