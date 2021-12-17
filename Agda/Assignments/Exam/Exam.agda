{-
CAS 706 - Programming Langauges - A_
Brendan Fall
fallonbr
Dec 17, 2021

Question Fully Completed
        Part 3: Integers
                7. _+Int_
	Part 5: Lambda Calculus
		17. Format and added unit and top
		18. sucᶜ and ⊢sucᶜ
		19. Properties for unit and top
		20. 2/4 quiz questions
     
Questions Partially Completed/Attempted
Part 1: 2 ⊎ 2 ≃ 2 × 2
1. twos
2. twos′
3. twos∘twos′≄id
Part 2: Inductive plus
4. plus
5. plus-correct
Part 3: Integers
6. Int≃ℤ
8. +-equiv
9. _<_
10. _<?_
Part 4: Rose Trees
  11. Implement Rose Trees with two constructors
12. map
13. foldr
14. depth
15. foldr flatten tree to list
16. Build a rose tree with depth 5
-}
-- this is a lot of questions for only 24 hours


module Exam where

-- Library

open import Data.Bool using (Bool)
open import Data.Integer using (ℤ) renaming (_+_ to _+ℤ_)
open import Data.Nat using (ℕ; zero; suc; _+_)
open import Data.Product using (Σ; _×_; _,_; proj₁; proj₂)
open import Data.Sum using (_⊎_; inj₁; inj₂; reduce; fromInj₁; fromInj₂)
open import Function using (_∘_)
import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl; cong; sym)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; step-≡; _∎)
open import Relation.Nullary using (¬_; Dec; yes; no)


open import Isomorphism
open import Lists
open _≃_

-- You may use anything from the standard library that you find useful

-- Prove that 2 ⊎ 2 ≃ 2 × 2

-- using refinement here, used reduce from standard library
twos : Bool ⊎ Bool ≃ Bool × Bool
twos = mk-≃ (λ B⊎B → (reduce B⊎B , reduce B⊎B))
            (λ B×B → inj₁ (proj₁ B×B))
            (λ x → {!!} )  -- got stuck on how to prove/reformat
            {!!}           -- If I had more time I would try to restructure the question so this worked

-- Show that the proof above is NOT 'canonical' by
-- giving another proof but such that the two proofs
-- don't compose to give the identity

-- using case splitting here, would have written down on paper or tested to make sure they don't compose
twos′ : Bool ⊎ Bool ≃ Bool × Bool
to twos′ B⊎B = reduce B⊎B , reduce B⊎B
from twos′ (fst , snd) = inj₁ fst
from∘to twos′ (inj₁ x) = refl
from∘to twos′ (inj₂ y) = {!!}   --same thing here
to∘from twos′ B×B = {!!}

twos∘twos′≄id : Σ (Bool ⊎ Bool) (λ x → ¬ (from twos′ (to twos x) ≡ x))
twos∘twos′≄id = {!!}

--

-- Here is the "induction principle" for ℕ
indℕ : (P : ℕ → Set) → P 0 → ({n : ℕ} → P n → P (suc n)) → (∀ m → P m)
indℕ P P0 Psuc zero = P0
indℕ P P0 Psuc (suc m) = Psuc (indℕ P P0 Psuc m)

-- Did not have time to figure this out but if I did I would have tried to figure out how
  -- to use pattern-matching to implement this plus

-- Use indℕ to define plus. Hint: indℕ is equivalent to pattern-matching on an element of ℕ.
plus : ℕ → ℕ → ℕ
plus m n = {!!}

-- prove that it is indeed equal to _+_
plus-correct : ∀ m {n} → plus m n ≡ m + n
plus-correct m = {!!}

--

-- Consider the following alternate definitions of the integers
data Int : Set where
  pos : ℕ → Int
  zer :     Int
  neg : ℕ → Int

-- case splitting to prove it's isomorphic
-- So apparently neg is strictly sero so neg 0 is -1 and ℤ.negsuc 0 is also -1.
-- So they are both the same offset which means the constant 0ℤ must be the same as zer
-- wasn't able to figure out how to make assymetric.
  -- If I had more time I would look in the Data.Integer library to see how they implement zero

-- Prove that this is equivalent to ℤ
Int≃ℤ : Int ≃ ℤ
to Int≃ℤ (pos n) = ℤ.pos n 
to Int≃ℤ zer = {!Data.Integer.0ℤ!} -- Data.Integer.0ℤ 
to Int≃ℤ (neg n) = ℤ.negsuc n
from Int≃ℤ (ℤ.pos n) = pos n
from Int≃ℤ (ℤ.negsuc n) = neg n
from∘to Int≃ℤ (pos x) = refl
from∘to Int≃ℤ zer = {!!}
from∘to Int≃ℤ (neg x) = {!!}
to∘from Int≃ℤ = {!!}

-- implement plus for Int
-- again using case splitting and + to implement
_+Int_ : Int → Int → Int
zer +Int zer = zer
m +Int zer = zer
zer +Int n = zer
pos zero +Int pos n = pos n
pos (suc m) +Int pos n = pos (suc (m + n))
pos zero +Int neg n = neg n
pos (suc m) +Int neg zero = pos (suc m)
pos (suc m) +Int neg (suc n) = (pos m) +Int (neg n)
neg zero +Int pos n = pos n
neg (suc m) +Int pos zero = neg (suc m)
neg (suc m) +Int pos (suc n) = (neg m) +Int (pos n)
neg zero +Int neg n = neg n
neg (suc m) +Int neg n = neg (suc (m + n))

--_+Int_ successfully implemented
-- TODO test cases for _+Int_

-- show that it is equivalent
-- trying case splitting, still need a proof that pos zero ≡ zer or to rework the above
+-equiv : (x y : Int) → x +Int y ≡ from Int≃ℤ (to Int≃ℤ x +ℤ to Int≃ℤ y)
+-equiv x y = {!!}  -- can't advance this one until I properly implement
                             --the previous isomorphism because of depency on from and to

-- did not get a chance to prove this, not enough time
-- If I did would have case split and worked each porblem.
-- But first I would have needed to get Int≃ℤ right to know I'm doing the right thing
-- define _<_ for Int
_<_ : Int → Int → Set
x < y = {!!}

-- same thign here, gated by Int≃ℤ and not enough time

-- show that this is a decidable property
_<?_ : ∀ (x y : Int) → Dec (x < y)
x <? y = {!!}

--

-- The standard library implements Rose Trees (Data.Tree.Rose) but in an odd
-- way using 'sized types' (which we have not covered). Implement them
-- using two constructors instead, where
-- 1) data is at the leaves
-- 2) there is no data in the noces
-- (so that you'll need two constructors).

-- data Rose (A : Set) : Set where

-- implement 'map', 'foldr' and 'depth'. Consider leaves to have depth 0.
-- use 'foldr' to get all the data from a Rose tree into a (flat) list

-- build a Rose tree with depth 5 that contains *NO* data at all.

-- My attempt: so we're going to build a tree, a datastructure we've never done in class
  -- so I'm going to use the standard library as reference
  -- from Data.Tree.Binary
{-
-- Trees with node values of type N and leaf values of type L
data Tree (N : Set n) (L : Set l) : Set (n ⊔ l) where
  leaf : L → Tree N L
  node : Tree N L → N → Tree N L → Tree N L
-}
-- but we need our tree we need to not have any data at the nodes (no Ns).
  -- A rose tree also need to have an unbounded number of nodes so we'll use a list to store children

{- This is my first attempt but doesn't work because you can't recursively define Rose because it's not in scope
-- subTs the child trees and L is data and the leaf
data Rose (subTs : List Rose) (L : Set) : Set where
  leaf : L → Rose [] L
  node : [subts] → Rose [subts] L
-}

-- If I had more time I would try to make the tree still use lists but not have Rose in the type signature

-- Bonus: build a variant of the above
-- data Rose′ (A : Set) : ℕ → ℕ → Set where
-- where the first natural number counts the number of data in the tree,
-- and the second is the branching factor
-- and Vec is used instead of List. Furthermore, arrange your constructors
-- so as to make it impossible to build an example like the above (depth 5 with no data).
-- Implement 'map', 'foldr' and 'depth'.
-- What interesting theorems can you prove about Rose′ ?

----------------------------

-- Take Lambda.agda (the one that is 'filled' from the course materials)
-- remove `zero, `suc and case_[zero⇒_|suc_⇒_] from values and `ℕ from the types;
   -- done in the attached Agda file
--  add `unit to the values and `⊤ to the types.
--   (remove everything that is directly about those 3 items, except for the Church-numerals)
     -- done in the attached Agda file
-- change sucᶜ to return something in the shapre of a Church numeral
   -- done in the attached Agda file
-- What does twoᶜ · sucᶜ · `unit now reduce to?
   -- twoᶜ · sucᶜ · `unit now reduces to: ƛ "s" ⇒ (ƛ "z" ⇒ ` "s" · ((ƛ "s" ⇒ (ƛ "z" ⇒
     --` "s" · (`unit · ` "s" · ` "z"))) · ` "s" · ` "z"))
      -- it still has lambda terms in it because the interpretations of suc and zero have
        -- not been provided in the expression. If they were it would reduce down further
-- ⊢sucᶜ has a different types -- what?
  -- ⊢sucᶜ can no longer have type `ℕ ⇒ `ℕ because `ℕ doesn't exist anymore.
    -- It would now have to take the type of the interpretations of "s" and "z" provided.
      -- Because it is a lambda expression and those can be anything it depends on what is given.

-- Modify Properties.agda in the same way, proving progress and preservation.
  -- done in the attached Agda file
  
-- There are 4 Quiz questions at the end of https://plfa.github.io/Properties/.
-- Pick any 2 of them, and answer them.
   -- answered in the attached text file

---------------------------

-- End of Exam
