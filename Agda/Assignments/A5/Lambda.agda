{-
Brendan Fallon
fallonbr
November 3, 2021

Question Fully Completed
	NatMul (1 pt)
	ChurchMul (1 pt)
	MulTyped(2 pts)
	MulCTyped (2 pts)
Questions Partially Completed
        StepEmbedsIntoStepPrime(2 pts)

-}


module Exercises.Lambda where


-- Library
open import Data.Bool using (T; not)
open import Data.String using (String; _≟_)
open import Data.Nat using (ℕ; zero; suc)
open import Data.Empty using (⊥; ⊥-elim)
open import Relation.Nullary using (Dec; yes; no; ¬_)
open import Relation.Nullary.Decidable using (⌊_⌋; False; toWitnessFalse)
open import Relation.Nullary.Negation using (¬?)
open import Relation.Binary.PropositionalEquality using (_≡_; _≢_; refl)

open import Isomorphism using (_≲_)  -- \ < ~ (tilde)
open import Lambda

-- 747/PLFA exercise: NatMul (1 point)
-- Write multiplication for natural numbers.
-- Alas, refinement will not help, and there is no way (yet) to write tests.

-- following same form as plus but different cases

mul : Term 
mul = μ "*" ⇒ ƛ "m" ⇒ ƛ "n" ⇒
         case ` "m"
           [zero⇒ `zero
           |suc "m" ⇒ `suc (` "*" · ` "m" · ` "n") ]

-- to implement this we would do
2*2 : Term
2*2 = mul · two · two

-- mul successfully implemented
           
-- 747/PLFA exercise: ChurchMul (1 point)
-- Write multiplication for Church numbers.
-- Use of plusᶜ is optional! fixpoint is not needed.

-- This answer based on the Wikipedia page for Church Encoding
-- Source: https://en.wikipedia.org/wiki/Church_encoding#Calculation_with_Church_numerals
-- Uses identity f^∘(m*n) (x) = (f^∘n)^∘m (x)
-- mult ≡ λm.λn.λf.λx.m (n f) x where f is suc and x is zero

mulᶜ : Term
mulᶜ = ƛ "m" ⇒ ƛ "n" ⇒ ƛ "s" ⇒ ƛ "z" ⇒
         ` "m" · (` "n" · ` "s") · ` "z"

-- this would be implemented as
fourᶜ′ : Term
fourᶜ′ = mulᶜ · twoᶜ · twoᶜ

-- ChurchMul/mulᶜ has been successfully implemented 

-- PLFA exercise: use the new notation to define multiplication.

-- 747/PLFA exercise: StepEmbedsIntoStepPrime (2 points)
-- Show that the first definition embeds into the second.
-- Why is it not an isomorphism?

-- Using copatterns by case split, split again to get constructors
-- Need helper functions to convert different steps or define in different way

-- case split using copatterns
-- transitivity .to needed to use step and recursive call of .to get right form 
-- from step needed to use both constructors


ms1≤ms2 : ∀ {M N} → (M —↠ N) ≲ (M —↠′ N)
_≲_.to ms1≤ms2 (_ ∎) = refl′
_≲_.to ms1≤ms2 (_ —→⟨ M—→L ⟩ L—↠N) =
               trans′ (step′ M—→L) (_≲_.to ms1≤ms2 L—↠N)
_≲_.from ms1≤ms2 (step′ M—→N) = (_ —→⟨ M—→N ⟩ _∎ _)
_≲_.from ms1≤ms2 refl′ = _∎ _
_≲_.from ms1≤ms2 (trans′ M—↠′L L—↠′N) = (_ —→⟨ {!(_≲_.from ms1≤ms2 M—↠′L)!} ⟩ _≲_.from ms1≤ms2 L—↠′N)  -- use other two constructors
  where
    revstep′ : ∀ {A B} → A —↠′ B → A —→ B 
    revstep′ A—↠′B = {!!}
-- either, make something converts from —↠′ to —→ (doesn't seem likely)
-- find some function that does, 
-- define some helper function that does
  -- case split, doesn't seem to go anywhere/help reduce problem
_≲_.from∘to ms1≤ms2 x = {!!} -- finish from first




-- PLFA exercise: write out the reduction sequence showing one plus one is two.

-- 747/PLFA exercise: MulTyped (2 points)
-- Show that your mul above is well-typed.

-- done by refinement, then counting to fill in names

⊢mul : ∀ {Γ} → Γ ⊢ mul ⦂ `ℕ ⇒ `ℕ ⇒ `ℕ
⊢mul = ⊢μ (⊢ƛ (⊢ƛ (⊢case (⊢` (S′ Z)) ⊢zero (⊢suc
     (((⊢` (S′ (S′ (S′ Z)))) · (⊢` Z)) · ⊢` (S′ Z))))))

-- MulTyped/⊢mul proof successfully completed

-- 747/PLFA exercise: MulCTyped (2 points)
-- Show that your mulᶜ above is well-typed.

-- done by refinement, then counting to fill in names

⊢mulᶜ : ∀ {Γ A} → Γ  ⊢ mulᶜ ⦂ Ch A ⇒ Ch A ⇒ Ch A
⊢mulᶜ = ⊢ƛ (⊢ƛ (⊢ƛ (⊢ƛ (((⊢` (S′ (S′ (S′ Z)))) ·
      ((⊢` (S′ (S′ Z))) · (⊢` (S′ Z)))) · (⊢` Z)))))

-- MulCTyped/⊢mulᶜ proof successfully completed

-- Unicode:

{-
⇒  U+21D2  RIGHTWARDS DOUBLE ARROW (\=>)
ƛ  U+019B  LATIN SMALL LETTER LAMBDA WITH STROKE (\Gl-)
·  U+00B7  MIDDLE DOT (\cdot)
—  U+2014  EM DASH (\em)
↠  U+21A0  RIGHTWARDS TWO HEADED ARROW (\rr-)
ξ  U+03BE  GREEK SMALL LETTER XI (\Gx or \xi)
β  U+03B2  GREEK SMALL LETTER BETA (\Gb or \beta)
∋  U+220B  CONTAINS AS MEMBER (\ni)
∅  U+2205  EMPTY SET (\0)
⊢  U+22A2  RIGHT TACK (\vdash or \|-)
⦂  U+2982  Z NOTATION TYPE COLON (\:)
😇  U+1F607  SMILING FACE WITH HALO
😈  U+1F608  SMILING FACE WITH HORNS

-}
