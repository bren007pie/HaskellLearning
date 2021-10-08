module 747Relations where

-- PLFA-Bookmarker: "Reflexivity"
-- Question: <-trichotomy

-- Library Imports
import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl; cong; sym) -- added sym for symmetry
open import Data.Nat using (ℕ; zero; suc; _+_; _*_)
open import Data.Nat.Properties using (+-comm)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; _∎) -- using equation reasoning for test proofs

-- The less-than-or-equal-to relation.

data _≤_ : ℕ → ℕ → Set where  -- here set means it's a type.

  z≤n : ∀ {n : ℕ} → zero ≤ n  -- type, base case. Constructor. z≤n maps to zero ≤ n
-- what does this statement mean? Just that this is a function that maps the statement to a type zero ≤ n.
  s≤s : ∀ {m n : ℕ} → m ≤ n → suc m ≤ suc n  -- type, inductive 
-- constructor name. First use of index type with m≤n being indexed by m and n of naturals.
-- Here we have the constructor s≤s maps to a type m ≤ n which maps to suc m ≤ suc n. This means we can inductively build up the relation starting from 0 ≤ n upward using the sucessor function. For induction it takes evidence m ≤ n holds to show the k+1 case holds (i.e. suc m ≤ suc n). Remember for induction we prove the base case and then we prove the inductive case (m+1) holds assuming the induction hypothesis (m) holds.

_ : 2 ≤ 4
_ = s≤s (s≤s z≤n)  -- just reduce it down to the base case
-- C-c C-f moves forward to the next hole while C-c C-b moves back to the last hole


_ : 4 ≤ 5
_ = s≤s (s≤s (s≤s (s≤s z≤n)))
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

_ : 4 ≤ 7
_ = s≤s (s≤s (s≤s (s≤s z≤n)))

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
-- Says that trans′ maps to m ≤ n maps to n ≤ p maps to m ≤ p.
≤-trans z≤n _ = z≤n  -- base case, what is the _ doing in this senario? I think in this senario it's just an empty variable that doesn't matter because it holds for m=0 case.
≤-trans (s≤s m≤n) (s≤s n≤p) = s≤s (≤-trans m≤n n≤p) -- induction step, appearently if we just take the sucessor of all of them it just works. I'm not convinced.

≤-trans′ : ∀ (m n p : ℕ) → m ≤ n → n ≤ p → m ≤ p
-- explicit (without implicit) arguments. 
≤-trans′ zero _ _ z≤n _ = z≤n  -- base case, paramaters now explicit
≤-trans′ (suc m) (suc n) (suc p) (s≤s m≤n) (s≤s n≤p) = s≤s (≤-trans′ m n p m≤n n≤p) -- inductive case, take suc of all the elements and do same induction but explicitly. I guess it somehow reduces the problem.
-- so even though explicit proofs are clearer and show what's going on they're gunna go for implicit ones to be shorter and not obsure the essence of the proof -_-
-- so we're doing induction on evidence that property holds (e.g. m≤n) instead of a value (.e.g m). Wack.

--Let's prove transitivity using explict paramaters and equational reasoning.
{- not sure how to prove using equational reasoning. Would need to fenagle to make types match
≤-trans″ : ∀ (m n p : ℕ) → m ≤ n → n ≤ p → m ≤ p
≤-trans″ zero zero zero = 
  begin
    zero ≤ zero
  ≡⟨⟩  -- by definition of ≤
    z≤n
  ≡⟨⟩  -- by definition of ≤
    zero ≤ zero
  ∎
-}

-- Antisymmetry.

≤-antisym : ∀ {m n : ℕ} → m ≤ n → n ≤ m → m ≡ n

≤-antisym z≤n z≤n = refl
≤-antisym (s≤s m≤n) (s≤s n≤m) = cong suc (≤-antisym m≤n n≤m)  -- using induction hypothesis and taking the sucessor of it using cong

-- Total ordering.

-- A definition with parameters.

data Total (m n : ℕ) : Set where  -- This is a type. Evidence is proofs

  forward : m ≤ n → Total m n

  flipped : n ≤ m → Total m n
-- Evidence that Total m n holds is either of the form forward m≤n or flipped n≤m, where m≤n and n≤m are evidence of m ≤ n and n ≤ m respectively.

-- An equivalent definition without parameters.

data Total′ : ℕ → ℕ → Set where
  forward′ : ∀ {m n : ℕ} → m ≤ n → Total′ m n
  flipped′ : ∀ {m n : ℕ} → n ≤ m → Total′ m n

-- Showing that ≤ is a total order.

≤-total : ∀ (m n : ℕ) → Total m n -- introducing with clause
≤-total zero n = forward z≤n
≤-total (suc m) zero = flipped z≤n
≤-total (suc m) (suc n) with ≤-total m n
...                    | forward m≤n = forward (s≤s m≤n)  
...                    | flipped n≤m = flipped (s≤s n≤m)
-- -- need these ... here to have continuation of the line or it breaks
-- using the with keyword is some Haskell here to pattern match using gaurds (|)

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

{- multiple proofs needed so would have finished if had the time
-- PLFA BONUS exercise: show *-mono-≤

-- 3 parts, adapted from the +-mono-≤. Some slight differences and more proofs needed

*-monoʳ-≤ : ∀ (n p q : ℕ) → p ≤ q → n * p ≤ n * q
*-monoʳ-≤ zero p q z≤n = z≤n
*-monoʳ-≤ (suc n) p q p≤q = {!!}  -- not sure
-- Strict inequality.


-- Need *-comm
*-comm : ∀ (m n : ℕ) → m * n ≡ n * m
*-comm zero zero = refl
*-comm zero (suc n) = {!!}
*-comm (suc m) n = {!!}


*-monoˡ-≤ : ∀ (m n p : ℕ) → m ≤ n → m + p ≤ n + p
*-monoˡ-≤ m n p m≤n  rewrite *-comm m p | *-comm n p  = *-monoʳ-≤ p m n m≤n

*-mono-≤ : ∀ (m n p q : ℕ) → m ≤ n → p ≤ q → m + p ≤ n + q
*-mono-≤ m n p q m≤n p≤q  =  ≤-trans (*-monoˡ-≤ m n p m≤n) (*-monoʳ-≤ n p q p≤q)
-}

infix 4 _<_


data _<_ : ℕ → ℕ → Set where

  z<s : ∀ {n : ℕ} → zero < suc n

  s<s : ∀ {m n : ℕ} → m < n → suc m < suc n

-- or try Agda with clause as with ≤-total proof

{- Actually I'm a dummy. Suc m ≡ suc n is nto Suc m < Suc n. This does not work.
-- Defining inv-s<s to be used in <-Trichotomy proof to do suc m ≡ suc n → m < n
inv-s<s : ∀ {m n : ℕ} → suc m < suc n → m < n  
inv-s<s (s<s m<n) = m<n
-}

-- 747/PLFA exercise: LTTrans (1 point)
-- Prove that < is transitive.
-- Order of arguments changed from PLFA, to match ≤-trans.

<-trans : ∀ {m n p : ℕ} → m < n → n < p → m < p
<-trans z<s (s<s n<p) = z<s  -- case split twice and then saw it got to pattern of z<s
<-trans (s<s m<n) (s<s n<p) = s<s (<-trans m<n n<p)  -- case split on n<p and it added sucessor so it worked. Now is of right type. Then refined type. Then our goal is one of our assumptions so we just say the rule itself with the two assumptions

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


-- how I did it: Case split on m, then n on first on. Then is is-≡
-- Then zer (suc n) we know zero always less then sucn so autocomplete pattern
-- Then case split again on n to have other case of (suc m) > zero. Autocomplete
-- Then used copatterns gaurd thing to split cases. Got back to suc m ≡ suc n. Was going to use another lemma but realized it's just suc on both sides so used cong to show that it's just the m≡n case of trichotomy

-- PLFA exercise: show +-mono-<.


-- Prove that suc m ≤ n implies m < n, and conversely,
-- and do the same for (m ≤ n) and (m < suc n).
-- Hint: if you do the proofs in the order below, you can avoid induction
-- for two of the four proofs.



-- 747/PLFA exercise: LEtoLTS (1 point)

{-
≤-<-to : ∀ {m n : ℕ} → m ≤ n → m < suc n
≤-<-to z≤n = z<s    -- z≤n → z<s. Equivalant constructors map
≤-<-to (s≤s m≤n) = s<s (≤-<-to m≤n)  -- induction hypothesis m < suc n
-}
≤-<-to : ∀ {m n : ℕ} → m ≤ n → m < suc n
≤-<-to z≤n = z<s  -- here m is zero, prove base case 0 < suc n (which is z<s)
≤-<-to (s≤s m≤n) = s<s (≤-<-to m≤n) -- here m+1, assume m (induction hypothesis), and prove you can get to suc m < suc (suc n). So we take the sucessor away from proof goal and just get m < suc n which is induction hypothesis so we call the function with the input and get that. And we're good

-- LEtoLTS/≤-<-to  proof successfully completed

-- How I did it: case split m≤n because didn't have much. Auto complete. refine. Do interactively.

-- Problem/Question bookmarker:
{-
-- attempting to add reverse lemmas to see if that will help autocomplete. Really need to think about how types are trying to be mapped in each question
inv-s<s : ∀ {m n : ℕ} → suc m < suc n → m < n  
inv-s<s (s<s m<n) = m<n

inv-z<n : ∀ {m : ℕ} → m < suc zero → m ≡ zero
inv-z<n z<s = refl
-}



-- 747/PLFA exercise: LEStoLT (1 point)

≤-<--to′ : ∀ {m n : ℕ} → suc m ≤ n → m < n
≤-<--to′ (s≤s z≤n) = z<s  -- suc zero ≤ suc n = 0 < suc n → z<s
≤-<--to′ (s≤s (s≤s sm≤n)) = s<s (≤-<--to′ (s≤s sm≤n)) -- goal is m < suc n so we use induction hypothesis to map (suc m ≤ suc n) → m < suc n

-- try looking closely at the types in this and previous question, try watching lecture, 
-- How I did: case split, case split, all while looking at type. Then reduce and auto. Once you logic it out the types make sense but it's wack

-- 747/PLFA exercise: LTtoSLE (1 point)

≤-<-from : ∀ {m n : ℕ} → m < n → suc m ≤ n
≤-<-from z<s = s≤s z≤n     -- 1 ≤ suc n
≤-<-from (s<s m<n) = s≤s (≤-<-from m<n)  -- induction of hypthesis (suc m) ≤ n

-- How I did that: Case split, auto complete on both holes (bassically free)

-- 747/PLFA exercise: LTStoLE (1 point)

≤-<-from′ : ∀ {m n : ℕ} → m < suc n → m ≤ n
≤-<-from′ z<s = z≤n  
≤-<-from′ (s<s z<s) = s≤s z≤n
≤-<-from′ (s<s (s<s m<sn)) = s≤s (≤-<-from′ (s<s m<sn))  -- goal is suc m ≤ n so use induction hypothesis on suc m < suc n to get that goal

-- PLFA exercise: use the above to give a proof of <-trans that uses ≤-trans.

-- Mutually recursive datatypes.
-- Specify the types first, then give the definitions.

data even : ℕ → Set  -- set so it's a datatype
data odd  : ℕ → Set

data even where

  zero : even zero

  suc  : ∀ {n : ℕ} → odd n → even (suc n)  -- first use of overloaded constructors, suc works for ℕ, even, or odd type each with a different mapping

data odd where  -- here we have a mutually recurive type

  suc   : ∀ {n : ℕ} → even n → odd (suc n)

--variable can't be overloaded but constructors like zero and suc can be

-- Theorems about these datatypes.
-- The proofs are also mutually recursive.
-- So we give the types first, then the implementations.

e+e≡e : ∀ {m n : ℕ} → even m → even n → even (m + n)

o+e≡o : ∀ {m n : ℕ} → odd m → even n → odd (m + n)

e+e≡e zero en = en
e+e≡e (suc om) en = suc (o+e≡o om en)

o+e≡o (suc em) en = suc (e+e≡e em en)

-- defining lemma to get pattern matching to work
e+o≡o : ∀ {m n : ℕ} → even m → odd n → odd (m + n)

o+o≡e : ∀ {m n : ℕ} → odd m → odd n → even (m + n)

e+o≡o zero on = on
e+o≡o (suc om) on = suc (o+o≡e om on)

--mutually recursive types have mutually recusive functions so have to have definitions after declaration

-- 747/PLFA exercise: OPOE (2 points)
-- Prove that the sum of two odds is even.
-- Hint: You will need to define another theorem and prove both
--       by mutual induction, as with the theorems above.         


o+o≡e (suc em) on = suc (e+o≡o em on)


-- For remarks on which of these definitions are in the standard library, see PLFA.

-- Here is the new Unicode used in this file.

{-

≤  U+2264  LESS-THAN OR EQUAL TO (\<=, \le)
≥  U+2265  GREATER-THAN OR EQUAL TO (\>=, \ge)
ˡ  U+02E1  MODIFIER LETTER SMALL L (\^l)
ʳ  U+02B3  MODIFIER LETTER SMALL R (\^r)

-}
