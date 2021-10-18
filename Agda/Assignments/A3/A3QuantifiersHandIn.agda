{-# OPTIONS --allow-unsolved-metas #-}
module A3QuantifiersHandIn where

-- Library

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl; cong)
open import Data.Nat using (ℕ; zero; suc; _+_; _*_) -- added ≤
open import Relation.Nullary using (¬_)
open import Data.Product using (_×_; proj₁; proj₂) renaming (_,_ to ⟨_,_⟩) -- added proj₂
open import Data.Sum using (_⊎_; inj₁; inj₂ ) -- added inj₁, inj₂
open import Function using (_∘_) -- added

--TODO figure out how to do relative module importing to put all these files in a dependencies folder for cleanliness
open import Isomorphism
open import Quantifiers
open import Relations using ( _≤_; z≤n; s≤s; inv-z≤n; inv-s≤s)


open _≃_
open _⇔_


-- 747/PLFA exercise: ForAllDistProd (1 point)
-- Show that ∀ distributes over ×.
-- (The special case of → distributes over × was shown in the Connectives chapter.)

∀-distrib-× : ∀ {A : Set} {B C : A → Set} →
  (∀ (a : A) → B a × C a) ≃ (∀ (a : A) → B a) × (∀ (a : A) → C a)
to ∀-distrib-× a→Ba×Ca = ⟨ (λ a → proj₁ (a→Ba×Ca a)) , (λ a → proj₂ (a→Ba×Ca a)) ⟩  -- needs a ⟨ a→Ba , a→Ca ⟩
from ∀-distrib-× a→ba×a→ca = λ a → ⟨ (proj₁ a→ba×a→ca) a , (proj₂ a→ba×a→ca) a ⟩  -- needs a ⟨ Ba , Ca ⟩
from∘to ∀-distrib-× x→Ba×Ca = refl
to∘from ∀-distrib-× y→Ba×a→Ca = refl

-- ForAllDistProd/∀-distrib-× proof successfully completed

-- 747/PLFA exercise: SumForAllImpForAllSum (1 point)
-- Show that a disjunction of foralls implies a forall of disjunctions.

⊎∀-implies-∀⊎ : ∀ {A : Set} {B C : A → Set} →
  (∀ (a : A) → B a) ⊎ (∀ (a : A) → C a)  →  ∀ (a : A) → B a ⊎ C a
⊎∀-implies-∀⊎ (inj₁ a→Ba) = λ a → inj₁ (a→Ba a)
⊎∀-implies-∀⊎ (inj₂ a→Ca) = λ a → inj₂ (a→Ca a)

-- SumForAllImpForAllSum/⊎∀-implies-∀⊎ proof successfully completed

-- 747/PLFA exercise: ExistsDistSum (2 points)
-- Show that existentials distribute over disjunction.

∃-distrib-⊎ : ∀ {A : Set} {f g : A → Set} →
  ∃[ x ] (f x ⊎ g x) ≃ (∃[ x ] f x) ⊎ (∃[ x ] g x)
to ∃-distrib-⊎ ⟨ proj₃ , inj₁ a ⟩ = inj₁ ⟨ proj₃ , a ⟩
to ∃-distrib-⊎ ⟨ proj₃ , inj₂ b ⟩ = inj₂ ⟨ proj₃ , b ⟩
from ∃-distrib-⊎ (inj₁ ⟨ proj₃ , proj₄ ⟩) = ⟨ proj₃ , inj₁ proj₄ ⟩
from ∃-distrib-⊎ (inj₂ ⟨ proj₃ , proj₄ ⟩) = ⟨ proj₃ , inj₂ proj₄ ⟩
from∘to ∃-distrib-⊎ ⟨ proj₃ , inj₁ a ⟩ = refl
from∘to ∃-distrib-⊎ ⟨ proj₃ , inj₂ b ⟩ = refl
to∘from ∃-distrib-⊎ (inj₁ a) = refl
to∘from ∃-distrib-⊎ (inj₂ b) = refl


-- ExistsDistSum/∃-distrib-⊎ proof successfully completed


-- 747/PLFA exercise: ExistsProdImpProdExists (1 point)
-- Show that existentials distribute over ×.

∃×-implies-×∃ : ∀ {A : Set} {B C : A → Set} →
  ∃[ x ] (B x × C x) → (∃[ x ] B x) × (∃[ x ] C x)
∃×-implies-×∃ ⟨ proj₃ , proj₄ ⟩ = ⟨ ⟨ proj₃ , (proj₁ proj₄) ⟩ , ⟨ proj₃ , (proj₂ proj₄) ⟩ ⟩


-- ExistsProdImpProdExists/∃×-implies-×∃ proof successfully completed

-- 747/PLFA exercise: AltLE (3 points)
-- An alternate definition of y ≤ z.

-- For this question I couldn't get it but I tried two different proof appraoches: 1. Trying to prove using the constructor. 2. Trying to use co-patterns on ⇔

-- Here I try using equiv constructor to build up ⇔, got stuck
∃-≤ : ∀ {y z : ℕ} → ( (y ≤ z) ⇔ ( ∃[ x ] (y + x ≡ z) ) ) 
∃-≤ {zero} {zero} = equiv (λ y≤z → ⟨ zero , refl ⟩) λ Σℕa→y+a≡z → z≤n
∃-≤ {y} {zero} = equiv (λ y≤z → ⟨ zero , cong (_+ zero) (Relations.inv-z≤n y≤z) ⟩) λ x → {!!}
∃-≤ {zero} {z} = equiv (λ y≤z → ⟨ {!!} , {!!} ⟩) λ Σℕa→y+a≡z → {!!}
∃-≤ {suc y} {suc z} = equiv (λ y≤z → ⟨ {!!} , {!!} ⟩) λ Σℕa→y+a≡z → {!!}

∃-≤′ : ∀ {y z : ℕ} → ( (y ≤ z) ⇔ ( ∃[ x ] (y + x ≡ z) ) ) 
to (∃-≤′ {zero} {z}) z≤n = ⟨ z , refl ⟩
to ∃-≤′ (s≤s y≤z) = ⟨ zero , {!!} ⟩  -- got to this part and got stuck, not sure how to get to suc (m + zero) ≡ suc n even though I know it's true (could be done by working out seperately with a lemma)
from (∃-≤′ {y}) ⟨ proj₃ , refl ⟩ = {!!}  -- go to here but not sure how to make  y ≤ y + proj₃ even though I know it's true (could be worked out seperately with a lemma)


-- 747/PLFA exercise: ExistsNegImpNegForAll (1 point)
-- Existence of negation implies negation of universal.

∃¬-implies-¬∀ : ∀ {A : Set} {f : A → Set} → ∃[ x ] (¬ f x) → ¬ (∀ x → f x)
∃¬-implies-¬∀ {A} {f} ⟨ proj₃ , proj₄ ⟩ g = proj₄ (g proj₃)

-- ExistsNegImpNegForAll/∃¬-implies-¬∀ proof successfully completed

-- The converse cannot be proved in intuitionistic logic.
