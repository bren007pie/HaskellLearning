module 706A2fallonbr where

-- I agree that it makes it cleaner to import from other files rather than copy paste. Having a single file is easier to download but more work to work with so will go with maybe an background file and an assignment file

-- Some useful imports from the standard library:
-- Library Imports
import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl; cong; sym) -- added sym for symmetry
open import Data.Nat using (ℕ; zero; suc; _+_)
open import Data.Nat.Properties using (+-comm)
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

--10:00 pm


-- This ends the extended exercise.








