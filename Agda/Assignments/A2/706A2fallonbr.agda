module 706A2fallonbr where

-- Responding to feedback from assignment 1: I'm not sure what you mean by making long lines out of stuff or what to change. I will follow up by email. Also going to make comments much more succinct.

-- Relations Section:

-- Some useful imports from the standard library:
import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl; cong; cong-app; sym) -- added sym for symmetry
open import Data.Nat using (ℕ; zero; suc; _+_; _*_)
open import Data.Nat.Properties using (+-comm; +-suc; +-identityʳ; *-comm; ≤-trans)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; _∎) -- using equation reasoning for test proofs

-- Definition of ≤ inequality
data _≤_ : ℕ → ℕ → Set where  -- here set means it's a type.
  z≤n : ∀ {n : ℕ} → zero ≤ n  
  s≤s : ∀ {m n : ℕ} → m ≤ n → suc m ≤ suc n


-- Definition of strict inequality
data _<_ : ℕ → ℕ → Set where

  z<s : ∀ {n : ℕ} → zero < suc n

  s<s : ∀ {m n : ℕ} → m < n → suc m < suc n

-- 747/PLFA exercise: LTTrans (1 point)
-- Prove that < is transitive.
-- Order of arguments changed from PLFA, to match ≤-trans.

<-trans : ∀ {m n p : ℕ} → m < n → n < p → m < p
<-trans z<s (s<s n<p) = z<s  -- 0<n and suc m < suc p hold
<-trans (s<s m<n) (s<s n<p) = s<s (<-trans m<n n<p) -- suc m < suc n and suc n < suc p hold

-- <-trans proof successfully completed

-- 747/PLFA exercise: Trichotomy (2 points)
-- Prove that either m < n, m ≡ n, or m > n for all m and n.

data Trichotomy (m n : ℕ) : Set where  -- here we have a type. Helps us have different case senario functions to show trichotomy hold for each function.
  is-< : m < n → Trichotomy m n
  is-≡ : m ≡ n → Trichotomy m n
  is-> : n < m → Trichotomy m n

<-trichotomy : ∀ (m n : ℕ) → Trichotomy m n
<-trichotomy zero zero = is-≡ refl    -- zero ≡ zero
<-trichotomy zero (suc n) = is-< z<s  -- is-< holds for z<s based on < 
<-trichotomy (suc m) zero = is-> z<s  -- is -> holds for z<s
<-trichotomy (suc m) (suc n) with <-trichotomy m n
...                           | is-< m<n = is-< (s<s m<n)
...                           | is-≡ m≡n = is-≡ (cong suc m≡n)  -- adding suc to both sides of m ≡ n
...                           | is-> n<m = is-> (s<s n<m)

-- <-trichotomy proof successfully completed

-- 747/PLFA exercise: LEtoLTS (1 point)

≤-<-to : ∀ {m n : ℕ} → m ≤ n → m < suc n
≤-<-to z≤n = z<s    -- z≤n → z<s. Equivalant constructors map
≤-<-to (s≤s m≤n) = s<s (≤-<-to m≤n)  -- induction on hypothesis m < suc n

-- LEtoLTS/≤-<-to  proof successfully completed


-- 747/PLFA exercise: LEStoLT (1 point)

≤-<--to′ : ∀ {m n : ℕ} → suc m ≤ n → m < n
≤-<--to′ (s≤s z≤n) = z<s  -- suc zero ≤ suc n = 0 < suc n → z<s
≤-<--to′ (s≤s (s≤s sm≤n)) = s<s (≤-<--to′ (s≤s sm≤n)) -- goal is m < suc n so we use induction hypothesis to map (suc m ≤ suc n) → m < suc n

-- LEStoLT/≤-<--to′ proof successfully completed


-- 747/PLFA exercise: LTtoSLE (1 point)

≤-<-from : ∀ {m n : ℕ} → m < n → suc m ≤ n
≤-<-from z<s = s≤s z≤n     -- 1 ≤ suc n
≤-<-from (s<s m<n) = s≤s (≤-<-from m<n)  -- induction of hypthesis (suc m) ≤ n

-- LTtoSLE/≤-<-from  proof successfully completed


-- 747/PLFA exercise: LTStoLE (1 point)

≤-<-from′ : ∀ {m n : ℕ} → m < suc n → m ≤ n
≤-<-from′ z<s = z≤n  
≤-<-from′ (s<s z<s) = s≤s z≤n
≤-<-from′ (s<s (s<s m<sn)) = s≤s (≤-<-from′ (s<s m<sn))  -- goal is suc m ≤ n so use induction hypothesis on suc m < suc n to get that goal

-- LTStoLE/≤-<-from′  proof successfully completed

-- Definition of even and odd. Mutually recursive datatypes.
data even : ℕ → Set  
data odd  : ℕ → Set

data even where

  zero : even zero

  suc  : ∀ {n : ℕ} → odd n → even (suc n) 

data odd where  

  suc   : ∀ {n : ℕ} → even n → odd (suc n)

-- 747/PLFA exercise: OPOE (2 points)
-- Prove that the sum of two odds is even.
-- Hint: You will need to define another theorem and prove both
--       by mutual induction, as with the theorems above.    

-- Here we need to define mutually recusive functions in order to have both functions work

e+o≡o : ∀ {m n : ℕ} → even m → odd n → odd (m + n)  

o+o≡e : ∀ {m n : ℕ} → odd m → odd n → even (m + n)

e+o≡o zero on = on
e+o≡o (suc om) on = suc (o+o≡e om on)  -- Have two odds need even so use o+o≡e

o+o≡e (suc em) on = suc (e+o≡o em on)  -- Have an even and an odd so use e+o≡o

-- o+o≡e  proof successfully completed

{-- Nearly got it but keep running into this error "ℕ should be a sort, but it isn't" and it highlights n * p ≤ n * q. 
-- PLFA BONUS exercise: show *-mono-≤

-- 3 parts, adapted from the +-mono-≤. Some slight differences and more proofs needed


*-monoʳ-≤ : ∀ (n p q : ℕ) → p ≤ q → n * p ≤ n * q
*-monoʳ-≤ zero    p q p≤q  =  z≤n
*-monoʳ-≤ (suc n) p q p≤q  =  s≤s (*-monoʳ-≤ n p q p≤q)


*-monoˡ-≤ : ∀ (m n p : ℕ) → m ≤ n → m * p ≤ n * p
*-monoˡ-≤ m n p m≤n  rewrite *-comm m p | *-comm n p  = *-monoʳ-≤ p m n m≤n

*-mono-≤ : ∀ (m n p q : ℕ) → m ≤ n → p ≤ q → m * p ≤ n * q
*-mono-≤ m n p q m≤n p≤q  =  ≤-trans (*-monoˡ-≤ m n p m≤n) (*-monoʳ-≤ n p q p≤q)
-}

-- Isomorphism section

-- importing entirety of BinArith from last assignment into scope
open import BinArith using (Bin-ℕ; bits; _x0; _x1; inc; dbl; dblb; tob; fromb; _bin-+_)

-- Isomorphism Definition.

infix 0 _≃_
record _≃_ (A B : Set) : Set where
  constructor mk-≃  -- This has been added, not in PLFA
  field
    to   : A → B
    from : B → A
    from∘to : ∀ (x : A) → from (to x) ≡ x
    to∘from : ∀ (y : B) → to (from y) ≡ y
open _≃_

-- The reason that we couldn't prove ∀ {n : Bin-ℕ} → tob (fromb n) ≡ n
-- is because of the possibility of leading zeroes in a Bin-ℕ value.
-- 'bits x0 x0 x1' is such a value that gives a counterexample.
-- However, the theorem is true is true for n without leading zeroes.
-- We define a predicate to be able to state this in a theorem.
-- A value of type One n is evidence that n has a leading one.

data One : Bin-ℕ → Set where
  [bitsx1] : One (bits x1)
  _[x0] : ∀ {n : Bin-ℕ} → One n → One (n x0)
  _[x1] : ∀ {n : Bin-ℕ} → One n → One (n x1)

-- Here's a proof that 'bits x1 x0 x0' has a leading one.

_ : One (bits x1 x0 x0)
_ = [bitsx1] [x0] [x0]

-- There is no value of type One (bits x0 x0 x1).
-- But we can't state and prove this yet, because we don't know
-- how to express negation. That comes in the Connectives chapter.

-- A canonical binary representation is either zero or has a leading one.

data Can : Bin-ℕ → Set where
  [zero] : Can bits
  [pos]  : ∀ {n : Bin-ℕ} → One n → Can n

-- Some obvious examples:

_ : Can bits  --how you construct a zero
_ = [zero]

_ : Can (bits x1 x0)  
_ = [pos] ([bitsx1] [x0]) -- this is how you construct 2

-- The Bin-predicates exercise in PLFA Relations gives three properties of canonicity. 
-- The first is that the increment of a canonical number is canonical.

-- Most of the work is done in the following lemma.

-- 747/PLFA exercise: IncCanOne (2 points)
-- The increment of a canonical number has a leading one.

one-inc : ∀ {b : Bin-ℕ} → Can b → One (inc b)
one-inc [zero] = [bitsx1]
one-inc ([pos] [bitsx1]) = [bitsx1] [x0]
one-inc ([pos] (cb [x0])) = cb [x1]
one-inc ([pos] (cb [x1])) = one-inc ([pos] cb) [x0]


-- IncCanOne/one-inc  proof successfully completed

-- From here on out I attempted to get the structure of most of the remaining proofs and high-level comments on how I think I would solve them

-- The first canonicity property is now an easy corollary.

-- 747/PLFA exercise: OneInc (1 point)

can-inc : ∀ {n : Bin-ℕ} → Can n → Can (inc n)
can-inc [zero] = [pos] [bitsx1]
can-inc ([pos] [bitsx1]) = [pos] ([bitsx1] [x0])
can-inc ([pos] (cb [x0])) = [pos] (cb [x1])
can-inc ([pos] (cb [x1])) = [pos] {!!}  -- not sure how to fill types in this hole, needs type analysis

-- The second canonicity property is that converting a unary number
-- to binary produces a canonical number.

-- 747/PLFA exercise: CanToB (1 point)

to-can : ∀ (n : ℕ) → Can (tob n)
to-can zero = [zero]
to-can (suc n) = {!!}  -- type analysis needed

-- The third canonicity property is that converting a canonical number
-- from binary and back to unary produces the same number.

-- This takes more work, and some helper lemmas from 747Induction.
-- You will need to discover which ones.

-- 747/PLFA exercise: OneDblbX0 (1 point)

-- This helper function relates binary double to the x0 constructor,
-- for numbers with a leading one.

dblb-x0 : ∀ {n : Bin-ℕ} → One n → dblb n ≡ n x0
dblb-x0 [bitsx1] = refl
dblb-x0 (on [x0]) = refl
dblb-x0 (on [x1]) = refl

-- OneDblbX0/dblb-x0  proof successfully completed

-- We can now prove the third property for numbers with a leading one.

-- 747/PLFA exercise: OneToFrom (3 points)

one-to∘from : ∀ {n : Bin-ℕ} → One n → tob (fromb n) ≡ n
one-to∘from [bitsx1] = refl
one-to∘from (on [x0]) = {!!}  -- need to use embedding here
one-to∘from (on [x1]) = {!!}

-- The third property is now an easy corollary.

-- 747/PLFA exercise: CanToFrom (1 point)

can-to∘from : ∀ {n : Bin-ℕ} → Can n → tob (fromb n) ≡ n
can-to∘from [zero] = refl
can-to∘from ([pos] cn) = {!!}  -- need to use embedding here

-- 747/PLFA exercise: OneUnique (2 points)
-- Proofs of positivity are unique.

one-unique : ∀ {n : Bin-ℕ} → (x y : One n) → x ≡ y
one-unique [bitsx1] [bitsx1] = refl
one-unique (x [x0]) (y [x0]) = {!!}  -- need to use some form of embedding here
one-unique (x [x1]) (y [x1]) = {!!}

-- 747/PLFA exercise: CanUnique (1 point)
-- Proofs of canonicity are unique.

can-unique : ∀ {n : Bin-ℕ} → (x y : Can n) → x ≡ y
can-unique [zero] [zero] = refl
can-unique ([pos] x) ([pos] y) = {!!}  -- some form of embedding here

-- Do we have an isomorphism between ℕ (unary) and canonical binary representations?
-- Can is not a set, but a family of sets, so it doesn't quite fit
-- into our framework for isomorphism.
-- But we can roll all the values into one set which is isomorphic to ℕ.

-- A CanR value wraps up a Bin-ℕ and proof it has a canonical representation.

record CanR : Set where
  constructor mk-CanR
  field
    n : Bin-ℕ
    cpf : Can n

-- We can show that there is an isomorphism between ℕ and CanR.

-- 747/PLFA exercise: Rewrap (1 point)
-- This helper will be useful.

rewrap : ∀ {m n} x y → m ≡ n → mk-CanR m x ≡ mk-CanR n y
rewrap x y x₁ = {!!}

-- 747/PLFA exercise: IsoNCanR (2 points)

iso-ℕ-CanR : ℕ ≃ CanR
to iso-ℕ-CanR = λ x → mk-CanR {!!} {!!}
from iso-ℕ-CanR = λ x → {!!}
from∘to iso-ℕ-CanR = {!!}
to∘from iso-ℕ-CanR = λ y → {!!}


-- This ends the extended exercise.








