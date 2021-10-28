{-
Brendan Fallon
fallonbr
Oct 28, 2021

Question Fully Completed (all)
	RevCommApp (1 pt)
	RevInvol (1 pt)
	MapCompose (1 pt)
	MapAppendDist (1 pt)
	FoldrOverAppend (1 pt)
	MapIsFoldr (1 pt)
	Foldl (1 pt)
        FoldrMonFoldl (2 pt)
Questions Partially Completed (none)
        
-}


{-# OPTIONS --allow-unsolved-metas #-}
module A4ListsHandin where

-- Library imports

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl; sym; trans; cong)
open Eq.≡-Reasoning
open import Data.Bool using (Bool; true; false; T; _∧_; _∨_; not)
open import Data.Nat using (ℕ; zero; suc; _+_; _*_; _∸_; _≤_; s≤s; z≤n)
open import Data.Nat.Properties using
  (+-assoc; +-identityˡ; +-identityʳ; *-assoc; *-identityˡ; *-identityʳ)
open import Relation.Nullary using (¬_; Dec; yes; no)
open import Data.Product using (_×_; ∃; ∃-syntax) renaming (_,_ to ⟨_,_⟩)
open import Function using (_∘_)
open import Level using (Level)

-- Local dependency imports
open import Dependencies.Isomorphism using (_≃_; _≲_; _⇔_)
open import Dependencies.Lists

-- 747/PLFA exercise: RevCommApp (1 point)
-- How reverse commutes with ++.
-- Changed from PLFA to make xs and ys explicit arguments.


-- Wouldn't this be reverse distributes over ++? That's what it is in PLFA
-- Doing via induction on xs, defining helper function to match pattern
-- using equational reasoning to show steps, ++-assoc to remove brackets.


rev-++-identityʳ : ∀ {A : Set} (xs : List A) → xs ≡ xs ++ []
rev-++-identityʳ xs = sym (++-identityʳ xs)


reverse-++-commute : ∀ {A : Set} (xs ys : List A)
  → reverse (xs ++ ys) ≡ reverse ys ++ reverse xs
reverse-++-commute [] ys = rev-++-identityʳ (reverse ys)
reverse-++-commute (x ∷ xs) ys = begin
    reverse (xs ++ ys) ++ [ x ]         ≡⟨ cong (_++ [ x ]) (reverse-++-commute xs ys) ⟩
    (reverse ys ++ reverse xs) ++ [ x ] ≡⟨ ++-assoc (reverse ys) (reverse xs) ([ x ]) ⟩
    reverse ys ++ reverse xs ++ [ x ]   ∎

-- RevCommApp/ reverse-++-commute proof successfully completed


-- 747/PLFA exercise: RevInvol (1 point)
-- Reverse is its own inverse.
-- Changed from PLFA to make xs explicit.

-- doing induction on xs then equational reasoning to get pattern to match

reverse-involutive : ∀ {A : Set} (xs : List A)
  → reverse (reverse xs) ≡ xs
reverse-involutive [] = refl
reverse-involutive (x ∷ xs) = begin
    reverse (reverse (xs) ++ [ x ]) ≡⟨ reverse-++-commute (reverse (xs)) ([ x ]) ⟩
    [ x ] ++ reverse (reverse xs)   ≡⟨ cong ([ x ] ++_) (reverse-involutive xs) ⟩
    x ∷ xs                          ∎

-- RevInvol/reverse-involvutive proof successfully completed

-- 747/PLFA exercise: MapCompose (1 point)
-- The map of a composition is the composition of maps.
-- Changed from PLFA: some arguments made explicit, uses pointwise equality.

-- Used Induction on xs 

map-compose : ∀ {A B C : Set} (f : A → B) (g : B → C) (xs : List A)
  → map (g ∘ f) xs ≡ (map g ∘ map f) xs
map-compose f g [] = refl
map-compose f g (x ∷ xs) = begin
    (g ∘ f) x ∷ (map (g ∘ f) xs)   ≡⟨ cong ((g ∘ f) x ∷_) (map-compose f g xs) ⟩
    (g ∘ f) x ∷ (map g ∘ map f) xs ≡⟨⟩
    (map g ∘ map f) (x ∷ xs)       ∎

-- MapCompose/map-compose proof successfully completed

-- 747/PLFA exercise: MapAppendDist (1 point)
-- The map of an append is the append of maps.
-- Changed from PLFA: some arguments made explicit.

-- solving by induction on xs

map-++-dist : ∀ {A B : Set} (f : A → B) (xs ys : List A)
 →  map f (xs ++ ys) ≡ map f xs ++ map f ys
map-++-dist f [] ys = refl
map-++-dist f (x ∷ xs) ys = begin
    f x ∷ map f (xs ++ ys)     ≡⟨ cong (f x ∷_) (map-++-dist f xs ys) ⟩
    f x ∷ map f xs ++ map f ys ∎

-- MapAppendDist/map-++-dist proof successfully completed


-- 747/PLFA exercise: FoldrOverAppend (1 point)
-- Show that foldr over an append can be expressed as
-- foldrs over each list.

-- Doing induction on xs to prove.
-- Using rewrite for practice on single line induction.

foldr-++ : ∀ {A B : Set} (_⊗_ : A → B → B) (e : B) (xs ys : List A) →
  foldr _⊗_ e (xs ++ ys) ≡ foldr _⊗_ (foldr _⊗_ e ys) xs
foldr-++ _⊗_ e [] ys = refl
foldr-++ _⊗_ e (x ∷ xs) ys rewrite foldr-++ _⊗_ e xs ys = refl

-- foldrOverAppend/foldr-++ proof successfully completed


-- 747/PLFA exercise: MapIsFoldr (1 point)
-- Show that map can be expressed as a fold.
-- Changed from PLFA: some arguments made explicit, uses pointwise equality.

-- Did induction in xs.
-- Used rewrite again because one line equational reasoning proof.

map-is-foldr : ∀ {A B : Set} (f : A → B) (xs : List A) →
  map f xs ≡ foldr (λ x rs → f x ∷ rs) [] xs
map-is-foldr f [] = refl
map-is-foldr f (x ∷ xs) rewrite map-is-foldr f xs = refl

-- MapIsFoldr/map-is-foldr proof successfully completed

-- 747/PLFA exercise: Foldl (1 point)
-- Define foldl, which associates left instead of right, e.g.
--   foldr _⊗_ e [ x , y , z ]  =  x ⊗ (y ⊗ (z ⊗ e))
--   foldl _⊗_ e [ x , y , z ]  =  ((e ⊗ x) ⊗ y) ⊗ z

-- need to make foldl of structure ((e ⊗ x) ⊗ y ) ⊗ z
-- Base case is still e.
-- But induction needs to incorperate first element into e expression

foldl : ∀ {A B : Set} → (B → A → B) → B → (xs : List A) → B
foldl _⊗_ e [] = e
foldl _⊗_ e (x ∷ xs)  = foldl _⊗_ (e ⊗ x) xs -- is this right?

-- Foldl successfully implemented

-- 747/PLFA exercise: FoldrMonFoldl (2 points)
-- Show that foldr and foldl compute the same value on a monoid
-- when the base case is the identity.
-- Hint: write a helper function for when the base case of foldl
  -- is an arbitrary value.

-- this one was tricky at first because I had the wrong foldl
-- implement foldl-monoid helper function for foldl-r-mon
-- Done very similar to foldr-monoid
-- Needed to use rewrite because couldn't figure out how to do
  -- cong on both sides to get xs on the end

foldl-monoid : ∀ {A : Set} → {{m : IsMonoid A}} →
  ∀ (xs : List A) (y : A) → foldl _⊗_ y xs ≡ y ⊗ (foldl _⊗_ id xs) 
foldl-monoid [] y = sym (identityʳ y)
foldl-monoid (x ∷ xs) y rewrite
             foldl-monoid xs (y ⊗ x) | assoc y x (foldl _⊗_ id xs)
             | cong (y ⊗_) (sym (foldl-monoid xs x))
             | identityˡ x = refl

-- Identityˡ and helper function to get form before using induction hypothesis

foldl-r-mon : ∀ {A : Set} → {{m : IsMonoid A}} →
  ∀ (xs : List A) → foldl _⊗_ id xs ≡ foldr _⊗_ id xs
foldl-r-mon [] = refl
foldl-r-mon (x ∷ xs) rewrite identityˡ x | foldl-monoid xs x
            | foldl-r-mon xs = refl

-- FoldrMonFoldl/foldl-r-mon proof successfully completed


-- PLFA exercise: state and prove Any-++-⇔, and use it to demonstrate
-- an equivalence relating ∈ and _++_.

-- PLFA exercise: Show that the equivalence All-++-⇔ can be extended to an isomorphism.
