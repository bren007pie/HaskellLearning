{-# OPTIONS --allow-unsolved-metas #-}
module Exercises.Properties where

-- Library

open import Relation.Binary.PropositionalEquality
  using (_≡_; _≢_; refl; sym; cong; cong₂)
open import Data.String using (String; _≟_)
open import Data.Nat using (ℕ; zero; suc)
open import Data.Empty using (⊥; ⊥-elim)
open import Data.Product
  using (_×_; proj₁; proj₂; ∃; ∃-syntax)
  renaming (_,_ to ⟨_,_⟩)
open import Data.Sum using (_⊎_; inj₁; inj₂)
open import Relation.Nullary using (¬_; Dec; yes; no; does; proof; _because_; ofʸ; ofⁿ)
open import Agda.Builtin.Bool using (true; false)
open import Function using (_∘_)

open import Isomorphism using (_≃_)
open import Lambda
open import Properties

-- 747/PLFA exercise: AltProg (5 points)
-- Here is an alternate formulation of progress.
-- Show that it is isomorphic to Progress M, and prove this form
-- of the progress theorem directly.

-- Alt. definition of progress says it's either a value OR
  -- there's an N that imples M steps to N
-- splitting on progress and adding done (value/inj₁)
  -- or step (∃[ N ](M —→ N/inj₂) depending on if it's a value or step.

progress-iso : ∀ {M} → Progress M ≃ Value M ⊎ ∃[ N ](M —→ N) 
_≃_.to progress-iso (step {N} m—→n) = inj₂ ⟨ N , m—→n ⟩  -- needed term so threw in N, not sure if I had to split on all types of terms, M was unbound so yeah idk
_≃_.to progress-iso (done vm) = inj₁ vm
_≃_.from progress-iso (inj₁ vm) = done vm
_≃_.from progress-iso (inj₂ ⟨ N , m—→n ⟩) = step m—→n
_≃_.from∘to progress-iso (step m—→n) = refl
_≃_.from∘to progress-iso (done vm) = refl
_≃_.to∘from progress-iso (inj₁ vm) = refl
_≃_.to∘from progress-iso (inj₂ ∃[N]m—→n ) = refl

-- Tip from lecture: this will look ALOT like proof of progress 
-- So did induction/case split on well typed term m:a to get all the cases
-- Followed same form as progress, used _ as term because witness doesn't matter

progress′ : ∀ M {A} → ∅ ⊢ M ⦂ A → Value M ⊎ ∃[ N ](M —→ N)
progress′ .(ƛ _ ⇒ _) (⊢ƛ m:a) = inj₁ V-ƛ 
progress′ .(_ · _) (m:a · n:b) with progress m:a
... | step {M} l—→n = inj₂ ⟨ _ , ξ-·₁ l—→n ⟩  
... | done V-ƛ with progress n:b
...            | step m—→n = inj₂ ⟨ _ , ξ-·₂ V-ƛ m—→n ⟩
...            | done vm = inj₂ ⟨ _ , (β-ƛ vm) ⟩
progress′ .`zero ⊢zero = inj₁ V-zero
progress′ .(`suc _) (⊢suc m:a) with progress m:a
...                            | step m—→n = inj₂ ⟨ _ , (ξ-suc m—→n) ⟩
...                            | done vm = inj₁ (V-suc vm)
progress′ .(case _ [zero⇒ _ |suc _ ⇒ _ ]) (⊢case L:ℕ m:a n:a) with progress L:ℕ
... | step l—→n = inj₂ ⟨ _ , (ξ-case l—→n) ⟩
... | done V-zero = inj₂ ⟨ _ , β-zero ⟩
... | done (V-suc vv) = inj₂ ⟨ _ , β-suc vv  ⟩
progress′ .(μ _ ⇒ _) (⊢μ m:a) = inj₂ ⟨ _ , β-μ ⟩


-- AltProg/( progress-iso + progress′) exercise successfully completed


-- 747/PLFA exercise: ValueEh (1 point)
-- Write a function to decide whether a well-typed term is a value.
-- Hint: reuse theorems proved above (in properties) to do most of the work.

value?′ : ∀ {A M} → ∅ ⊢ M ⦂ A → Dec (Value M)
value?′ m:a = true because (ofʸ {!!})

-- I wasn't sure how to get use progress to show proof of step
-- So I used form of proof of progress to prove decidability of value
-- There is most likely a much nicer proof.
-- doing induction/case split on m:a, refined each case
-- If the well typed case reduces to a value it's true
-- If can't tell if it's well typed off the well-typed case it's false
-- Then in each false case need to show that it can step

¬V—→ : ∀ {M N} → ¬ Value M → M —→ N
¬V—→ ¬vm = ⊥-elim (¬vm {!!})  -- stuck because don't know how to prove this

value? : ∀ {A M} → ∅ ⊢ M ⦂ A → Dec (Value M)
value? (⊢ƛ m:a) = true because ofʸ V-ƛ
value? (m:a · n:b) with value? m:a
... | no ¬v = false because ofⁿ (—→¬V (ξ-·₁ (¬V—→ ¬v))) -- need helper  
... | yes V-ƛ with value? n:b
...            | no z = {!!}
...            | yes z = {!!} 
value? ⊢zero = true because (ofʸ V-zero)
value? (⊢suc m:a) = false because (ofⁿ (—→¬V {!!})) -- show suc steps here
value? (⊢case m:a m:a₁ m:a₂) = false because (ofⁿ (—→¬V {!!}))
value? (⊢μ m:a) = false because (ofⁿ (—→¬V β-μ))

-- refinement of constructors then using —→¬V to get ¬ Value M

value?″ : ∀ {A M} → ∅ ⊢ M ⦂ A → Dec (Value M)
value?″ m:a = false because (ofⁿ (—→¬V {!m:a!}))

-- need m:a or progress gives m—→N. I know progress means it either takes a step or it doesn't.

value?‴ : ∀ {A M} → ∅ ⊢ M ⦂ A → Dec (Value M)
value?‴ m:a = {!progress m:a!} -- we'll come back to this

-- 747/PLFA exercise: Unstuck (3 points)
-- Using progress and preservation, prove the following:
{-
unstuck : ∀ {M A} → ∅ ⊢ M ⦂ A → ¬ (Stuck M)
unstuck m:a = {!!}

preserves : ∀ {M N A} → ∅ ⊢ M ⦂ A → M —↠ N → ∅ ⊢ N ⦂ A
preserves m:a msn = {!!}

wttdgs : ∀ {M N A} → ∅ ⊢ M ⦂ A → M —↠ N → ¬ (Stuck N)
wttdgs m:a msn = {!!}
-}
unstuck : ∀ {M A} → ∅ ⊢ M ⦂ A → ¬ (Stuck M)
unstuck m:a = {!!}
