-- version for exam:
-- removed `zero, `suc, case, and `ℕ and all dependancies
-- added `unit and `⊤
-- changed sucᶜ to be Church encoded

{-# OPTIONS --allow-unsolved-metas #-}
module Lambda where

-- Library
open import Data.Bool using (T; not)
open import Data.String using (String; _≟_)
open import Data.Nat using (ℕ; zero; suc)
open import Data.Empty using (⊥; ⊥-elim)
open import Function using (case_of_)
open import Relation.Nullary using (Dec; yes; no; ¬_)
open import Relation.Nullary.Decidable using (⌊_⌋; False; toWitnessFalse)
open import Relation.Nullary.Negation using (¬?)
open import Relation.Binary.PropositionalEquality using (_≡_; _≢_; refl)

open import Isomorphism using (_≲_)  -- \ < ~ (tilde)

-- Identifiers are strings (for familiarity; later, a better choice).

Id : Set
Id = String

-- Precedence and associativity for our language syntax.

infix  5  ƛ_⇒_
infix  5  μ_⇒_
infixl 7  _·_
infix  9  `_

-- Syntax of terms.

data Term : Set where
  `_                      :  Id → Term            -- variable
  ƛ_⇒_                    :  Id → Term → Term     -- lambda (abstraction)
  _·_                     :  Term → Term → Term   -- application \ c d o t
  -- so we case here on a term, if it's zero give an ID, if suc of term it gives a term
  μ_⇒_                    :  Id → Term → Term     -- fixpoint for recursion
  `unit                   : Term
-- Example expressions.


p′ : ℕ → ℕ → ℕ
p′ = λ m → λ n → case m of λ { 0 → n ; (suc p) → p′ p n }



-- Examples using Church numerals.
-- These take "interpretations" of suc and zero
-- and can be used as functions without resorting to case.

twoᶜ : Term
twoᶜ =  ƛ "s" ⇒ ƛ "z" ⇒ ` "s" · (` "s" · ` "z")

-- plusᶜ can be defined without using fixpoint.

plusᶜ : Term
plusᶜ =  ƛ "m" ⇒ ƛ "n" ⇒ ƛ "s" ⇒ ƛ "z" ⇒
         ` "m" · ` "s" · (` "n" · ` "s" · ` "z")

-- following the style of plusᶜ  to make sucᶜ in church numerals
  -- sucᶜ is just plusᶜ with m = 1

sucᶜ : Term
sucᶜ = ƛ "n" ⇒ ƛ "s" ⇒ ƛ "z" ⇒
       ` "s" · (` "n" · ` "s" · ` "z")

fourᶜ : Term
fourᶜ = plusᶜ · twoᶜ · twoᶜ

-- These definitions let us avoid some backticks and quotes.
-- very ill-behaved macro. Don't do this at home!
ƛ′_⇒_ : Term → Term → Term
ƛ′ (` x) ⇒ N  =  ƛ x ⇒ N
ƛ′ _ ⇒ _      =  ⊥-elim impossible
  where postulate impossible : ⊥


μ′_⇒_ : Term → Term → Term
μ′ (` x) ⇒ N  =  μ x ⇒ N
μ′ _ ⇒ _      =  ⊥-elim impossible
  where postulate impossible : ⊥

-- An example of the use of the new notation.

-- PLFA exercise: use the new notation to define multiplication.

-- Bound variables, free variables, closed terms, open terms, alpha renaming.

-- Values.

data Value : Term → Set where

  V-ƛ : ∀ {x N} → Value (ƛ x ⇒ N)

  V-unit : Value `unit


-- Substitution is important in defining reduction.
-- Defined here only for closed terms (simpler).

infix 9 _[_:=_]

_[_:=_] : Term → Id → Term → Term
(` x) [ y := V ] with x ≟ y
... | yes _             =  V
... | no  _             =  ` x
(ƛ x ⇒ N) [ y := V ] with x ≟ y
... | yes _          =  ƛ x ⇒ N
... | no  _          =  ƛ x ⇒ N [ y := V ]
(L · M) [ y := V ]   =  L [ y := V ] · M [ y := V ]
(μ x ⇒ N) [ y := V ] with x ≟ y
... | yes _          =  μ x ⇒ N
... | no  _          =  μ x ⇒ N [ y := V ]
(`unit) [ y := V ]      = `unit


-- Some examples of substitution.

-- this works, have aplication recursion and term substitution. Nice!
-- remember it's all just syntax here so no evaluaiton/type checking yet

-- PLFA exercise: eliminate common code in above with a helper function.

-- Single-step reduction (written \em\to).
-- Compatibility rules (descending into subexpressions) written with \xi (ξ).
-- "Computation here" rules written with \beta (β).

infix 4 _—→_

data _—→_ : Term → Term → Set where

  ξ-·₁ : ∀ {L L′ M} → L —→ L′ → L · M —→ L′ · M

  ξ-·₂ : ∀ {V M M′} → Value V → M —→ M′ → V · M —→ V · M′

  β-ƛ : ∀ {x N V} → Value V → (ƛ x ⇒ N) · V —→ N [ x := V ]

  β-μ : ∀ {x M} → μ x ⇒ M —→ M [ x := μ x ⇒ M ]


-- Arguments reduced to values before beta-reduction (call-by-value).
-- Terms reduced from left to right.
-- Reduction is deterministic (no choice!).
-- You should be able to prove this now, but it's done later, in Properties.

infix  2 _—↠_
infix  1 begin_
infixr 2 _—→⟨_⟩_
infix  3 _∎

-- Multistep: the reflexive-transitive closure of single-step.
-- (Notation below resembles tabular reasoning for equivalence,
--  but note we are not using transitivity.)
-- Written \em\rr-.

data _—↠_ : Term → Term → Set where
  _∎ : ∀ M → M —↠ M  -- reflexivity

  _—→⟨_⟩_ : ∀ L {M N} → L —→ M → M —↠ N → L —↠ N  -- transitivity

begin_ : ∀ {M N} → M —↠ N → M —↠ N
begin M—↠N = M—↠N

-- An alternate definition which makes "reflexive-transitive closure" more obvious.

data _—↠′_ : Term → Term → Set where

  step′ : ∀ {M N} → M —→ N → M —↠′ N

  refl′ : ∀ {M} → M —↠′ M  -- reflexivity

  trans′ : ∀ {L M N} → L —↠′ M → M —↠′ N → L —↠′ N  -- transitivity

-- Determinism means we avoid having to worry about confluence.

-- An example of a multistep reduction.
-- (Not generated by hand, as we'll see later.)
-- Agda can fill in the justifications but not the intermediate terms. Why not?
-- We'll see how to get Agda to do that in 747Properties (it's really cool).
{-
_ : twoᶜ · sucᶜ · `zero —↠ `suc `suc `zero
_ =
  begin
    (twoᶜ · sucᶜ) · `zero                     —→⟨ ξ-·₁ (β-ƛ V-ƛ) ⟩
    (ƛ "z" ⇒ sucᶜ · (sucᶜ · ` "z")) · `zero   —→⟨ β-ƛ V-zero ⟩
    sucᶜ · (sucᶜ · `zero)                     —→⟨ ξ-·₂ V-ƛ (β-ƛ V-zero) ⟩
    sucᶜ · `suc `zero                         —→⟨ β-ƛ (V-suc V-zero) ⟩
    `suc (`suc `zero)                        ∎
-}

_ : twoᶜ · sucᶜ · `unit —↠ ƛ "s" ⇒ (ƛ "z" ⇒ ` "s" · ((ƛ "s" ⇒ (ƛ "z" ⇒
    ` "s" · (`unit · ` "s" · ` "z"))) · ` "s" · ` "z"))
_ =
  begin
    (twoᶜ · sucᶜ) · `unit                                        —→⟨ ξ-·₁ (β-ƛ V-ƛ)  ⟩
    (ƛ "z" ⇒ sucᶜ · (sucᶜ · ` "z")) · `unit                     —→⟨ β-ƛ V-unit  ⟩
    sucᶜ · (sucᶜ · `unit)                                        —→⟨ ξ-·₂ V-ƛ (β-ƛ V-unit)  ⟩
    sucᶜ · (ƛ "s" ⇒ (ƛ "z" ⇒ ` "s" · (`unit · ` "s" · ` "z"))) —→⟨ β-ƛ V-ƛ  ⟩
    ƛ "s" ⇒ (ƛ "z" ⇒ ` "s" · ((ƛ "s" ⇒ (ƛ "z" ⇒
          ` "s" · (`unit · ` "s" · ` "z"))) · ` "s" · ` "z"))    ∎

      -- it still has lambda terms in it because the interpretations of suc and zero have
        -- not been provided in the expression. If they were it would reduce down further

-- Two plus two is four.

-- A longer example of a multistep reduction.

-- Adding types to our language.

-- Syntax of types.

infixr 7 _⇒_

data Type : Set where
  _⇒_ : Type → Type → Type
  `⊤   : Type

-- Contexts provide types for free variables.
-- Essentially a list of (name, type) pairs, most recently added to right.
-- so-called 'snoc' lists, where snoc = cons backwards
infixl 5  _,_⦂_

data Context : Set where
  ∅     : Context
  _,_⦂_ : Context → Id → Type → Context

-- The lookup judgment.
-- The constructor names are meant to be evocative
-- but for now think of them as 'here' and 'there'.
-- Important: if a parameter name is reused, the latest one is in scope.

infix  4  _∋_⦂_

data _∋_⦂_ : Context → Id → Type → Set where

  Z : ∀ {Γ x A} → (Γ , x ⦂ A) ∋ x ⦂ A

  S : ∀ {Γ x y A B} → x ≢ y → Γ ∋ x ⦂ A → Γ , y ⦂ B ∋ x ⦂ A

-- Providing the string inequality proofs required by S
-- can be annoying, and computed proofs can be lengthy.
-- We use the proof by reflection technique described in chapter Decidable
-- to write a "smart" version of S.

S′ : ∀ {Γ x y A B}
   → {x≢y : False (x ≟ y)}
   → Γ ∋ x ⦂ A
     ------------------
   → Γ , y ⦂ B ∋ x ⦂ A

S′ {x≢y = x≢y} x = S (toWitnessFalse x≢y) x

-- The typing judgment. Expressing that a term is well-typed
--   in a certain context.
-- Intro/elim names in comments.

infix  4  _⊢_⦂_

data _⊢_⦂_ : Context → Term → Type → Set where

  -- Axiom
  ⊢` : ∀ {Γ x A} → Γ ∋ x ⦂ A → Γ ⊢ ` x ⦂ A

  -- ⇒-I
  ⊢ƛ : ∀ {Γ x N A B} → Γ , x ⦂ A ⊢ N ⦂ B → Γ ⊢ (ƛ x ⇒ N) ⦂ (A ⇒ B)

  -- ⇒-E
  _·_ : ∀ {Γ L M A B} → Γ ⊢ L ⦂ A ⇒ B → Γ ⊢ M ⦂ A → Γ ⊢ L · M ⦂ B

  ⊢μ : ∀ {Γ x M A} → Γ , x ⦂ A ⊢ M ⦂ A → Γ ⊢ (μ x ⇒ M) ⦂ A

  -- ⊤-I
  ⊢unit : ∀ {Γ} → Γ ⊢ `unit ⦂ `⊤ 

-- A convenient way of asserting inequality.
-- (Avoids issues with normalizing evidence of negation.)

_≠_ : ∀ (x y : Id) → x ≢ y
x ≠ y  with x ≟ y
...       | no  x≢y  =  x≢y
...       | yes _    =  ⊥-elim impossible
  where postulate impossible : ⊥

-- A typing derivation for the Church numeral twoᶜ.
-- Most of this can be done with refining (why not all?).

Ch : Type → Type
Ch A = (A ⇒ A) ⇒ A ⇒ A

⊢twoᶜ : ∀ {Γ A} → Γ ⊢ twoᶜ ⦂ Ch A
⊢twoᶜ {Γ} {A} = ⊢ƛ (⊢ƛ (ts · (ts · (⊢` Z))))
  where
    ts : Γ , "s" ⦂ A ⇒ A , "z" ⦂ A ⊢ ` "s" ⦂ A ⇒ A
    ts = ⊢` (S′ Z)

-- A typing derivation for "two plus two".
-- Done in arbitrary contexts to permit reuse.


-- The rest of the Church examples.

{-
⊢sucᶜ : ∀ {Γ} → Γ ⊢ sucᶜ ⦂ `ℕ ⇒ `ℕ
⊢sucᶜ = ⊢ƛ (⊢suc (⊢` Z))

⊢2+2ᶜ : ∅ ⊢ plusᶜ · twoᶜ · twoᶜ · sucᶜ · `zero ⦂ `ℕ
⊢2+2ᶜ = ((⊢plusᶜ · ⊢twoᶜ) · ⊢twoᶜ) · ⊢sucᶜ · ⊢zero
-}
-- Lookup is injective (a helper for what follows)

∋-injective : ∀ {Γ x A B} → Γ ∋ x ⦂ A → Γ ∋ x ⦂ B → A ≡ B
∋-injective Z        Z          =  refl
∋-injective Z        (S x≢ _)   =  ⊥-elim (x≢ refl)
∋-injective (S x≢ _) Z          =  ⊥-elim (x≢ refl)
∋-injective (S _ ∋x) (S _ ∋x′)  =  ∋-injective ∋x ∋x′

-- Typing is not injective (e.g identity function).

-- Examples of proofs showing that terms are not typable.


nope₂ : ∀ {A} → ¬ (∅ ⊢ ƛ "x" ⇒ ` "x" · ` "x" ⦂ A)
nope₂ (⊢ƛ (⊢` ∋x · ⊢` ∋x′))  =  contradiction (∋-injective ∋x ∋x′)
  where
  contradiction : ∀ {A B} → ¬ (A ⇒ B ≡ A)
  contradiction ()

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
