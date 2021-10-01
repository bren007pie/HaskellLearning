module 747Relations where

-- Bookmarker: "Reflexivity"
-- Question: <-transitivity

-- Library
import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl; cong; sym) -- added sym for symmetry
open import Data.Nat using (ℕ; zero; suc; _+_)
open import Data.Nat.Properties using (+-comm)

-- The less-than-or-equal-to relation.

data _≤_ : ℕ → ℕ → Set where  -- definition LTE. Notice is an infix operator
-- What really is a set?
  z≤n : ∀ {n : ℕ}  -- contructor name
      --------
    → zero ≤ n  -- type, base case
--z≤n : ∀ {n : ℕ) → zero ≤ n -- what does this statement mean? Just that this is a function that maps 

  s≤s : ∀ {m n : ℕ}  -- constructor name. First use of index type with m≤n being indexed by m and n of naturals.
    → m ≤ n
      -------------
    → suc m ≤ suc n  -- type, inductive case
--s≤s : ∀ {m n : ℕ} → m ≤ n → suc m ≤ n

_ : 2 ≤ 4
_ = s≤s (s≤s z≤n)  -- just reduce it down to the base case
-- C-c C-f moves forward to the next hole while C-c C-b moves back to the last hole

-- using {} in the definition of s≤s is case of implicit arguments compared to "∀ (m n : ℕ)" using (). This means they need not be written explicitly and can be inferred by Agda.
-- here instead of using implicit arguments we can use explicit arguments in {}
_ : 2 ≤ 4
_ =  s≤s {1} {3} (s≤s {0} {2} (z≤n {2}))  -- here s≤s is a function taking those arguments explicitly

-- You can also put arguments in by name
_ : 2 ≤ 4
_ = s≤s {m = 1} {n = 3} (s≤s {m = 0} {n = 2} (z≤n {n = 2}))

-- or only include some implicit arguments
_ : 2 ≤ 4
_ = s≤s {n = 3} (s≤s {n = 2} z≤n)  --not sure how these function applications work where it takes in an n and another n and returns the set but I believe that it works
-- don't forget to seperate spacing of arguments

+-identityʳ : ∀ (m : ℕ) → m + zero ≡ m
+-identityʳ zero = refl
+-identityʳ (suc m) rewrite +-identityʳ m = refl

-- we can use _ to get Agda to infer an argument and make it expicit
+-identityʳ′ : ∀ {m : ℕ} → m + zero ≡ m
+-identityʳ′ = +-identityʳ _ -- not sure what the infered value is but it's there

infix 4 _≤_  -- declaring the precedence here. + is level 6 so it binders tighter and thus 1 + 2 ≤ 3 ≡ (1 + 2) ≤ 3
-- again write infix to say that the operator doesn't associate left or right

-- a note is written here to state that determining m ≤ n (m n : ℕ) is decidable. Will return to this point in a later chapter

-- Inversion.
-- here instead of going from smaller to bigger we go from bigger to smaller (i.e. go from successor to predecessor)
inv-s≤s : ∀ {m n : ℕ}  
  → suc m ≤ suc n
    -------------
  → m ≤ n  
inv-s≤s (s≤s m≤n) = m≤n
-- here m≤n is a variable and m ≤ n is a type of type m≤n

inv-z≤n : ∀ {m : ℕ}  -- we can also invert the base case but it also shows that it holds only when m ≡ 0
  → m ≤ zero
    --------
  → m ≡ zero

inv-z≤n z≤n = refl

-- Relational Properties.
-- Common properties include reflexive (n ≤ n ∀n),
-- transivie (if m ≤ n and n ≤ p hold → m ≤ p),
-- Anti-symmetric (if m ≤ n and n ≤ m → n ≡ m),
-- and Total (either m ≤ n or n ≤ m hold).

--There are also names for some combinations of these properties.
--  Preorder = reflexive and transitive.
--  Partial order = preorder that is also anti-symmetric.
--  Total order = partial order that is also total.

-- if you ever bump into a relation you can ask about it's properties.
-- give an example of a preorder that is not a partial order

-- give example of a partial order that is not a total order


-- Reflexivity.
-- Again we're going to use proof by induction to solve our stuff. Base case an induction on the origional origional thing or induction hypothsis. 
≤-refl : ∀ {n : ℕ}  -- n is implicit
    -----
  → n ≤ n
-- here need to bring in the n implicitly then case split
≤-refl {zero} = z≤n  -- base case
≤-refl {suc n} = s≤s ≤-refl  -- inductive case, induction hypothesis ≤-refl {n} but we don't put the {n} because it's implicit? Either way we're reducing it down to the base case.

-- Transitivity.
-- note implicit arguments, I like this form of the proof better
≤-trans : ∀ {m n p : ℕ} → m ≤ n → n ≤ p → m ≤ p
≤-trans z≤n _ = z≤n  -- base case, what is the _ doing in this senario?
≤-trans (s≤s m≤n) (s≤s n≤p) = s≤s (≤-trans m≤n n≤p) -- induction step, appearently if we just take the sucessor of all of them it just works. I'm not convinced. let's do this with equational reasoning.  

≤-trans′ : ∀ (m n p : ℕ) -- without implicit arguments
  → m ≤ n
  → n ≤ p
    -----
  → m ≤ p
≤-trans′ zero _ _ z≤n _ = z≤n  -- base case, paramaters now explicit
≤-trans′ (suc m) (suc n) (suc p) (s≤s m≤n) (s≤s n≤p) = s≤s (≤-trans′ m n p m≤n n≤p) -- inductive case, take suc of all the elements and do same induction but explicitly. I guess it somehow reduces the problem.
-- so even though explicit proofs are clearer and show what's going on they're gunna go for implicit ones to be shorter and not obsure the essence of the proof -_-
-- so we're doing induction on evidence that property holds (e.g. m≤n) instead of a value (.e.g m). Wack.

-- Antisymmetry.

≤-antisym : ∀ {m n : ℕ}
  → m ≤ n
  → n ≤ m
    -----
  → m ≡ n

≤-antisym m≤n n≤m = {!!}

-- Total ordering.

-- A definition with parameters.

data Total (m n : ℕ) : Set where

  forward :
      m ≤ n
      ---------
    → Total m n

  flipped :
      n ≤ m
      ---------
    → Total m n

-- An equivalent definition without parameters.

data Total′ : ℕ → ℕ → Set where

  forward′ : ∀ {m n : ℕ}
    → m ≤ n
      ----------
    → Total′ m n

  flipped′ : ∀ {m n : ℕ}
    → n ≤ m
      ----------
    → Total′ m n

-- Showing that ≤ is a total order.

≤-total : ∀ (m n : ℕ) → Total m n -- introducing with clause
≤-total m n = {!!}

≤-total′ : ∀ (m n : ℕ) → Total m n -- with helper function and where
≤-total′ m n = {!!}

-- Splitting on n first gives different code (see PLFA or try it yourself).

-- Monotonicity.

+-monoʳ-≤ : ∀ (m p q : ℕ)
  → p ≤ q
    -------------
  → m + p ≤ m + q

+-monoʳ-≤ m p q p≤q = {!!}

+-monoˡ-≤ : ∀ (m n p : ℕ)
  → m ≤ n
    -------------
  → m + p ≤ n + p

+-monoˡ-≤ m n p m≤n = {!!} -- use commutativity

+-mono-≤ : ∀ (m n p q : ℕ) -- combine above
  → m ≤ n
  → p ≤ q
    -------------
  → m + p ≤ n + q

+-mono-≤ m n p q m≤n p≤q = {!!}

-- PLFA exercise: show *-mono-≤.

-- Strict inequality.

infix 4 _<_

data _<_ : ℕ → ℕ → Set where

  z<s : ∀ {n : ℕ}
      ------------
    → zero < suc n

  s<s : ∀ {m n : ℕ}
    → m < n
      -------------
    → suc m < suc n

-- 747/PLFA exercise: LTTrans (1 point)
-- Prove that < is transitive.
-- Order of arguments changed from PLFA, to match ≤-trans.

<-trans : ∀ (m n p : ℕ) → m < n → n < p → m < p

<-trans m<n n<p = {!!}  -- no clue how to do this or what is happening, will true writing it down

-- 747/PLFA exercise: Trichotomy (2 points)
-- Prove that either m < n, m ≡ n, or m > n for all m and n.

data Trichotomy (m n : ℕ) : Set where
  is-< : m < n → Trichotomy m n
  is-≡ : m ≡ n → Trichotomy m n
  is-> : n < m → Trichotomy m n

<-trichotomy : ∀ (m n : ℕ) → Trichotomy m n
<-trichotomy m n = {!!}

-- PLFA exercise: show +-mono-<.

-- Prove that suc m ≤ n implies m < n, and conversely,
-- and do the same for (m ≤ n) and (m < suc n).
-- Hint: if you do the proofs in the order below, you can avoid induction
-- for two of the four proofs.

-- 747/PLFA exercise: LEtoLTS (1 point)

≤-<-to : ∀ {m n : ℕ} → m ≤ n → m < suc n
≤-<-to m≤n = {!!}

-- 747/PLFA exercise: LEStoLT (1 point)

≤-<--to′ : ∀ {m n : ℕ} → suc m ≤ n → m < n
≤-<--to′ sm≤n = {!!}

-- 747/PLFA exercise: LTtoSLE (1 point)

≤-<-from : ∀ {m n : ℕ} → m < n → suc m ≤ n
≤-<-from m<n = {!!}

-- 747/PLFA exercise: LTStoLE (1 point)

≤-<-from′ : ∀ {m n : ℕ} → m < suc n → m ≤ n
≤-<-from′ m<sn = {!!}

-- PLFA exercise: use the above to give a proof of <-trans that uses ≤-trans.

-- Mutually recursive datatypes.
-- Specify the types first, then give the definitions.

data even : ℕ → Set
data odd  : ℕ → Set

data even where

  zero :
      ---------
      even zero

  suc  : ∀ {n : ℕ}
    → odd n
      ------------
    → even (suc n)

data odd where

  suc   : ∀ {n : ℕ}
    → even n
      -----------
    → odd (suc n)

-- Theorems about these datatypes.
-- The proofs are also mutually recursive.
-- So we give the types first, then the implementations.

e+e≡e : ∀ {m n : ℕ}
  → even m
  → even n
    ------------
  → even (m + n)

o+e≡o : ∀ {m n : ℕ}
  → odd m
  → even n
    -----------
  → odd (m + n)

e+e≡e em en = {!!}

o+e≡o om en = {!!}

-- 747/PLFA exercise: OPOE (2 points)
-- Prove that the sum of two odds is even.
-- Hint: You will need to define another theorem and prove both
--       by mutual induction, as with the theorems above.         

o+o≡e : ∀ {m n : ℕ}
  → odd m
  → odd n
  --------------
  → even (m + n)

o+o≡e om on = {!!}


-- For remarks on which of these definitions are in the standard library, see PLFA.

-- Here is the new Unicode used in this file.

{-

≤  U+2264  LESS-THAN OR EQUAL TO (\<=, \le)
≥  U+2265  GREATER-THAN OR EQUAL TO (\>=, \ge)
ˡ  U+02E1  MODIFIER LETTER SMALL L (\^l)
ʳ  U+02B3  MODIFIER LETTER SMALL R (\^r)

-}
