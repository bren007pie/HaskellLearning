module 747Induction where

-- Library

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl; cong; sym)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; step-≡; _∎)
open import Data.Nat using (ℕ; zero; suc; _+_; _*_; _∸_)

-- PLFA coverage of identity, associativity, commutativity, distributivity.

-- A theorem easy to prove.

+-identityᴸ : ∀ (m : ℕ) → zero + m ≡ m
+-identityᴸ m = refl

-- A first nontrivial theorem.
-- An equational proof is shown in PLFA.
-- Instead we will use 'rewrite'.

+-identityʳ : ∀ (m : ℕ) → m + zero ≡ m
+-identityʳ zero = refl
+-identityʳ (suc m) rewrite +-identityʳ m = refl

-- PLFA's proof uses helpers cong and sym imported from the standard library,
-- and a form of equational reasoning that allows more elaborate justification than above.
-- We can use cong in place of rewrite.

+-identityʳ′ : ∀ (m : ℕ) → m + zero ≡ m
+-identityʳ′ zero = refl
+-identityʳ′ (suc m) = cong suc (+-identityʳ′ m)

-- Associativity of addition.
-- (Done first in PLFA.)

+-assoc : ∀ (m n p : ℕ) → (m + n) + p ≡ m + (n + p)
+-assoc zero n p = refl
+-assoc (suc m) n p rewrite +-assoc m n p = refl

-- A useful lemma about addition.
-- Equational proof shown in PLFA.

+-suc : ∀ (m n : ℕ) → m + suc n ≡ suc (m + n)
+-suc zero n = refl
+-suc (suc m) n rewrite +-suc m n = refl

-- Commutativity of addition.
-- Equational proof shown in PLFA.

+-comm : ∀ (m n : ℕ) → m + n ≡ n + m
+-comm zero n rewrite +-identityʳ n = refl
+-comm (suc m) n rewrite +-suc n m | +-comm m n = refl

-- 747/PLFA exercise: AddSwap (1 point)
-- Please do this without using induction/recursion.

+-swap : ∀ (m n p : ℕ) → (m + n) + p ≡ n + (m + p)
+-swap m n p = Eq.trans (cong (_+ p) (+-comm m n)) (+-assoc n m p)

-- 747/PLFA exercise: AddDistMult (2 points)
-- Show that addition distributes over multiplication.

*-+-rdistrib : ∀ (m n p : ℕ) → (m + n) * p ≡ m * p + n * p
*-+-rdistrib zero n p = refl
*-+-rdistrib (suc m) n p rewrite *-+-rdistrib m n p | +-assoc p (m * p) (n * p) = refl

-- 747/PLFA exercise: MultAssoc (2 points)
-- Show that multiplication is associative.

*-assoc : ∀ (m n p : ℕ) → (m * n) * p ≡ m * (n * p)
*-assoc zero n p = refl
*-assoc (suc m) n p = Eq.trans (*-+-rdistrib n (m * n) p) (cong (n * p +_) (*-assoc m n p))

-- 747/PLFA exercise: MultComm (3 points)
-- Show that multiplication is commutative.
-- As with the addition proof above, helper lemmas will be needed.

*-identityʳ : ∀ (m : ℕ) → m * zero ≡ zero -- split on m
*-identityʳ zero = refl
*-identityʳ (suc m) = *-identityʳ m

*-rsuc : ∀ (m n : ℕ) → m * suc n ≡ m + m * n -- split on m
*-rsuc zero n = refl
*-rsuc (suc m) n
 rewrite *-rsuc m n | sym (+-assoc n m (m * n)) | +-comm n m | +-assoc m n (m * n) = refl

*-comm : ∀ (m n : ℕ) → m * n ≡ n * m
*-comm zero n = sym (*-identityʳ n)
*-comm (suc m) n rewrite *-rsuc n m = cong (n +_) (*-comm m n)

-- 747/PLFA exercise: LeftMonusZero (1 point)
-- PLFA asks "Did your proof require induction?"
-- (which should give you an indication of the expected answer).

0∸n≡0 : ∀ (m : ℕ) → zero ∸ m ≡ zero
0∸n≡0 zero = refl
0∸n≡0 (suc m) = refl

-- 747/PLFA exercise: MonusAssocish (2 points)
-- Show a form of associativity for monus.

-- split on m, then n
∸-+-assoc : ∀ (m n p : ℕ) → m ∸ n ∸ p ≡ m ∸ (n + p)
∸-+-assoc zero n p  rewrite 0∸n≡0 n | 0∸n≡0 p | 0∸n≡0 (n + p) = refl
∸-+-assoc (suc m) zero p = refl
∸-+-assoc (suc m) (suc n) p = ∸-+-assoc m n p

-- PLFA exercise (stretch): distributive and associative laws for exponentiation.

-- 747 extended exercise: properties of binary representation.
-- This is based on the PLFA Bin-laws exercise.

-- Copied from 747Naturals.
-- instead of copy, import
open import BinArith using (Bin-ℕ; dbl; inc; tob; fromb; _bin-+_)
open Bin-ℕ

-- 747 exercise: DoubleB (1 point)
-- Write the Bin-ℕ version of dbl, here called dblb.
-- As with the other Bin-ℕ operations, don't use tob/fromb.

dblb : Bin-ℕ → Bin-ℕ
dblb bits = bits
dblb (m x0) = m x0 x0
dblb (m x1) = m x1 x0

-- Here are some properties of tob/fromb/inc suggested by PLFA Induction.
-- Please complete the proofs.

-- 747 exercise: FromInc (1 point)

from∘inc : ∀ (m : Bin-ℕ) → fromb (inc m) ≡ suc (fromb m)
from∘inc bits = refl
from∘inc (m x0) = refl
from∘inc (m x1) = cong dbl (from∘inc m)

-- 747 exercise: FromToB (1 point)

from∘tob : ∀ (m : ℕ) → fromb (tob m) ≡ m
from∘tob zero = refl
from∘tob (suc m) = Eq.trans (from∘inc (tob m)) (cong suc (from∘tob m))

-- 747 exercise: ToFromB (2 points)
-- The property ∀ (m : Bin-ℕ) → tob (fromb m) ≡ m cannot be proved.
-- Can you see why?
-- However, this restriction of it can be proved.

to/from-corr : ∀ (m : Bin-ℕ) (n : ℕ) → m ≡ tob n → fromb m ≡ n
to/from-corr m n m≡tn rewrite m≡tn = from∘tob n

-- Here are a few more properties for you to prove.

-- 747 exercise: DblBInc (1 point)

dblb∘inc : ∀ (m : Bin-ℕ) → dblb (inc m) ≡ inc (inc (dblb m))
dblb∘inc bits = refl
dblb∘inc (m x0) = refl
dblb∘inc (m x1) = refl

-- 747 exercise: ToDbl (1 point)

to∘dbl : ∀ (m : ℕ) → tob (dbl m) ≡ dblb (tob m)
to∘dbl zero = refl
to∘dbl (suc m) rewrite dblb∘inc (tob m) = cong (λ z → inc (inc z)) (to∘dbl m)

-- 747 exercise: FromDblB (1 point)

from∘dblb : ∀ (m : Bin-ℕ) → fromb (dblb m) ≡ dbl (fromb m)
from∘dblb bits = refl
from∘dblb (m x0) = refl
from∘dblb (m x1) = refl

-- 747 exercise: BinPlusLInc (2 points)
-- This helper function translates the second case for unary addition
--  suc m + n = suc (m + n)
-- into the binary setting. It's useful in the next proof.
-- Hint: induction on both m and n is needed.

bin-+-linc : ∀ (m n : Bin-ℕ) → (inc m) bin-+ n ≡ inc (m bin-+ n)
bin-+-linc bits bits = refl
bin-+-linc bits (n x0) = refl
bin-+-linc bits (n x1) = refl
bin-+-linc (m x0) bits = refl
bin-+-linc (m x0) (n x0) = refl
bin-+-linc (m x0) (n x1) = refl
bin-+-linc (m x1) bits = refl
bin-+-linc (m x1) (n x0) = cong _x0 (bin-+-linc m n)
bin-+-linc (m x1) (n x1) = cong _x1 (bin-+-linc m n)

-- 747 exercise: PlusUnaryBinary (2 points)
-- This theorem relates unary and binary addition.

to∘+ : ∀ (m n : ℕ) → tob (m + n) ≡ tob m bin-+ tob n
to∘+ zero n = refl
to∘+ (suc m) n = begin
  inc (tob (m + n))         ≡⟨ cong inc (to∘+ m n) ⟩
  inc (tob m bin-+ tob n)   ≡⟨ sym (bin-+-linc (tob m) (tob n)) ⟩
  (inc (tob m) bin-+ tob n) ∎

-- This ends the extended exercise.


-- The following theorems proved in PLFA can be found in the standard library.

-- import Data.Nat.Properties using (+-assoc; +-identityʳ; +-suc; +-comm)

-- Unicode used in this chapter:

{-

    ∀  U+2200  FOR ALL (\forall, \all)
    ʳ  U+02B3  MODIFIER LETTER SMALL R (\^r)
    ′  U+2032  PRIME (\')
    ″  U+2033  DOUBLE PRIME (\')
    ‴  U+2034  TRIPLE PRIME (\')
    ⁗  U+2057  QUADRUPLE PRIME (\')

-}
