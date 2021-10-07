module 747ConnectivesTutorial where

-- Library

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl; cong)
open Eq.≡-Reasoning
open import Data.Nat using (ℕ)
open import Function using (_∘_)

-- Copied from 747Isomorphism.

postulate
  extensionality : ∀ {A B : Set} {f g : A → B}
    → (∀ (x : A) → f x ≡ g x)
      -----------------------
    → f ≡ g

infix 0 _≃_
record _≃_ (A B : Set) : Set where
  constructor mk-≃  -- This has been added, not in PLFA
  field
    to   : A → B
    from : B → A
    from∘to : ∀ (x : A) → from (to x) ≡ x
    to∘from : ∀ (y : B) → to (from y) ≡ y
open _≃_

infix 0 _≲_
record _≲_ (A B : Set) : Set where
  field
    to      : A → B
    from    : B → A
    from∘to : ∀ (x : A) → from (to x) ≡ x
open _≲_

record _⇔_ (A B : Set) : Set where
  field
    to   : A → B
    from : B → A
open _⇔_ 

-- You may copy over the various reasoning modules if you wish.

-- End of code from 747Isomorphism.

-- Logical AND is Cartesian product.
-- Here AND and OR logic are connectives
-- this is \ x not just x. × vs x

data _×_ (A : Set) (B : Set) : Set where

  ⟨_,_⟩ : (a : A) → (b : B) → A × B

-- Destructors (eliminators) for ×.

proj₁ : ∀ {A B : Set} → A × B → A 
proj₁ ⟨ a , b ⟩ = a  -- doing punning, puns common in math. Variable identifier named for its type. Can split on datatype

proj₂ : ∀ {A B : Set} → A × B → B
proj₂ ⟨ a , b ⟩ = b  -- have a projector or an eliminator

-- An easier (equivalent) construction using records.
-- Standard library uses this definition using records
record _×′_ (A B : Set) : Set where
  constructor ⟨_,_⟩′
  field
    proj₁′ : A
    proj₂′ : B
open _×′_
-- PLFA using data type definition versus record representation.

-- Eta-equivalence relates constructors and destructors.

η-× : ∀ {A B : Set} (w : A × B) → ⟨ proj₁ w , proj₂ w ⟩ ≡ w --this is undo redo
η-× ⟨ a , b ⟩ = refl  -- here pattern match/case split on A×B

-- With record implementations you get it for 'free'!! No case splitting.
η-×′ : ∀ {A B : Set} (w : A ×′ B) → ⟨ proj₁′ w , proj₂′ w ⟩′ ≡ w --this is undo redo
η-×′ A×′B = refl 

-- Bool (Booleans), a type with exactly two members.
-- Definition with two constructors
infixr 2 _×_
data Bool : Set where
  true  : Bool
  false : Bool

-- A type with three members (useful for examples).
-- Why we're defining Tri idk
data Tri : Set where
  aa : Tri
  bb : Tri
  cc : Tri

-- Bool × Tri has six members. You can take product of these types.
-- Here is a function counting them. Then you can get 6 combos.

×-count : Bool × Tri → ℕ  --bijection with the natural number elements
×-count ⟨ true  , aa ⟩  =  1
×-count ⟨ true  , bb ⟩  =  2
×-count ⟨ true  , cc ⟩  =  3
×-count ⟨ false , aa ⟩  =  4
×-count ⟨ false , bb ⟩  =  5
×-count ⟨ false , cc ⟩  =  6

-- Cartesian product is commutative and associative up to isomorphism.

×-comm : ∀ {A B : Set} → A × B ≃ B × A  -- these are equivilant but not equal
_≃_.to ×-comm ⟨ a , b ⟩ = ⟨ b , a ⟩  -- can  do λ A×B → ⟨ proj₂ A×B , proj₁ A×B ⟩
_≃_.from ×-comm ⟨ b , a ⟩ = ⟨ a , b ⟩
_≃_.from∘to ×-comm ⟨ a , b ⟩ = refl
_≃_.to∘from ×-comm ⟨ b , a ⟩ = refl

open _≃_  -- openning isomorphism
×-assoc : ∀ {A B C : Set} → (A × B) × C ≃ A × (B × C)
to ×-assoc ⟨ ⟨ a , b ⟩ , c ⟩ = ⟨ a , ⟨ b , c ⟩ ⟩
from ×-assoc ⟨ a , ⟨ b , c ⟩ ⟩ = ⟨ ⟨ a , b ⟩ , c ⟩
from∘to ×-assoc ⟨ ⟨ a , b ⟩ , c ⟩ = refl
to∘from ×-assoc ⟨ a , ⟨ b , c ⟩ ⟩ = refl

-- 747/PLFA exercise: IffIsoIfOnlyIf (1 point)
-- Show A ⇔ B is isomorphic to (A → B) × (B → A).

iff-iso-if-onlyif : ∀ {A B : Set} → A ⇔ B ≃ (A → B) × (B → A)
iff-iso-if-onlyif = {!!}

-- Logical True is a type with one member (unit)

data ⊤ : Set where  -- usuingal called "top" \ t o p ⊤

  tt : ⊤  -- this is a unit type because has one element. Logically true like refl. just is.

-- this is an eta law
η-⊤ : ∀ (w : ⊤) → tt ≡ w
η-⊤ tt = refl

⊤-count : ⊤ → ℕ
⊤-count tt = 1

-- Unit is the left and right identity of product.

⊤-identityˡ : ∀ {A : Set} → ⊤ × A ≃ A  -- looks like arithmatic but level of types
to ⊤-identityˡ = proj₂  -- copatterns. same as one we just wrote
from ⊤-identityˡ = λ a → ⟨ tt , a ⟩ -- Agda doesn't like copatterns?
from∘to ⊤-identityˡ ⟨ w , a ⟩ = cong (λ z → ⟨ z , a ⟩) (η-⊤ w)  -- η = \ e t a 
to∘from ⊤-identityˡ = λ _ → refl

⊤-identityʳ : ∀ {A : Set} → (A × ⊤) ≃ A
⊤-identityʳ = mk-≃  -- using isomorphism.mk-≃
  proj₁
  (λ a → ⟨ a , tt ⟩)
  (λ { ⟨ a , w ⟩ → cong (λ z → ⟨ a , z ⟩ ) (η-⊤ w)  }) -- doing things all interactively to do proofs
  λ _ → refl  -- no clue what we're doing here

-- Logical OR (disjunction) is sum (disjoint union).
-- Union of types

data _⊎_ : Set → Set → Set where  -- ⊎ is written \ u +
-- two constructors, either in A or B. Have injectors. Takes two types and returns a type in two different ways.
-- This is a type union, right
  inj₁ : ∀ {A B : Set} → A → A ⊎ B
  inj₂ : ∀ {A B : Set} → B → A ⊎ B


-- One way to eliminate a sum.

case-⊎ : ∀ {A B C : Set}→ (A → C) → (B → C) → A ⊎ B → C
case-⊎ f _ (inj₁ x) = f x -- goal here is C.  
case-⊎ _ g (inj₂ x) = g x
-- We typically use pattern-matching to eliminate sums.

-- Eta equivalence for sums.

η-⊎ : ∀ {A B : Set} (w : A ⊎ B) → case-⊎ inj₁ inj₂ w ≡ w
η-⊎ (inj₁ x) = refl  -- splitting on w ehre
η-⊎ (inj₂ x) = refl

-- A generalization.
-- we also haven't done anything
uniq-⊎ : ∀ {A B C : Set} (h : A ⊎ B → C) (w : A ⊎ B) →
  case-⊎ (h ∘ inj₁) (h ∘ inj₂) w ≡ h w
uniq-⊎ h (inj₁ x) = refl  -- splitting on w here
uniq-⊎ h (inj₂ x) = refl  

infix 1 _⊎_
-- these are curry howard version of AND/OR in type theory

-- Bool ⊎ Tri has five members
-- 5 things because 2 plus 3 is 5
⊎-count : Bool ⊎ Tri → ℕ
⊎-count (inj₁ true)   =  1
⊎-count (inj₁ false)  =  2
⊎-count (inj₂ aa)     =  3
⊎-count (inj₂ bb)     =  4
⊎-count (inj₂ cc)     =  5

-- 747/PLFA exercise: SumCommIso (1 point)
-- Sum is commutative up to isomorphism.

⊎-comm : ∀ {A B : Set} → A ⊎ B ≃ B ⊎ A
⊎-comm = {!!}

-- 747/PLFA exercise: SumAssocIso (1 point)
-- Sum is associative up to isomorphism.

⊎-assoc : ∀ {A B C : Set} → (A ⊎ B) ⊎ C ≃ A ⊎ (B ⊎ C)
⊎-assoc = {!!}

-- Logical False is the empty type ("bottom", "empty").

data ⊥ : Set where
  -- no clauses!

-- Ex falso quodlibet "from falsehood, anything follows".

⊥-elim : ∀ {A : Set} → ⊥ → A
⊥-elim ()  -- () means it's not provable. Universe is blown up.

uniq-⊥ : ∀ {C : Set} (h : ⊥ → C) (w : ⊥) → ⊥-elim w ≡ h w
uniq-⊥ h w = {!!}

⊥-count : ⊥ → ℕ
⊥-count w = {!!}

-- 747/PLFA exercise: EmptyLeftIdSumIso (1 point)
-- Empty is the left unit of sum up to isomorphism.

⊎-identityˡ : ∀ {A : Set} → ⊥ ⊎ A ≃ A
⊎-identityˡ = {!!}

-- 747/PLFA exercise: EmptyRightIdSumIso (1 point)
-- Empty is the right unit of sum up to isomorphism.

⊎-identityʳ : ∀ {A : Set} → A ⊎ ⊥ ≃ A
⊎-identityʳ = {!!}

-- Logical implication (if-then) is... the function type constructor!
-- Eliminating an if-then (modus ponens) is function application.

→-elim : ∀ {A B : Set}
  → (A → B)
  → A
    -------
  → B

→-elim L M = L M

-- This works because eta-reduction for → is built in.

η-→ : ∀ {A B : Set} (f : A → B) → (λ (x : A) → f x) ≡ f
η-→ f = refl

-- The function space A → B is sometimes called the exponential Bᴬ. This has exponential amount of members.
-- Bool → Tri has 3² or 9 members.


→-count : (Bool → Tri) → ℕ
→-count f with f true | f false
...          | aa     | aa      =   1
...          | aa     | bb      =   2
...          | aa     | cc      =   3
...          | bb     | aa      =   4
...          | bb     | bb      =   5
...          | bb     | cc      =   6
...          | cc     | aa      =   7
...          | cc     | bb      =   8
...          | cc     | cc      =   9

-- In math,   (p ^ n) ^ m = p ^ (n * m).
-- For types, (A ^ B) ^ C ≃ A ^ (B × C).

-- In a language where functions take multiple parameters,
-- this is called "currying". WHY THE FUCK DO YOU ONLY MENTION THIS NOW. HOW ARE YOU SUPPOSED TO UNDERSTAND WHAT THE FUCK IS GOING ON

currying : ∀ {A B C : Set} → (A → B → C) ≃ (A × B → C)
to currying f = λ { ⟨ a , b ⟩ → f a b }
from currying g = λ a b → g ⟨ a , b ⟩
from∘to currying f = refl
to∘from currying g = {!!}  -- don't have η for this one.

-- In math,   p ^ (n + m) = (p ^ n) * (p ^ m).
-- For types, (A ⊎ B → C) ≃ ((A → C) × (B → C)).

→-distrib-⊎ : ∀ {A B C : Set} → (A ⊎ B → C) ≃ ((A → C) × (B → C))
--going to use where clauses, Refine
→-distrib-⊎ {A} {B} {C} = mk-≃ to′ from′ from∘to′ to∘from′  --proved in cases below and used up here
  where
    to′ : (A ⊎ B → C) → (A → C) × (B → C)
    to′ f = ⟨ (λ a → f (inj₁ a)) , (λ b → f (inj₂ b)) ⟩ -- wants function so give it a lambda function from
    from′ : (A → C) × (B → C) → A ⊎ B → C
    from′ ⟨ f , g ⟩ = case-⊎ f g  -- composition of currying with case, pattern matched
    --to′ f = ⟨ f ∘ inj₁, f ∘ inj₂ ⟩  is the same thing
    -- see that looking for a function, then you realize you're composing f with inj₁ once you look at it enough
    from∘to′ : (f : A ⊎ B → C) → (from′ ∘ to′) f ≡ f
    from∘to′ f = extensionality λ { (inj₁ x) → refl  -- pattern matching
                                  ; (inj₂ x) → refl
                                  }
    to∘from′ : ∀ y → (to′ ∘ from′) y ≡ y
    to∘from′ ⟨ f , g ⟩ = refl
-- Q) What is the command to show Goal: and Have: in the 2nd windows
    
-- In math,   (p * n) ^ m = (p ^ m) * (n ^ m).
-- For types, (A → B × C) ≃ (A → B) × (A → C).

→-distrib-× : ∀ {A B C : Set} → (A → B × C) ≃ (A → B) × (A → C)
→-distrib-× = {!!}

-- More distributive laws.

×-distrib-⊎ : ∀ {A B C : Set} → (A ⊎ B) × C ≃ (A × C) ⊎ (B × C)
×-distrib-⊎ = {!!}

⊎-distrib-× : ∀ {A B C : Set} → (A × B) ⊎ C ≲ (A ⊎ C) × (B ⊎ C)  --lesser equal and in math this is true. The opposite way is false. Proving it wouldn't be novel, just systematic. Could be an exercise. Exact same level of difficulty.
⊎-distrib-× = {!!}

-- Think of a counterexample to show the above isn't an isomorphism.

-- PLFA exercise: a weak distributive law.
-- ⊎-weak-× : ∀ {A B C : Set} → (A ⊎ B) × C → A ⊎ (B × C)
-- ⊎-weak-× A⊎B×C = {!!}
-- State and prove the strong law, and explain the relationship.

-- 747/PLFA exercise: SumOfProdImpProdOfSum (1 point)
-- A disjunct of conjuncts implies a conjunct of disjuncts.

⊎×-implies-×⊎ : ∀ {A B C D : Set} → (A × B) ⊎ (C × D) → (A ⊎ C) × (B ⊎ D)
⊎×-implies-×⊎ A×B⊎C×D = {!!}

-- PLFA exercise: Is the converse true? If so, prove it; if not, give a counterexample.

-- See PLFA for a number of slight differences with the standard library.

-- Unicode introduced in this chapter:

{-

  ×  U+00D7  MULTIPLICATION SIGN (\x)
  ⊎  U+228E  MULTISET UNION (\u+)
  ⊤  U+22A4  DOWN TACK (\top)
  ⊥  U+22A5  UP TACK (\bot)
  η  U+03B7  GREEK SMALL LETTER ETA (\eta)
  ₁  U+2081  SUBSCRIPT ONE (\_1)
  ₂  U+2082  SUBSCRIPT TWO (\_2)
  ⇔  U+21D4  LEFT RIGHT DOUBLE ARROW (\<=>, \iff, \lr=)

-}
