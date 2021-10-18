module A3NegationWorking where

-- Library

open import Relation.Binary.PropositionalEquality using (_≡_; refl) -- added last
open import Data.Nat using (ℕ; zero; suc)
open import Data.Empty using (⊥; ⊥-elim)
open import Data.Sum using (_⊎_; inj₁; inj₂)
open import Data.Product using (_×_; proj₁; proj₂)

open import Isomorphism using (extensionality)
open import Relations
open import Negation using (¬_; ¬-elim; ¬¬-intro; ¬¬¬-elim; contraposition)

-- 747/PLFA exercise: NotFourLTThree (1 point)
-- Show ¬ (4 < 3).

¬4<3 : ¬ (4 < 3)
¬4<3 (s<s (s<s (s<s ())))

-- NotFourLTThree/¬4<3 proof successfully completed

-- 747/PLFA exercise: LTIrrefl (1 point)
-- < is irreflexive (never reflexive).

¬n<n : ∀ (n : ℕ) → ¬ (n < n)
¬n<n (suc n) (s<s n<n) = ¬n<n n n<n  -- using induction to go down to base case

-- LTIrrefl/¬n<n proof successfully completed

-- TODO REMOVE: I don't know how I did it but somehow using induction to recurse down 

-- How do we know this does not give a contradiction?
-- The following theorem of intuitionistic logic demonstrates this.
-- (The proof is compact, but takes some thought.)

-- 706: BONUS
em-irrefutable : ∀ {A : Set} → ¬ ¬ (A ⊎ ¬ A)
em-irrefutable {A} ¬A⊎¬A = contraposition ¬A⊎¬A (λ n → n) (inj₂ (λ a → ¬A⊎¬A (inj₁ a)))  -- a little messy but use contraposition to apply negation on either side

-- TODO/remove: How I did this? Litterally just case split and auto refined until it completed it lol. No idea now.

-- 706: BONUS/em-irrefutable successfully completed
