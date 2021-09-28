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

-- 706 exercise: Increment (1 point)
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

-- Increment function successfully implemented.

-- 706 exercise: To/From (2 points)
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

-- test case 3, double 16, testing double works for larger numbers
_ : dbl 16 ≡ 32
_ = refl


-- implemented a double for binary because I thought I may need it for conversion but actually didn't
dblb : Bin-ℕ → Bin-ℕ  
dblb bits = bits  -- base case, empty bits are the same
dblb (n x0) = n x0 x0  -- inductive case, to double a binary number simply right affix a zero
dblb (n x1) = n x1 x0  -- inductive case for other constructor, right affixing a zero

-- test cases for dblb --

-- test case 1, bits, checking works for empty bit
_ : dblb bits ≡ bits
_ = refl

-- test case 2, bits x1, checking for case ending in x1
_ : dblb (bits x1) ≡ (bits x1 x0)
_ = refl

-- test case 3, bits x1 x0, checkign for case ending in x0
_ : dblb (bits x1 x0) ≡ (bits x1 x0 x0)
_ = refl


tob : ℕ → Bin-ℕ  -- convert from unary ℕ to binary ℕ
tob zero = bits  -- base case, here zero in unary is equivalant to bits in binary
tob (suc m) = inc(tob(m))  -- inductive case, building up naturals from smaller naturals using suc(m) is equivalant to building up bits by  incrementing smaller bits to be converted in binary.

-- Test cases for tob  --

-- test case 1, 0, testing base case
_ : tob 0 ≡ bits
_ = refl

-- test case 2, 6, testing positive number
_ : tob 6 ≡ bits x1 x1 x0
_ = refl

-- test case 3, 21, testing number that ends in x1
_ : tob 21 ≡ bits x1 x0 x1 x0 x1 
_ = refl

-- test case 4, 420, testing larger number
_ : tob 420 ≡ bits x1 x1 x0 x1 x0 x0 x1 x0 x0 
_ = refl


-- tob function successfully implemented


fromb : Bin-ℕ → ℕ
fromb bits = zero  -- base case empty bit is equivalent to 0
fromb (n x0) = dbl(fromb(n))  --adding a x0 to the right side in binary is equivalant to doubling a natural number. As such we double the number and recurse on the rest of the remaining bits.    
fromb (n x1) = suc(dbl(fromb(n)))  -- adding a x1 to the right side of a binary number is equivalant to doubling and adding a 1 to a natural number. So in this case dbl and suc and then keep recursing on the sub-bits.


-- Test Cases for fromb --

-- test case 1, bits, base case
_ : fromb (bits) ≡ 0
_ = refl

-- test case 2, bits x1 x1 x0, number ending in x0
_ : fromb (bits x1 x1 x0) ≡ 6
_ = refl

-- test case 3, bits x1 x1 x1, number ending in x1
_ : fromb (bits x1 x1 x1) ≡ 7
_ = refl

-- test case 4, bits x1 x1 x1 x1 x1 x1 x1 x1 x1 x1, large number
_ : fromb (bits x1 x1 x1 x1 x1 x1 x1 x1 x1 x1) ≡ 1023
_ = refl

-- fromb function successfully implemented

-- 706 exercise: BinAdd (2 points)
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

-- test case 1, bits bin-+ bits, testing base case
_ : bits bin-+ bits ≡ bits
_ = refl

-- test case 2, 2 + 3, x0 on end and x1 on end
_ : (bits x1 x0) bin-+ (bits x1 x1) ≡ (bits x1 x0 x1)
_ = refl

-- test case 3, 7 + 7, x1 and x1 on the end expanded out to see recursion
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

-- test case 4, 4 + 2, x0 on each end
_ : (bits x1 x0 x0) bin-+ (bits x1 x0) ≡ (bits x1 x1 x0)
_ = refl

-- test case 5, 1023 + 1023, testing large number
_ : (bits x1 x1 x1 x1 x1 x1 x1 x1 x1 x1) bin-+ (bits x1 x1 x1 x1 x1 x1 x1 x1 x1 x1) ≡ (bits x1 x1 x1 x1 x1 x1 x1 x1 x1 x1 x0)
_ = refl


-- bin-+ function successfully implemented


-- At this point I ran out of time due to needing to install duel boot linux and install from source but these are my best approximations of what I think the answers are of the induction questions


-- induction library and lemmas
import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl; cong; sym)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; step-≡; _∎)
-- open import Data.Nat using (ℕ; zero; suc; _+_; _*_; _∸_)  -- Don't need because defined previously



-- A theorem easy to prove.

+-identityᴸ : ∀ (m : ℕ) → zero + m ≡ m
+-identityᴸ m = refl

-- A first nontrivial theorem.
-- An equational proof is shown in PLFA.
-- Instead we will use 'rewrite'.

+-identityʳ : ∀ (m : ℕ) → m + zero ≡ m
+-identityʳ zero = refl
+-identityʳ (suc m) rewrite +-identityʳ m = refl  --rewrite here used to do second part of inductivity instead of chain of equations

-- PLFA's proof uses helpers cong and sym imported from the standard library,
-- and a form of equational reasoning that allows more elaborate justification than above.
-- We can use cong in place of rewrite.

+-identityʳ′ : ∀ (m : ℕ) → m + zero ≡ m
+-identityʳ′ zero = refl
+-identityʳ′ (suc m) = cong suc (+-identityʳ′ m)

-- Associativity of addition.
-- (Done first in PLFA.)

{-
+-assoc : ∀ (m n p : ℕ) → (m + n) + p ≡ m + (n + p)
+-assoc zero n p = refl
+-assoc (suc m) n p rewrite +-assoc m n p = refl
-}

+-assoc : ∀ (m n p : ℕ) → (m + n) + p ≡ m + (n + p)
+-assoc zero n p =
  begin
    (zero + n) + p
  ≡⟨⟩
    n + p
  ≡⟨⟩
    zero + (n + p)
  ∎
+-assoc (suc m) n p =
  begin
    (suc m + n) + p
  ≡⟨⟩
    suc (m + n) + p
  ≡⟨⟩
    suc ((m + n) + p)
  ≡⟨ cong suc (+-assoc m n p) ⟩
    suc (m + (n + p))
  ≡⟨⟩
    suc m + (n + p)
  ∎

-- A useful lemma about addition. Used to prove 
-- Equational proof shown in PLFA.

+-suc : ∀ (m n : ℕ) → m + suc n ≡ suc (m + n)
+-suc zero n = refl
+-suc (suc m) n rewrite +-suc m n = refl

-- Commutativity of addition.
-- Equational proof shown in PLFA.

+-comm : ∀ (m n : ℕ) → m + n ≡ n + m
+-comm zero n rewrite +-identityʳ n = refl
+-comm (suc m) n rewrite +-suc n m | +-comm m n = refl


-- 706/PLFA exercise: AddSwap (1 point)
-- Please do this without using induction/recursion.

  --Not sure syntax to write here to get it to work but you use commutivity then associativity
+-swap : ∀ (m n p : ℕ) → (m + n) + p ≡ n + (m + p)
+-swap m n p =
  begin  -- left hand side
    (m + n) + p 
  ≡⟨ cong (_+ p) (+-comm m n) ⟩  -- so here needed to add the cong(_+p) to allow commutivity of m and n but with a + p attached at the end because it needs to syntactically match. I guess also the cong goes at the begining because it's function application that appends +p where as the commutivity rule is not a function.
    (n + m) + p
  ≡⟨ +-assoc n m p ⟩ -- here need to define justification and variables in it
    n + (m + p)
  ∎

-- AddSwap proof successfully completed


-- 706/PLFA exercise: AddDistMult (2 points)
-- Show that addition distributes over multiplication.
-- Going to use a proof by induction here this time

*-+-rdistrib : ∀ (m n p : ℕ) → (m + n) * p ≡ (m * p) + (n * p)
*-+-rdistrib zero n p =  -- base case m=0
  begin
    (zero + n) * p
  ≡⟨⟩  -- definition of addition
    n * p
  ≡⟨⟩ -- definition of addition
    zero + (n * p)
  ≡⟨⟩ -- definition of multiplication
    (zero * p) + (n * p)
  ∎
*-+-rdistrib (suc m) n p =  -- doing for inductive case of m+1
  begin
    ((suc m) + n) * p
  ≡⟨⟩  -- definition of sum
    (suc (m + n)) * p
  ≡⟨⟩  -- definition of multiplication
    p + ((m + n) * p)
  ≡⟨ cong (p +_) (*-+-rdistrib m n p) ⟩  -- induction hypothesis
    p + ((m * p) + (n * p))
  ≡⟨ sym (+-swap (m * p) p (n * p)) ⟩
    ((m * p) + p) + (n * p)
  ≡⟨ cong (_+ (n * p)) (+-comm (m * p) p) ⟩  -- need to use commutivity to switch p around to use definition of mult
    (p + (m * p)) + (n * p)
  ≡⟨⟩  -- definition of multiplication
    ((suc m) * p) + (n * p)
  ∎

-- *-+-rdistrib proof successfully completed


-- 706/PLFA exercise: MultAssoc (2 points)
-- Show that multiplication is associative.

--Again, need to write with propper syntax with induction but
--use * commutivity to rarange
--then define and use *-+-ldistrib to get to origonal form

*-assoc : ∀ (m n p : ℕ) → (m * n) * p ≡ m * (n * p)
*-assoc zero n p =  -- base case m=0
  begin  -- left hand side
    (zero * n) * p
  ≡⟨⟩  -- definition of multiplication
    zero * p
  ≡⟨⟩  -- definition of multiplication
    zero
  ≡⟨⟩  -- definition of multiplication
    zero * (n * p)
  ∎
*-assoc (suc m) n p =  -- inductive case
  begin  -- left hand side
    ((suc m) * n) * p
  ≡⟨⟩  --definition of multiplication
    (n + (m * n)) * p
  ≡⟨ *-+-rdistrib n (m * n) p ⟩
    (n * p) + ((m * n) * p)
  ≡⟨ cong ((n * p) +_) (*-assoc m n p) ⟩  -- induction hypothesis
    (n * p) + (m * (n * p))
  ≡⟨⟩  -- definition of multiplication
    (suc m) * (n * p)
  ∎

-- *-assoc proof successfully completed
  
{-  OKAY I know what I need to do here: define helper lemmas so I can fit the syntatic proof of the commutivity of multiplication. Running into some weird errors

-- 706/PLFA exercise: MultComm (3 points)
-- Show that multiplication is commutative.
-- As with the addition proof above, helper lemmas will be needed.

-- for this proof we will need the right zero of multiplication which we we define (along with the left) in two Lemmas
*-zeroᴸ : ∀ (m : ℕ) → zero * m ≡ zero
*-zeroᴸ zero = refl -- base case m=zero of proof by induction
*-zeroᴸ (suc m) rewrite *-zeroᴸ m = refl  --rewrite here used to do induction recursively as part of proof by induction instead of chain of equations.

*-zeroᴿ : ∀ (m : ℕ) → m * zero ≡ zero
*-zeroᴿ zero = refl -- base case m=zero of proof by induction
*-zeroᴿ (suc m) rewrite *-zeroᴿ m = refl  --rewrite here used to do induction recursively as part of proof by induction instead of chain of equations.


-- will need multiplication identity for proving lemma to prove *-comm
one : ℕ
one = suc zero

*-identityᴸ : ∀ (m : ℕ) → one * m ≡ m
*-identityᴸ zero = refl  -- base case
*-identityᴸ (suc m) rewrite *-identityᴸ m = refl --  inductive case

*-identityʳ : ∀ (m : ℕ) → m * one  ≡ m
*-identityʳ zero = refl  -- base case
*-identityʳ (suc m) rewrite *-identityʳ m = refl  --inductive case


-- will also need a lemma for right multiplication definition
*-sucᴿ : ∀ (m n : ℕ) → n * (suc m) ≡ n + (n * m)
*-sucᴿ zero n =  -- base case m=zero of proof by induction
  begin  -- left hand side
    n * (suc zero)
  ≡⟨⟩  -- evaluation of sucessor
    n * one
  ≡⟨ *-identityʳ n ⟩ -- multiplication identity, needs identity lemma
    n
  ≡⟨ +-identityʳ n⟩ -- definition of addition, needs right identity lemma
    n + zero
  ≡⟨ sym (*-zeroᴿ n) ⟩  --definition of multiplication with right zero
    n + (n * zero)
  ∎



*-comm : ∀ (m n : ℕ) → m * n ≡ n * m
*-comm zero n = -- base case, m=0
  begin  -- left hand side
    zero * n
  ≡⟨⟩ -- definition of multiplication
    zero
  ≡⟨ sym (*-zeroᴿ n) ⟩  -- here using lemma with right sided zero to get n onto the other side.  Using Sym because using it in reverse
    n * zero
  ∎
*-comm (suc m) n =
  begin --left hand side
    (suc m) * n
  ≡⟨⟩  -- definition of multiplication
    n + (m * n)
  ≡⟨ cong (n +_) (*-comm m n) ⟩ -- assuming induction hypothesis with n + attached to the side via cong
    n + (n * m)
  ≡⟨⟩  -- definition of multiplication, hopefully don't need a re-arrangement lemma
    n * (suc m)
  ∎
-}


{-
-- 706/PLFA exercise: LeftMonusZero (1 point)
-- PLFA asks "Did your proof require induction?"
-- (which should give you an indication of the expected answer).

0∸n≡0 : ∀ (m : ℕ) → zero ∸ m ≡ zero
0∸n≡0 m = {!!}

-}

{-

-- 706/PLFA exercise: MonusAssocish (2 points)
-- Show a form of associativity for monus.

∸-+-assoc : ∀ (m n p : ℕ) → m ∸ n ∸ p ≡ m ∸ (n + p)
∸-+-assoc m n p = {!!}

-- PLFA exercise (stretch): distributive and associative laws for exponentiation.

-- 706 extended exercise: properties of binary representation.
-- This is based on the PLFA Bin-laws exercise.

-- Copied from 747Naturals.

data Bin-ℕ : Set where
  bits : Bin-ℕ
  _x0 : Bin-ℕ → Bin-ℕ
  _x1 : Bin-ℕ → Bin-ℕ

dbl : ℕ → ℕ
dbl zero = zero
dbl (suc n) = suc (suc (dbl n))

-- Copy your versions of 'inc', 'to', 'from', 'bin-+' over from 747Naturals.
-- You may choose to change them here to make proofs easier.
-- But make sure to test them if you do!

inc : Bin-ℕ → Bin-ℕ
inc m = {!!}

tob : ℕ → Bin-ℕ
tob m = {!!}

fromb : Bin-ℕ → ℕ
fromb m = {!!}

_bin-+_ : Bin-ℕ → Bin-ℕ → Bin-ℕ
m bin-+ n = {!!}

-- 706 exercise: DoubleB (1 point)
-- Write the Bin-ℕ version of dbl, here called dblb.
-- As with the other Bin-ℕ operations, don't use tob/fromb.

dblb : Bin-ℕ → Bin-ℕ
dblb m = {!!}

-- Here are some properties of tob/fromb/inc suggested by PLFA Induction.
-- Please complete the proofs.

-- 706 exercise: FromInc (1 point)

from∘inc : ∀ (m : Bin-ℕ) → fromb (inc m) ≡ suc (fromb m)
from∘inc m = {!!}

-- 706 exercise: FromToB (1 point)

from∘tob : ∀ (m : ℕ) → fromb (tob m) ≡ m
from∘tob m = {!!}

-- 706 exercise: ToFromB (2 points)
-- The property ∀ (m : Bin-ℕ) → tob (fromb m) ≡ m cannot be proved.
-- Can you see why?
-- However, this restriction of it can be proved.

to/from-corr : ∀ (m : Bin-ℕ) (n : ℕ) → m ≡ tob n → fromb m ≡ n
to/from-corr m n m≡tn = {!!}

-- Here are a few more properties for you to prove.

-- 706 exercise: DblBInc (1 point)

dblb∘inc : ∀ (m : Bin-ℕ) → dblb (inc m) ≡ inc (inc (dblb m)) 
dblb∘inc m = {!!}

-- 706 exercise: ToDbl (1 point)

to∘dbl : ∀ (m : ℕ) → tob (dbl m) ≡ dblb (tob m)
to∘dbl m = {!!}

-- 706 exercise: FromDblB (1 point)

from∘dblb : ∀ (m : Bin-ℕ) → fromb (dblb m) ≡ dbl (fromb m)
from∘dblb m = {!!}

-- 706 exercise: BinPlusLInc (2 points)
-- This helper function translates the second case for unary addition
--  suc m + n = suc (m + n)
-- into the binary setting. It's useful in the next proof.
-- Hint: induction on both m and n is needed.

bin-+-linc : ∀ (m n : Bin-ℕ) → (inc m) bin-+ n ≡ inc (m bin-+ n)
bin-+-linc m n = {!!}

-- 706 exercise: PlusUnaryBinary (2 points)
-- This theorem relates unary and binary addition.

to∘+ : ∀ (m n : ℕ) → tob (m + n) ≡ tob m bin-+ tob n
to∘+ m n = {!!}

-- This ends the extended exercise.







-}
