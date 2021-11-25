
-- Syntax NA

-- types
  `⊥    : Type


-- type judgements

  -- empty

  case⊥ : ∀ {Γ A} → Γ ⊢ `⊥ → Γ ⊢ A  -- TODO remove: aka ⊥-E/bottom elimination, this looks right


-- rename/substitution

rename ρ (case⊥ L)      =  case⊥ (rename ρ L) -- HID: followed similar logic to case×
subst σ (case⊥ L)      =  case⊥ (subst σ L)  -- HID followed similar process to case× but with 1 input varaible

-- Values NA

-- reduction rules

  -- empty

  --ξ-case⊥ : ∀ {Γ} {L L′ : Γ ⊢ `⊥}
  --        → L —→ L′ → case⊥ L —→ case⊥ L′
  ξ-case⊥ : ∀ {Γ A} {L L′ : Γ ⊢ `⊥} {[] []′ : Γ ⊢ A}
          → L —→ L′ → [] —→ []′ -- is this right? Does it not matter that L steps? I guess the types check out but wtf
          -- this looks wrong but honestly not sure at all

-- Progress

--progress (case⊥ L)                          = step (ξ-case⊥ {!!}) -- should only have 1 case



-- Empty Tests
