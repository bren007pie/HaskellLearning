module 747Isomorphismtutorial where
-- Isomorphism in math is 1:1 mapping between sets or things

-- Library

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl; cong; cong-app; sym; trans) -- added last
open Eq.≡-Reasoning
open import Data.Nat using (ℕ; zero; suc; _+_)
open import Data.Nat.Properties using (+-comm; +-suc; +-identityʳ) -- added last

-- Function composition.

_∘_ : ∀ {A B C : Set} → (B → C) → (A → B) → (A → C)  -- function composition of g and f.
(g ∘ f) x = g (f x) -- f x is of type B. Weird to see that gives function later

_∘′_ : ∀ {A B C : Set} → (B → C) → (A → B) → (A → C) -- alternate definition but with λ
g ∘′ f = λ x → g (f x)  

postulate
  extensionality : ∀ {A B : Set} {f g : A → B}  -- defines things as being the same at two points they are the same
    → (∀ (x : A) → f x ≡ g x)
      -----------------------
    → f ≡ g
-- if equality
-- Another definition of addition.

_+′_ : ℕ → ℕ → ℕ -- split on n instead, get different code
m +′ zero = m  -- split on n
m +′ suc n = suc (m +′ n) 

same-app : ∀ (m n : ℕ) → m +′ n ≡ m + n
same-app m zero = sym (+-identityʳ m)
same-app m (suc n) rewrite +-suc m n | same-app m n = refl  -- can use rewrite to rewrite equations and see goal, then call ourselves recursively
-- Dr. Carette likes explicit  proofs but whatever style works works
-- Use | for seperating rewrites or applying multiple rewrites


same : _+′_ ≡ _+_  -- this requires extensionality, what is extensionality?
same = extensionality λ x → extensionality λ y → {!same-app x y!}  -- can't use refl here because syntax is different (even though semantically they're the same)
-- so do extensionality on both x and y to show that both are there
-- We've never done questioning equality so it's no tintuitive and need to look at these deeper. 

-- Isomorphism.

infix 0 _≃_  -- typed as ≃ \ ~ - 
record _≃_ (A B : Set) : Set where  -- this is a record type
  constructor mk-≃  -- This has been added, not in PLFA. Pronounced make ISO takes the 4  following arguments
  field  
    to   : A → B
    from : B → A
    from∘to : ∀ (x : A) → from (to x) ≡ x  -- back and forth is the identity function
    to∘from : ∀ (y : B) → to (from y) ≡ y
open _≃_  -- openning this record makes the four name visible in context. Fields are accessible via dot notation like OOP
-- Saying A and B are equivalant functions if there is a relation from A to B and B to A and if they are inverses of eachother

-- Equivalent to the following:

data _≃′_ (A B : Set): Set where  -- could make this a datatype with a single constructor with 4 arguments
  mk-≃′ : ∀ (to : A → B) →
          ∀ (from : B → A) →
          ∀ (from∘to : (∀ (x : A) → from (to x) ≡ x)) →  -- here this is from composed with to
          ∀ (to∘from : (∀ (y : B) → to (from y) ≡ y)) → -- this is to composed with from b.c. they're functions
          A ≃′ B

-- can then prove that ≃ and ≃′ are equivalant definitions by using composition.
to′ : ∀ {A B : Set} → (A ≃′ B) → (A → B)
to′ (mk-≃′ f g g∘f f∘g) = f

-- these are hand built projection function that project out a datatype
-- What do you mean by projecting out a datatype?
from′ : ∀ {A B : Set} → (A ≃′ B) → (B → A)
from′ (mk-≃′ f g g∘f f∘g) = g

from∘to′ : ∀ {A B : Set} → (A≃B : A ≃′ B)
                         → (∀ (x : A)
                         → from′ A≃B (to′ A≃B x) ≡ x)
from∘to′ (mk-≃′ f g g∘f f∘g) = g∘f

to∘from′ : ∀ {A B : Set} → (A≃B : A ≃′ B)
                         → (∀ (y : B)
                         → to′ A≃B (from′ A≃B y) ≡ y)
to∘from′ (mk-≃′ f g g∘f f∘g) = f∘g

-- End of equivalent formulation (records are faster!)
-- the first ≃ is used as the default

-- Properties of isomorphism.

-- Reflexivity.

≃-refl : ∀ {A : Set}
    -----
  → A ≃ A  

-- in empty hole, split on result, get copatterns (not in PLFA)
-- two ways to work with Records
to ≃-refl = λ x → x -- use lambda x → x to get identity function from a to a
from ≃-refl = λ x → x
from∘to ≃-refl = λ x → refl
to∘from ≃-refl = λ y → refl
-- splitting on the result (empty split) are called copatters and get things on the left instead of the right with spilts

-- here defining identity function
id : {A : Set} → A → A
id x = x

≃-refl′ : ∀ {A : Set} → A ≃ A
≃-refl′ = mk-≃ id id (λ _ → refl) (λ - → refl)

-- Symmetry.

≃-sym : ∀ {A B : Set}
  → A ≃ B
    -----
  → B ≃ A

≃-sym (mk-≃ to₁ from₁ from∘to₁ to∘from₁) = mk-≃ from₁ to₁ to∘from₁ from∘to₁  -- ring operator is \ o. Here we casesplit on ≃B to get the instance

≃sym' : ∀ {A B : Set} → A ≃ B → B ≃ A
≃sym' A≃B = mk-≃ (from A≃B) (to A≃B) (to∘from A≃B) (from∘to A≃B)

-- Transitivity.

≃-trans : ∀ {A B C : Set}
  → A ≃ B
  → B ≃ C
    -----
  → A ≃ C

{- he wrote out but too quick
≃-trans A≃B B≃C = mk-≃ (to B≃C ∘ to A≃B) (from A≃B ∘ from B≃C)
  (λ x → trans (cong (from A≃B) (from∘to B≃C (to A≃B x))) ( (from∘to A≃B x))) -- question mark. Not a trivial proof
  λ y → begin -- using equational reasoning here
    to B≃C (to A≃B (from A≃B (from B≃C y))) ≡⟨ cong (to B≃C) (to∘from A≃B
-}

-- refine and then use composotion.
-- composition is backwards we use ; for composition. Composition does thing on right first then thing on the left. Go A to B then B to C.

-- Isomorphism is an equivalence relation.
-- We can create syntax for equational reasoning.

module ≃-Reasoning where

  infix  1 ≃-begin_
  infixr 2 _≃⟨_⟩_
  infix  3 _≃-∎

  ≃-begin_ : ∀ {A B : Set}
    → A ≃ B
      -----
    → A ≃ B
  ≃-begin A≃B = A≃B

  _≃⟨_⟩_ : ∀ (A : Set) {B C : Set}
    → A ≃ B
    → B ≃ C
      -----
    → A ≃ C
  A ≃⟨ A≃B ⟩ B≃C = ≃-trans A≃B B≃C

  _≃-∎ : ∀ (A : Set)
      -----
    → A ≃ A
  A ≃-∎ = ≃-refl

open ≃-Reasoning

-- Embedding (weaker than isomorphism)
-- here we're embedding. Example is embedding real numbers in complex numbers. They're not the same because sometimes there is information loss but still works.

infix 0 _≲_  -- be careful embedding is ≲ not ≤ 
record _≲_ (A B : Set) : Set where
  field
    to      : A → B
    from    : B → A
    from∘to : ∀ (x : A) → from (to x) ≡ x
open _≲_

≲-refl : ∀ {A : Set} → A ≲ A
≲-refl = record { to = id ; from = id ; from∘to = λ x → refl } -- refined here

≲-trans : ∀ {A B C : Set} → A ≲ B → B ≲ C → A ≲ C
≲-trans A≲B B≲C = record {
  to = to B≲C ∘ to A≲B ;
  from = from A≲B ∘ from B≲C ;
  from∘to = λ x → trans (cong (from A≲B) (from∘to B≲C _)) (from∘to A≲B x)
  }

≲-antisym : ∀ {A B : Set}
  → (A≲B : A ≲ B)
  → (B≲A : B ≲ A)
  → (to A≲B ≡ from B≲A)
  → (from A≲B ≡ to B≲A)
    -------------------
  → A ≃ B

≲-antisym {A} {B} A≲B B≲A to≡from from≡to = mk-≃ (to A≲B) (from A≲B) -- afraid that using rewrite might have messed something up
  (from∘to A≲B)
  lemma
  where
    lemma : (y : B) → to A≲B (from A≲B y) ≡ y
    lemma y rewrite to≡from | from≡to = from∘to B≲A y
-- Tabular reasoning for embedding.

module ≲-Reasoning where

  infix  1 ≲-begin_
  infixr 2 _≲⟨_⟩_
  infix  3 _≲-∎

  ≲-begin_ : ∀ {A B : Set}
    → A ≲ B
      -----
    → A ≲ B
  ≲-begin A≲B = A≲B

  _≲⟨_⟩_ : ∀ (A : Set) {B C : Set}
    → A ≲ B
    → B ≲ C
      -----
    → A ≲ C
  A ≲⟨ A≲B ⟩ B≲C = ≲-trans A≲B B≲C

  _≲-∎ : ∀ (A : Set)
      -----
    → A ≲ A
  A ≲-∎ = ≲-refl

open ≲-Reasoning

-- PLFA exercise: Isomorphism implies embedding.

≃-implies-≲ : ∀ {A B : Set}
  → A ≃ B
    -----
  → A ≲ B  

≃-implies-≲ a≃b = record { A≃B }  -- says go and pick up names that you want from the module and if all match all good
  where module A≃B = _≃_ a≃b  -- records can be made into modules


-- PLFA exercise: propositional equivalence (weaker than embedding).

record _⇔_ (A B : Set) : Set where  -- poposital equivalance when can get A from B and B from A. Very week but works
  field
    to   : A → B
    from : B → A
open _⇔_ -- added

-- This is also an equivalence relation.

⇔-refl : ∀ {A : Set}
    -----
  → A ⇔ A

⇔-refl = {!!}

⇔-sym : ∀ {A B : Set}
  → A ⇔ B
    -----
  → B ⇔ A

⇔-sym A⇔B = {!!}

⇔-trans : ∀ {A B C : Set}
  → A ⇔ B
  → B ⇔ C
    -----
  → A ⇔ C

⇔-trans A⇔B B⇔C = {!!}

-- 747/PLFA extended exercise: Canonical bitstrings.
-- Modified and extended from Bin-predicates exercise in PLFA Relations.

-- Copied from 747Naturals.

data Bin-ℕ : Set where
  bits : Bin-ℕ
  _x0 : Bin-ℕ → Bin-ℕ
  _x1 : Bin-ℕ → Bin-ℕ

dbl : ℕ → ℕ
dbl zero = zero
dbl (suc n) = suc (suc (dbl n))

-- Copy your versions of 'inc', 'tob', and 'fromb' over from earlier files.
-- You may choose to change the definitions here to make proofs easier.
-- But make sure to test them if you do!
-- You may also copy over any theorems that prove useful.

inc : Bin-ℕ → Bin-ℕ
inc n = {!!}

tob : ℕ → Bin-ℕ
tob n = {!!}

dblb : Bin-ℕ → Bin-ℕ
dblb n = {!!}

fromb : Bin-ℕ → ℕ
fromb n = {!!}

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

_ : Can bits
_ = [zero]

_ : Can (bits x1 x0)
_ = [pos] ([bitsx1] [x0])

-- The Bin-predicates exercise in PLFA Relations gives three properties of canonicity. 
-- The first is that the increment of a canonical number is canonical.

-- Most of the work is done in the following lemma.

-- 747/PLFA exercise: IncCanOne (2 points)
-- The increment of a canonical number has a leading one.

one-inc : ∀ {n : Bin-ℕ} → Can n → One (inc n)
one-inc cn = {!!}

-- The first canonicity property is now an easy corollary.

-- 747/PLFA exercise: OneInc (1 point)

can-inc : ∀ {n : Bin-ℕ} → Can n → Can (inc n)
can-inc cn = {!!}

-- The second canonicity property is that converting a unary number
-- to binary produces a canonical number.

-- 747/PLFA exercise: CanToB (1 point)

to-can : ∀ (n : ℕ) → Can (tob n)
to-can n = {!!}

-- The third canonicity property is that converting a canonical number
-- from binary and back to unary produces the same number.

-- This takes more work, and some helper lemmas from 747Induction.
-- You will need to discover which ones.

-- 747/PLFA exercise: OneDblbX0 (1 point)

-- This helper function relates binary double to the x0 constructor,
-- for numbers with a leading one.

dblb-x0 : ∀ {n : Bin-ℕ} → One n → dblb n ≡ n x0
dblb-x0 on = {!!}

-- We can now prove the third property for numbers with a leading one.

-- 747/PLFA exercise: OneToFrom (3 points)

one-to∘from : ∀ {n : Bin-ℕ} → One n → tob (fromb n) ≡ n
one-to∘from on = {!!}

-- The third property is now an easy corollary.

-- 747/PLFA exercise: CanToFrom (1 point)

can-to∘from : ∀ {n : Bin-ℕ} → Can n → tob (fromb n) ≡ n
can-to∘from cn = {!!}

-- 747/PLFA exercise: OneUnique (2 points)
-- Proofs of positivity are unique.

one-unique : ∀ {n : Bin-ℕ} → (x y : One n) → x ≡ y
one-unique x y = {!!}

-- 747/PLFA exercise: CanUnique (1 point)
-- Proofs of canonicity are unique.

can-unique : ∀ {n : Bin-ℕ} → (x y : Can n) → x ≡ y
can-unique x y = {!!}

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
rewrap = {!!}

-- 747/PLFA exercise: IsoNCanR (2 points)

iso-ℕ-CanR : ℕ ≃ CanR
iso-ℕ-CanR = {!!}

-- Can we get an isomorphism between ℕ and some binary encoding,
-- without the awkwardness of non-canonical values?
-- Yes: we use digits 1 and 2, instead of 0 and 1 (multiplier/base is still 2).
-- This is known as bijective binary numbering.
-- The counting sequence goes <empty>, 1, 2, 11, 12, 21, 22, 111...

data Bij-ℕ : Set where
  bits : Bij-ℕ
  _x1 : Bij-ℕ → Bij-ℕ
  _x2 : Bij-ℕ → Bij-ℕ

-- There is an isomorphism between ℕ and Bij-ℕ.
-- The proof largely follows the outline of what we did above,
-- and is left as an optional exercise.

-- See PLFA for remarks on standard library definitions similar to those here.

-- Unicode introduced in this chapter:

{-

  ∘  U+2218  RING OPERATOR (\o, \circ, \comp)
  λ  U+03BB  GREEK SMALL LETTER LAMBDA (\lambda, \Gl)
  ≃  U+2243  ASYMPTOTICALLY EQUAL TO (\~-)
  ≲  U+2272  LESS-THAN OR EQUIVALENT TO (\<~)
  ⇔  U+21D4  LEFT RIGHT DOUBLE ARROW (\<=>)

-}
