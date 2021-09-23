{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.FunctionProperties.Consequences
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

name16 = "Algebra.Structures._._DistributesOver_"
d16 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d16 = erased
name18 = "Algebra.Structures._._DistributesOverʳ_"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d18 = erased
name20 = "Algebra.Structures._._DistributesOverˡ_"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d20 = erased
name24 = "Algebra.Structures._.Absorptive"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d24 = erased
name26 = "Algebra.Structures._.Associative"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d26 = erased
name30 = "Algebra.Structures._.Commutative"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d30 = erased
name32 = "Algebra.Structures._.Congruent₁"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> ()
d32 = erased
name34 = "Algebra.Structures._.Congruent₂"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d34 = erased
name36 = "Algebra.Structures._.Idempotent"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d36 = erased
name40 = "Algebra.Structures._.Identity"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d40 = erased
name42 = "Algebra.Structures._.Inverse"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d42 = erased
name48 = "Algebra.Structures._.LeftIdentity"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d48 = erased
name50 = "Algebra.Structures._.LeftInverse"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d50 = erased
name52 = "Algebra.Structures._.LeftZero"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d52 = erased
name56 = "Algebra.Structures._.RightIdentity"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d56 = erased
name58 = "Algebra.Structures._.RightInverse"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d58 = erased
name60 = "Algebra.Structures._.RightZero"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d60 = erased
name64 = "Algebra.Structures._.Zero"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d64 = erased
name68 = "Algebra.Structures._.Core.Op₁"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d68 = erased
name70 = "Algebra.Structures._.Core.Op₂"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d70 = erased
name74 = "Algebra.Structures.IsSemigroup"
d74 a0 a1 a2 a3 a4 = ()
data T74
  = C237 MAlonzo.Code.Relation.Binary.Core.T578
         (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
         (AgdaAny ->
          AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name84 = "Algebra.Structures.IsSemigroup.isEquivalence"
d84 :: T74 -> MAlonzo.Code.Relation.Binary.Core.T578
d84 v0
  = case coe v0 of
      C237 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name86 = "Algebra.Structures.IsSemigroup.assoc"
d86 :: T74 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d86 v0
  = case coe v0 of
      C237 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name88 = "Algebra.Structures.IsSemigroup.∙-cong"
d88 ::
  T74 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d88 v0
  = case coe v0 of
      C237 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name90 = "Algebra.Structures.IsSemigroup.setoid"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T74 -> MAlonzo.Code.Relation.Binary.T128
d90 v0 v1 v2 v3 v4 v5 = du90 v5
du90 :: T74 -> MAlonzo.Code.Relation.Binary.T128
du90 v0
  = coe
      (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1037 v3) erased erased
      (d84 (coe v0))
name94 = "Algebra.Structures.IsSemigroup._.refl"
d94 :: T74 -> AgdaAny -> AgdaAny
d94 v0
  = coe (MAlonzo.Code.Relation.Binary.Core.d594 (coe (d84 (coe v0))))
name96 = "Algebra.Structures.IsSemigroup._.reflexive"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T74 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d96 v0 v1 v2 v3 v4 v5 = du96 v5
du96 ::
  T74 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du96 v0
  = coe
      (\ v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v0))) v1)
name98 = "Algebra.Structures.IsSemigroup._.sym"
d98 :: T74 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d98 v0
  = coe (MAlonzo.Code.Relation.Binary.Core.d596 (coe (d84 (coe v0))))
name100 = "Algebra.Structures.IsSemigroup._.trans"
d100 ::
  T74 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d100 v0
  = coe (MAlonzo.Code.Relation.Binary.Core.d598 (coe (d84 (coe v0))))
name104 = "Algebra.Structures.IsBand"
d104 a0 a1 a2 a3 a4 = ()
data T104 = C503 T74 (AgdaAny -> AgdaAny)
name112 = "Algebra.Structures.IsBand.isSemigroup"
d112 :: T104 -> T74
d112 v0
  = case coe v0 of
      C503 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name114 = "Algebra.Structures.IsBand.idem"
d114 :: T104 -> AgdaAny -> AgdaAny
d114 v0
  = case coe v0 of
      C503 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name118 = "Algebra.Structures.IsBand._.assoc"
d118 :: T104 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d118 v0 = coe (d86 (coe (d112 (coe v0))))
name120 = "Algebra.Structures.IsBand._.isEquivalence"
d120 :: T104 -> MAlonzo.Code.Relation.Binary.Core.T578
d120 v0 = coe (d84 (coe (d112 (coe v0))))
name122 = "Algebra.Structures.IsBand._.refl"
d122 :: T104 -> AgdaAny -> AgdaAny
d122 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d84 (coe (d112 (coe v0))))))
name124 = "Algebra.Structures.IsBand._.reflexive"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T104 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d124 v0 v1 v2 v3 v4 v5 = du124 v5
du124 ::
  T104 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du124 v0
  = let v1 = d112 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v1))) v2)
name126 = "Algebra.Structures.IsBand._.setoid"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T104 -> MAlonzo.Code.Relation.Binary.T128
d126 v0 v1 v2 v3 v4 v5 = du126 v5
du126 :: T104 -> MAlonzo.Code.Relation.Binary.T128
du126 v0 = coe (du90 (coe (d112 (coe v0))))
name128 = "Algebra.Structures.IsBand._.sym"
d128 :: T104 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d128 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d84 (coe (d112 (coe v0))))))
name130 = "Algebra.Structures.IsBand._.trans"
d130 ::
  T104 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d130 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d84 (coe (d112 (coe v0))))))
name132 = "Algebra.Structures.IsBand._.∙-cong"
d132 ::
  T104 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d132 v0 = coe (d88 (coe (d112 (coe v0))))
name138 = "Algebra.Structures.IsMonoid"
d138 a0 a1 a2 a3 a4 a5 = ()
data T138 = C741 T74 MAlonzo.Code.Agda.Builtin.Sigma.T14
name148 = "Algebra.Structures.IsMonoid.isSemigroup"
d148 :: T138 -> T74
d148 v0
  = case coe v0 of
      C741 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name150 = "Algebra.Structures.IsMonoid.identity"
d150 :: T138 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d150 v0
  = case coe v0 of
      C741 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name152 = "Algebra.Structures.IsMonoid.identityˡ"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T138 -> AgdaAny -> AgdaAny
d152 v0 v1 v2 v3 v4 v5 v6 = du152 v6
du152 :: T138 -> AgdaAny -> AgdaAny
du152 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d150 (coe v0))))
name154 = "Algebra.Structures.IsMonoid.identityʳ"
d154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T138 -> AgdaAny -> AgdaAny
d154 v0 v1 v2 v3 v4 v5 v6 = du154 v6
du154 :: T138 -> AgdaAny -> AgdaAny
du154 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d150 (coe v0))))
name158 = "Algebra.Structures.IsMonoid._.assoc"
d158 :: T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d158 v0 = coe (d86 (coe (d148 (coe v0))))
name160 = "Algebra.Structures.IsMonoid._.isEquivalence"
d160 :: T138 -> MAlonzo.Code.Relation.Binary.Core.T578
d160 v0 = coe (d84 (coe (d148 (coe v0))))
name162 = "Algebra.Structures.IsMonoid._.refl"
d162 :: T138 -> AgdaAny -> AgdaAny
d162 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d84 (coe (d148 (coe v0))))))
name164 = "Algebra.Structures.IsMonoid._.reflexive"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T138 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d164 v0 v1 v2 v3 v4 v5 v6 = du164 v6
du164 ::
  T138 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du164 v0
  = let v1 = d148 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v1))) v2)
name166 = "Algebra.Structures.IsMonoid._.setoid"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T138 -> MAlonzo.Code.Relation.Binary.T128
d166 v0 v1 v2 v3 v4 v5 v6 = du166 v6
du166 :: T138 -> MAlonzo.Code.Relation.Binary.T128
du166 v0 = coe (du90 (coe (d148 (coe v0))))
name168 = "Algebra.Structures.IsMonoid._.sym"
d168 :: T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d168 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d84 (coe (d148 (coe v0))))))
name170 = "Algebra.Structures.IsMonoid._.trans"
d170 ::
  T138 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d170 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d84 (coe (d148 (coe v0))))))
name172 = "Algebra.Structures.IsMonoid._.∙-cong"
d172 ::
  T138 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d172 v0 = coe (d88 (coe (d148 (coe v0))))
name178 = "Algebra.Structures.IsCommutativeMonoid"
d178 a0 a1 a2 a3 a4 a5 = ()
data T178
  = C1223 T74 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
name190 = "Algebra.Structures.IsCommutativeMonoid.isSemigroup"
d190 :: T178 -> T74
d190 v0
  = case coe v0 of
      C1223 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name192 = "Algebra.Structures.IsCommutativeMonoid.identityˡ"
d192 :: T178 -> AgdaAny -> AgdaAny
d192 v0
  = case coe v0 of
      C1223 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name194 = "Algebra.Structures.IsCommutativeMonoid.comm"
d194 :: T178 -> AgdaAny -> AgdaAny -> AgdaAny
d194 v0
  = case coe v0 of
      C1223 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name198 = "Algebra.Structures.IsCommutativeMonoid._.assoc"
d198 :: T178 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d198 v0 = coe (d86 (coe (d190 (coe v0))))
name200 = "Algebra.Structures.IsCommutativeMonoid._.isEquivalence"
d200 :: T178 -> MAlonzo.Code.Relation.Binary.Core.T578
d200 v0 = coe (d84 (coe (d190 (coe v0))))
name202 = "Algebra.Structures.IsCommutativeMonoid._.refl"
d202 :: T178 -> AgdaAny -> AgdaAny
d202 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d84 (coe (d190 (coe v0))))))
name204 = "Algebra.Structures.IsCommutativeMonoid._.reflexive"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T178 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d204 v0 v1 v2 v3 v4 v5 v6 = du204 v6
du204 ::
  T178 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du204 v0
  = let v1 = d190 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v1))) v2)
name206 = "Algebra.Structures.IsCommutativeMonoid._.setoid"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T178 -> MAlonzo.Code.Relation.Binary.T128
d206 v0 v1 v2 v3 v4 v5 v6 = du206 v6
du206 :: T178 -> MAlonzo.Code.Relation.Binary.T128
du206 v0 = coe (du90 (coe (d190 (coe v0))))
name208 = "Algebra.Structures.IsCommutativeMonoid._.sym"
d208 :: T178 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d208 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d84 (coe (d190 (coe v0))))))
name210 = "Algebra.Structures.IsCommutativeMonoid._.trans"
d210 ::
  T178 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d210 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d84 (coe (d190 (coe v0))))))
name212 = "Algebra.Structures.IsCommutativeMonoid._.∙-cong"
d212 ::
  T178 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d212 v0 = coe (d88 (coe (d190 (coe v0))))
name214 = "Algebra.Structures.IsCommutativeMonoid.identityʳ"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T178 -> AgdaAny -> AgdaAny
d214 v0 v1 v2 v3 v4 v5 v6 = du214 v4 v5 v6
du214 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T178 -> AgdaAny -> AgdaAny
du214 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du116
         (coe (du90 (coe (d190 (coe v2))))) (coe v0) (coe (d194 (coe v2)))
         (coe v1) (coe (d192 (coe v2))))
name216 = "Algebra.Structures.IsCommutativeMonoid.identity"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T178 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d216 v0 v1 v2 v3 v4 v5 v6 = du216 v4 v5 v6
du216 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T178 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du216 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (d192 (coe v2))) (coe (du214 (coe v0) (coe v1) (coe v2))))
name218 = "Algebra.Structures.IsCommutativeMonoid.isMonoid"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T178 -> T138
d218 v0 v1 v2 v3 v4 v5 v6 = du218 v4 v5 v6
du218 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T178 -> T138
du218 v0 v1 v2
  = coe
      (C741
         (coe (d190 (coe v2))) (coe (du216 (coe v0) (coe v1) (coe v2))))
name224 = "Algebra.Structures.IsIdempotentCommutativeMonoid"
d224 a0 a1 a2 a3 a4 a5 = ()
data T224 = C1831 T178 (AgdaAny -> AgdaAny)
name234
  = "Algebra.Structures.IsIdempotentCommutativeMonoid.isCommutativeMonoid"
d234 :: T224 -> T178
d234 v0
  = case coe v0 of
      C1831 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name236 = "Algebra.Structures.IsIdempotentCommutativeMonoid.idem"
d236 :: T224 -> AgdaAny -> AgdaAny
d236 v0
  = case coe v0 of
      C1831 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name240
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.assoc"
d240 :: T224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d240 v0 = coe (d86 (coe (d190 (coe (d234 (coe v0))))))
name242 = "Algebra.Structures.IsIdempotentCommutativeMonoid._.comm"
d242 :: T224 -> AgdaAny -> AgdaAny -> AgdaAny
d242 v0 = coe (d194 (coe (d234 (coe v0))))
name244
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.identity"
d244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T224 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d244 v0 v1 v2 v3 v4 v5 v6 = du244 v4 v5 v6
du244 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T224 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du244 v0 v1 v2
  = coe (du216 (coe v0) (coe v1) (coe (d234 (coe v2))))
name246
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.identityʳ"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T224 -> AgdaAny -> AgdaAny
d246 v0 v1 v2 v3 v4 v5 v6 = du246 v4 v5 v6
du246 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T224 -> AgdaAny -> AgdaAny
du246 v0 v1 v2
  = coe (du214 (coe v0) (coe v1) (coe (d234 (coe v2))))
name248
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.identityˡ"
d248 :: T224 -> AgdaAny -> AgdaAny
d248 v0 = coe (d192 (coe (d234 (coe v0))))
name250
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isEquivalence"
d250 :: T224 -> MAlonzo.Code.Relation.Binary.Core.T578
d250 v0 = coe (d84 (coe (d190 (coe (d234 (coe v0))))))
name252
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isMonoid"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T224 -> T138
d252 v0 v1 v2 v3 v4 v5 v6 = du252 v4 v5 v6
du252 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T224 -> T138
du252 v0 v1 v2
  = coe (du218 (coe v0) (coe v1) (coe (d234 (coe v2))))
name254
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.isSemigroup"
d254 :: T224 -> T74
d254 v0 = coe (d190 (coe (d234 (coe v0))))
name256 = "Algebra.Structures.IsIdempotentCommutativeMonoid._.refl"
d256 :: T224 -> AgdaAny -> AgdaAny
d256 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d84 (coe (d190 (coe (d234 (coe v0))))))))
name258
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.reflexive"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T224 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d258 v0 v1 v2 v3 v4 v5 v6 = du258 v6
du258 ::
  T224 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du258 v0
  = let v1 = d234 (coe v0) in
    let v2 = d190 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v2))) v3)
name260
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.setoid"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T224 -> MAlonzo.Code.Relation.Binary.T128
d260 v0 v1 v2 v3 v4 v5 v6 = du260 v6
du260 :: T224 -> MAlonzo.Code.Relation.Binary.T128
du260 v0
  = let v1 = d234 (coe v0) in coe (du90 (coe (d190 (coe v1))))
name262 = "Algebra.Structures.IsIdempotentCommutativeMonoid._.sym"
d262 :: T224 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d262 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d84 (coe (d190 (coe (d234 (coe v0))))))))
name264
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.trans"
d264 ::
  T224 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d264 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d84 (coe (d190 (coe (d234 (coe v0))))))))
name266
  = "Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-cong"
d266 ::
  T224 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d266 v0 = coe (d88 (coe (d190 (coe (d234 (coe v0))))))
name274 = "Algebra.Structures.IsGroup"
d274 a0 a1 a2 a3 a4 a5 a6 = ()
data T274
  = C2229 T138 MAlonzo.Code.Agda.Builtin.Sigma.T14
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name288 = "Algebra.Structures.IsGroup.isMonoid"
d288 :: T274 -> T138
d288 v0
  = case coe v0 of
      C2229 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name290 = "Algebra.Structures.IsGroup.inverse"
d290 :: T274 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d290 v0
  = case coe v0 of
      C2229 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name292 = "Algebra.Structures.IsGroup.⁻¹-cong"
d292 :: T274 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d292 v0
  = case coe v0 of
      C2229 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name296 = "Algebra.Structures.IsGroup._.assoc"
d296 :: T274 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d296 v0 = coe (d86 (coe (d148 (coe (d288 (coe v0))))))
name298 = "Algebra.Structures.IsGroup._.identity"
d298 :: T274 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d298 v0 = coe (d150 (coe (d288 (coe v0))))
name300 = "Algebra.Structures.IsGroup._.identityʳ"
d300 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T274 -> AgdaAny -> AgdaAny
d300 v0 v1 v2 v3 v4 v5 v6 v7 = du300 v7
du300 :: T274 -> AgdaAny -> AgdaAny
du300 v0
  = let v1 = d288 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d150 (coe v1))))
name302 = "Algebra.Structures.IsGroup._.identityˡ"
d302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T274 -> AgdaAny -> AgdaAny
d302 v0 v1 v2 v3 v4 v5 v6 v7 = du302 v7
du302 :: T274 -> AgdaAny -> AgdaAny
du302 v0
  = let v1 = d288 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d150 (coe v1))))
name304 = "Algebra.Structures.IsGroup._.isEquivalence"
d304 :: T274 -> MAlonzo.Code.Relation.Binary.Core.T578
d304 v0 = coe (d84 (coe (d148 (coe (d288 (coe v0))))))
name306 = "Algebra.Structures.IsGroup._.isSemigroup"
d306 :: T274 -> T74
d306 v0 = coe (d148 (coe (d288 (coe v0))))
name308 = "Algebra.Structures.IsGroup._.refl"
d308 :: T274 -> AgdaAny -> AgdaAny
d308 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d84 (coe (d148 (coe (d288 (coe v0))))))))
name310 = "Algebra.Structures.IsGroup._.reflexive"
d310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T274 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d310 v0 v1 v2 v3 v4 v5 v6 v7 = du310 v7
du310 ::
  T274 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du310 v0
  = let v1 = d288 (coe v0) in
    let v2 = d148 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v2))) v3)
name312 = "Algebra.Structures.IsGroup._.setoid"
d312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T274 -> MAlonzo.Code.Relation.Binary.T128
d312 v0 v1 v2 v3 v4 v5 v6 v7 = du312 v7
du312 :: T274 -> MAlonzo.Code.Relation.Binary.T128
du312 v0
  = let v1 = d288 (coe v0) in coe (du90 (coe (d148 (coe v1))))
name314 = "Algebra.Structures.IsGroup._.sym"
d314 :: T274 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d314 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d84 (coe (d148 (coe (d288 (coe v0))))))))
name316 = "Algebra.Structures.IsGroup._.trans"
d316 ::
  T274 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d316 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d84 (coe (d148 (coe (d288 (coe v0))))))))
name318 = "Algebra.Structures.IsGroup._.∙-cong"
d318 ::
  T274 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d318 v0 = coe (d88 (coe (d148 (coe (d288 (coe v0))))))
name320 = "Algebra.Structures.IsGroup._-_"
d320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T274 -> AgdaAny -> AgdaAny -> AgdaAny
d320 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du320 v4 v6 v8 v9
du320 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du320 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
name326 = "Algebra.Structures.IsGroup.inverseˡ"
d326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T274 -> AgdaAny -> AgdaAny
d326 v0 v1 v2 v3 v4 v5 v6 v7 = du326 v7
du326 :: T274 -> AgdaAny -> AgdaAny
du326 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d290 (coe v0))))
name328 = "Algebra.Structures.IsGroup.inverseʳ"
d328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T274 -> AgdaAny -> AgdaAny
d328 v0 v1 v2 v3 v4 v5 v6 v7 = du328 v7
du328 :: T274 -> AgdaAny -> AgdaAny
du328 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d290 (coe v0))))
name334 = "Algebra.Structures.IsGroup.uniqueˡ-⁻¹"
d334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T274 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d334 v0 v1 v2 v3 v4 v5 v6 v7 = du334 v4 v5 v6 v7
du334 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T274 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du334 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du290
         (coe (du90 (coe (d148 (coe (d288 (coe v3))))))) (coe v0) (coe v2)
         (coe v1) (coe (d88 (coe (d148 (coe (d288 (coe v3)))))))
         (coe (d86 (coe (d148 (coe (d288 (coe v3)))))))
         (coe (d150 (coe (d288 (coe v3)))))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d290 (coe v3))))))
name340 = "Algebra.Structures.IsGroup.uniqueʳ-⁻¹"
d340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T274 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d340 v0 v1 v2 v3 v4 v5 v6 v7 = du340 v4 v5 v6 v7
du340 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T274 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du340 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du322
         (coe (du90 (coe (d148 (coe (d288 (coe v3))))))) (coe v0) (coe v2)
         (coe v1) (coe (d88 (coe (d148 (coe (d288 (coe v3)))))))
         (coe (d86 (coe (d148 (coe (d288 (coe v3)))))))
         (coe (d150 (coe (d288 (coe v3)))))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d290 (coe v3))))))
name348 = "Algebra.Structures.IsAbelianGroup"
d348 a0 a1 a2 a3 a4 a5 a6 = ()
data T348 = C3345 T274 (AgdaAny -> AgdaAny -> AgdaAny)
name360 = "Algebra.Structures.IsAbelianGroup.isGroup"
d360 :: T348 -> T274
d360 v0
  = case coe v0 of
      C3345 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name362 = "Algebra.Structures.IsAbelianGroup.comm"
d362 :: T348 -> AgdaAny -> AgdaAny -> AgdaAny
d362 v0
  = case coe v0 of
      C3345 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name366 = "Algebra.Structures.IsAbelianGroup._._-_"
d366 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T348 -> AgdaAny -> AgdaAny -> AgdaAny
d366 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du366 v4 v6 v8 v9
du366 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du366 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
name368 = "Algebra.Structures.IsAbelianGroup._.assoc"
d368 :: T348 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d368 v0 = coe (d86 (coe (d148 (coe (d288 (coe (d360 (coe v0))))))))
name370 = "Algebra.Structures.IsAbelianGroup._.identity"
d370 :: T348 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d370 v0 = coe (d150 (coe (d288 (coe (d360 (coe v0))))))
name372 = "Algebra.Structures.IsAbelianGroup._.identityʳ"
d372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T348 -> AgdaAny -> AgdaAny
d372 v0 v1 v2 v3 v4 v5 v6 v7 = du372 v7
du372 :: T348 -> AgdaAny -> AgdaAny
du372 v0
  = let v1 = d360 (coe v0) in
    let v2 = d288 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d150 (coe v2))))
name374 = "Algebra.Structures.IsAbelianGroup._.identityˡ"
d374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T348 -> AgdaAny -> AgdaAny
d374 v0 v1 v2 v3 v4 v5 v6 v7 = du374 v7
du374 :: T348 -> AgdaAny -> AgdaAny
du374 v0
  = let v1 = d360 (coe v0) in
    let v2 = d288 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d150 (coe v2))))
name376 = "Algebra.Structures.IsAbelianGroup._.inverse"
d376 :: T348 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d376 v0 = coe (d290 (coe (d360 (coe v0))))
name378 = "Algebra.Structures.IsAbelianGroup._.inverseʳ"
d378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T348 -> AgdaAny -> AgdaAny
d378 v0 v1 v2 v3 v4 v5 v6 v7 = du378 v7
du378 :: T348 -> AgdaAny -> AgdaAny
du378 v0
  = let v1 = d360 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d290 (coe v1))))
name380 = "Algebra.Structures.IsAbelianGroup._.inverseˡ"
d380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T348 -> AgdaAny -> AgdaAny
d380 v0 v1 v2 v3 v4 v5 v6 v7 = du380 v7
du380 :: T348 -> AgdaAny -> AgdaAny
du380 v0
  = let v1 = d360 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d290 (coe v1))))
name382 = "Algebra.Structures.IsAbelianGroup._.isEquivalence"
d382 :: T348 -> MAlonzo.Code.Relation.Binary.Core.T578
d382 v0 = coe (d84 (coe (d148 (coe (d288 (coe (d360 (coe v0))))))))
name384 = "Algebra.Structures.IsAbelianGroup._.isMonoid"
d384 :: T348 -> T138
d384 v0 = coe (d288 (coe (d360 (coe v0))))
name386 = "Algebra.Structures.IsAbelianGroup._.isSemigroup"
d386 :: T348 -> T74
d386 v0 = coe (d148 (coe (d288 (coe (d360 (coe v0))))))
name388 = "Algebra.Structures.IsAbelianGroup._.refl"
d388 :: T348 -> AgdaAny -> AgdaAny
d388 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d84 (coe (d148 (coe (d288 (coe (d360 (coe v0))))))))))
name390 = "Algebra.Structures.IsAbelianGroup._.reflexive"
d390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T348 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d390 v0 v1 v2 v3 v4 v5 v6 v7 = du390 v7
du390 ::
  T348 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du390 v0
  = let v1 = d360 (coe v0) in
    let v2 = d288 (coe v1) in
    let v3 = d148 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v3))) v4)
name392 = "Algebra.Structures.IsAbelianGroup._.setoid"
d392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T348 -> MAlonzo.Code.Relation.Binary.T128
d392 v0 v1 v2 v3 v4 v5 v6 v7 = du392 v7
du392 :: T348 -> MAlonzo.Code.Relation.Binary.T128
du392 v0
  = let v1 = d360 (coe v0) in
    let v2 = d288 (coe v1) in coe (du90 (coe (d148 (coe v2))))
name394 = "Algebra.Structures.IsAbelianGroup._.sym"
d394 :: T348 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d394 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d84 (coe (d148 (coe (d288 (coe (d360 (coe v0))))))))))
name396 = "Algebra.Structures.IsAbelianGroup._.trans"
d396 ::
  T348 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d396 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d84 (coe (d148 (coe (d288 (coe (d360 (coe v0))))))))))
name398 = "Algebra.Structures.IsAbelianGroup._.uniqueʳ-⁻¹"
d398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T348 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d398 v0 v1 v2 v3 v4 v5 v6 v7 = du398 v4 v5 v6 v7
du398 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T348 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du398 v0 v1 v2 v3
  = coe (du340 (coe v0) (coe v1) (coe v2) (coe (d360 (coe v3))))
name400 = "Algebra.Structures.IsAbelianGroup._.uniqueˡ-⁻¹"
d400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T348 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d400 v0 v1 v2 v3 v4 v5 v6 v7 = du400 v4 v5 v6 v7
du400 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T348 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du400 v0 v1 v2 v3
  = coe (du334 (coe v0) (coe v1) (coe v2) (coe (d360 (coe v3))))
name402 = "Algebra.Structures.IsAbelianGroup._.⁻¹-cong"
d402 :: T348 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d402 v0 = coe (d292 (coe (d360 (coe v0))))
name404 = "Algebra.Structures.IsAbelianGroup._.∙-cong"
d404 ::
  T348 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d404 v0 = coe (d88 (coe (d148 (coe (d288 (coe (d360 (coe v0))))))))
name406 = "Algebra.Structures.IsAbelianGroup.isCommutativeMonoid"
d406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T348 -> T178
d406 v0 v1 v2 v3 v4 v5 v6 v7 = du406 v7
du406 :: T348 -> T178
du406 v0
  = coe
      (C1223
         (coe (d148 (coe (d288 (coe (d360 (coe v0)))))))
         (let v1 = d288 (coe (d360 (coe v0))) in
          coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d150 (coe v1)))))
         (coe (d362 (coe v0))))
name414 = "Algebra.Structures.IsNearSemiring"
d414 a0 a1 a2 a3 a4 a5 a6 = ()
data T414
  = C4085 T138 T74 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny)
name430 = "Algebra.Structures.IsNearSemiring.+-isMonoid"
d430 :: T414 -> T138
d430 v0
  = case coe v0 of
      C4085 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name432 = "Algebra.Structures.IsNearSemiring.*-isSemigroup"
d432 :: T414 -> T74
d432 v0
  = case coe v0 of
      C4085 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name434 = "Algebra.Structures.IsNearSemiring.distribʳ"
d434 :: T414 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d434 v0
  = case coe v0 of
      C4085 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name436 = "Algebra.Structures.IsNearSemiring.zeroˡ"
d436 :: T414 -> AgdaAny -> AgdaAny
d436 v0
  = case coe v0 of
      C4085 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name440 = "Algebra.Structures.IsNearSemiring._.assoc"
d440 :: T414 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d440 v0 = coe (d86 (coe (d148 (coe (d430 (coe v0))))))
name442 = "Algebra.Structures.IsNearSemiring._.∙-cong"
d442 ::
  T414 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d442 v0 = coe (d88 (coe (d148 (coe (d430 (coe v0))))))
name444 = "Algebra.Structures.IsNearSemiring._.identity"
d444 :: T414 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d444 v0 = coe (d150 (coe (d430 (coe v0))))
name446 = "Algebra.Structures.IsNearSemiring._.identityʳ"
d446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T414 -> AgdaAny -> AgdaAny
d446 v0 v1 v2 v3 v4 v5 v6 v7 = du446 v7
du446 :: T414 -> AgdaAny -> AgdaAny
du446 v0
  = let v1 = d430 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d150 (coe v1))))
name448 = "Algebra.Structures.IsNearSemiring._.identityˡ"
d448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T414 -> AgdaAny -> AgdaAny
d448 v0 v1 v2 v3 v4 v5 v6 v7 = du448 v7
du448 :: T414 -> AgdaAny -> AgdaAny
du448 v0
  = let v1 = d430 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d150 (coe v1))))
name450 = "Algebra.Structures.IsNearSemiring._.isSemigroup"
d450 :: T414 -> T74
d450 v0 = coe (d148 (coe (d430 (coe v0))))
name452 = "Algebra.Structures.IsNearSemiring._.isEquivalence"
d452 :: T414 -> MAlonzo.Code.Relation.Binary.Core.T578
d452 v0 = coe (d84 (coe (d148 (coe (d430 (coe v0))))))
name454 = "Algebra.Structures.IsNearSemiring._.refl"
d454 :: T414 -> AgdaAny -> AgdaAny
d454 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d84 (coe (d148 (coe (d430 (coe v0))))))))
name456 = "Algebra.Structures.IsNearSemiring._.reflexive"
d456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T414 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d456 v0 v1 v2 v3 v4 v5 v6 v7 = du456 v7
du456 ::
  T414 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du456 v0
  = let v1 = d430 (coe v0) in
    let v2 = d148 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v2))) v3)
name458 = "Algebra.Structures.IsNearSemiring._.setoid"
d458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T414 -> MAlonzo.Code.Relation.Binary.T128
d458 v0 v1 v2 v3 v4 v5 v6 v7 = du458 v7
du458 :: T414 -> MAlonzo.Code.Relation.Binary.T128
du458 v0
  = let v1 = d430 (coe v0) in coe (du90 (coe (d148 (coe v1))))
name460 = "Algebra.Structures.IsNearSemiring._.sym"
d460 :: T414 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d460 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d84 (coe (d148 (coe (d430 (coe v0))))))))
name462 = "Algebra.Structures.IsNearSemiring._.trans"
d462 ::
  T414 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d462 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d84 (coe (d148 (coe (d430 (coe v0))))))))
name466 = "Algebra.Structures.IsNearSemiring._.assoc"
d466 :: T414 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d466 v0 = coe (d86 (coe (d432 (coe v0))))
name468 = "Algebra.Structures.IsNearSemiring._.∙-cong"
d468 ::
  T414 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d468 v0 = coe (d88 (coe (d432 (coe v0))))
name476 = "Algebra.Structures.IsSemiringWithoutOne"
d476 a0 a1 a2 a3 a4 a5 a6 = ()
data T476
  = C4615 T178 T74 MAlonzo.Code.Agda.Builtin.Sigma.T14
          MAlonzo.Code.Agda.Builtin.Sigma.T14
name492
  = "Algebra.Structures.IsSemiringWithoutOne.+-isCommutativeMonoid"
d492 :: T476 -> T178
d492 v0
  = case coe v0 of
      C4615 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name494 = "Algebra.Structures.IsSemiringWithoutOne.*-isSemigroup"
d494 :: T476 -> T74
d494 v0
  = case coe v0 of
      C4615 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name496 = "Algebra.Structures.IsSemiringWithoutOne.distrib"
d496 :: T476 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d496 v0
  = case coe v0 of
      C4615 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name498 = "Algebra.Structures.IsSemiringWithoutOne.zero"
d498 :: T476 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d498 v0
  = case coe v0 of
      C4615 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name502 = "Algebra.Structures.IsSemiringWithoutOne._.comm"
d502 :: T476 -> AgdaAny -> AgdaAny -> AgdaAny
d502 v0 = coe (d194 (coe (d492 (coe v0))))
name504 = "Algebra.Structures.IsSemiringWithoutOne._.isMonoid"
d504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T476 -> T138
d504 v0 v1 v2 v3 v4 v5 v6 v7 = du504 v4 v6 v7
du504 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T476 -> T138
du504 v0 v1 v2
  = coe (du218 (coe v0) (coe v1) (coe (d492 (coe v2))))
name508 = "Algebra.Structures.IsSemiringWithoutOne._.assoc"
d508 :: T476 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d508 v0 = coe (d86 (coe (d494 (coe v0))))
name510 = "Algebra.Structures.IsSemiringWithoutOne._.∙-cong"
d510 ::
  T476 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d510 v0 = coe (d88 (coe (d494 (coe v0))))
name512 = "Algebra.Structures.IsSemiringWithoutOne.zeroˡ"
d512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T476 -> AgdaAny -> AgdaAny
d512 v0 v1 v2 v3 v4 v5 v6 v7 = du512 v7
du512 :: T476 -> AgdaAny -> AgdaAny
du512 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d498 (coe v0))))
name514 = "Algebra.Structures.IsSemiringWithoutOne.zeroʳ"
d514 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T476 -> AgdaAny -> AgdaAny
d514 v0 v1 v2 v3 v4 v5 v6 v7 = du514 v7
du514 :: T476 -> AgdaAny -> AgdaAny
du514 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d498 (coe v0))))
name516 = "Algebra.Structures.IsSemiringWithoutOne.isNearSemiring"
d516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T476 -> T414
d516 v0 v1 v2 v3 v4 v5 v6 v7 = du516 v4 v6 v7
du516 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T476 -> T414
du516 v0 v1 v2
  = coe
      (C4085
         (coe (du218 (coe v0) (coe v1) (coe (d492 (coe v2)))))
         (coe (d494 (coe v2)))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d496 (coe v2)))))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d498 (coe v2))))))
name520 = "Algebra.Structures.IsSemiringWithoutOne._.assoc"
d520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T476 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d520 v0 v1 v2 v3 v4 v5 v6 v7 = du520 v7
du520 :: T476 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du520 v0 = coe (d86 (coe (d494 (coe v0))))
name522 = "Algebra.Structures.IsSemiringWithoutOne._.∙-cong"
d522 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T476 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d522 v0 v1 v2 v3 v4 v5 v6 v7 = du522 v7
du522 ::
  T476 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du522 v0 = coe (d88 (coe (d494 (coe v0))))
name524 = "Algebra.Structures.IsSemiringWithoutOne._.*-isSemigroup"
d524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T476 -> T74
d524 v0 v1 v2 v3 v4 v5 v6 v7 = du524 v7
du524 :: T476 -> T74
du524 v0 = coe (d494 (coe v0))
name526 = "Algebra.Structures.IsSemiringWithoutOne._.assoc"
d526 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T476 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d526 v0 v1 v2 v3 v4 v5 v6 v7 = du526 v7
du526 :: T476 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du526 v0 = coe (d86 (coe (d190 (coe (d492 (coe v0))))))
name528 = "Algebra.Structures.IsSemiringWithoutOne._.∙-cong"
d528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T476 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d528 v0 v1 v2 v3 v4 v5 v6 v7 = du528 v7
du528 ::
  T476 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du528 v0 = coe (d88 (coe (d190 (coe (d492 (coe v0))))))
name530 = "Algebra.Structures.IsSemiringWithoutOne._.identity"
d530 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T476 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d530 v0 v1 v2 v3 v4 v5 v6 v7 = du530 v4 v6 v7
du530 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T476 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du530 v0 v1 v2
  = coe (du216 (coe v0) (coe v1) (coe (d492 (coe v2))))
name532 = "Algebra.Structures.IsSemiringWithoutOne._.identityʳ"
d532 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T476 -> AgdaAny -> AgdaAny
d532 v0 v1 v2 v3 v4 v5 v6 v7 = du532 v4 v6 v7
du532 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T476 -> AgdaAny -> AgdaAny
du532 v0 v1 v2
  = let v3 = du516 (coe v0) (coe v1) (coe v2) in
    let v4 = d430 (coe v3) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d150 (coe v4))))
name534 = "Algebra.Structures.IsSemiringWithoutOne._.identityˡ"
d534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T476 -> AgdaAny -> AgdaAny
d534 v0 v1 v2 v3 v4 v5 v6 v7 = du534 v4 v6 v7
du534 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T476 -> AgdaAny -> AgdaAny
du534 v0 v1 v2
  = let v3 = du516 (coe v0) (coe v1) (coe v2) in
    let v4 = d430 (coe v3) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d150 (coe v4))))
name536 = "Algebra.Structures.IsSemiringWithoutOne._.isSemigroup"
d536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T476 -> T74
d536 v0 v1 v2 v3 v4 v5 v6 v7 = du536 v7
du536 :: T476 -> T74
du536 v0 = coe (d190 (coe (d492 (coe v0))))
name538 = "Algebra.Structures.IsSemiringWithoutOne._.distribʳ"
d538 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T476 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d538 v0 v1 v2 v3 v4 v5 v6 v7 = du538 v7
du538 :: T476 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du538 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d496 (coe v0))))
name540 = "Algebra.Structures.IsSemiringWithoutOne._.isEquivalence"
d540 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T476 -> MAlonzo.Code.Relation.Binary.Core.T578
d540 v0 v1 v2 v3 v4 v5 v6 v7 = du540 v7
du540 :: T476 -> MAlonzo.Code.Relation.Binary.Core.T578
du540 v0 = coe (d84 (coe (d190 (coe (d492 (coe v0))))))
name542 = "Algebra.Structures.IsSemiringWithoutOne._.refl"
d542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T476 -> AgdaAny -> AgdaAny
d542 v0 v1 v2 v3 v4 v5 v6 v7 = du542 v7
du542 :: T476 -> AgdaAny -> AgdaAny
du542 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d84 (coe (d190 (coe (d492 (coe v0))))))))
name544 = "Algebra.Structures.IsSemiringWithoutOne._.reflexive"
d544 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T476 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d544 v0 v1 v2 v3 v4 v5 v6 v7 = du544 v4 v6 v7
du544 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T476 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du544 v0 v1 v2
  = let v3 = du516 (coe v0) (coe v1) (coe v2) in
    let v4 = d430 (coe v3) in
    let v5 = d148 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v5))) v6)
name546 = "Algebra.Structures.IsSemiringWithoutOne._.setoid"
d546 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T476 -> MAlonzo.Code.Relation.Binary.T128
d546 v0 v1 v2 v3 v4 v5 v6 v7 = du546 v4 v6 v7
du546 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T476 -> MAlonzo.Code.Relation.Binary.T128
du546 v0 v1 v2
  = let v3 = du516 (coe v0) (coe v1) (coe v2) in
    let v4 = d430 (coe v3) in coe (du90 (coe (d148 (coe v4))))
name548 = "Algebra.Structures.IsSemiringWithoutOne._.sym"
d548 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T476 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d548 v0 v1 v2 v3 v4 v5 v6 v7 = du548 v7
du548 :: T476 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du548 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d84 (coe (d190 (coe (d492 (coe v0))))))))
name550 = "Algebra.Structures.IsSemiringWithoutOne._.trans"
d550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T476 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d550 v0 v1 v2 v3 v4 v5 v6 v7 = du550 v7
du550 ::
  T476 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du550 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d84 (coe (d190 (coe (d492 (coe v0))))))))
name560 = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero"
d560 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T560 = C5489 T178 T138 MAlonzo.Code.Agda.Builtin.Sigma.T14
name576
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid"
d576 :: T560 -> T178
d576 v0
  = case coe v0 of
      C5489 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name578
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-isMonoid"
d578 :: T560 -> T138
d578 v0
  = case coe v0 of
      C5489 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name580
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distrib"
d580 :: T560 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d580 v0
  = case coe v0 of
      C5489 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name582
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distribˡ"
d582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T560 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d582 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du582 v8
du582 :: T560 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du582 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d580 (coe v0))))
name584
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distribʳ"
d584 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T560 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d584 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du584 v8
du584 :: T560 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du584 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d580 (coe v0))))
name588
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.assoc"
d588 :: T560 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d588 v0 = coe (d86 (coe (d190 (coe (d576 (coe v0))))))
name590
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.comm"
d590 :: T560 -> AgdaAny -> AgdaAny -> AgdaAny
d590 v0 = coe (d194 (coe (d576 (coe v0))))
name592
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-cong"
d592 ::
  T560 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d592 v0 = coe (d88 (coe (d190 (coe (d576 (coe v0))))))
name594
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identity"
d594 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T560 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d594 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du594 v4 v6 v8
du594 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T560 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du594 v0 v1 v2
  = coe (du216 (coe v0) (coe v1) (coe (d576 (coe v2))))
name596
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityʳ"
d596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T560 -> AgdaAny -> AgdaAny
d596 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du596 v4 v6 v8
du596 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T560 -> AgdaAny -> AgdaAny
du596 v0 v1 v2
  = coe (du214 (coe v0) (coe v1) (coe (d576 (coe v2))))
name598
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityˡ"
d598 :: T560 -> AgdaAny -> AgdaAny
d598 v0 = coe (d192 (coe (d576 (coe v0))))
name600
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMonoid"
d600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T560 -> T138
d600 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du600 v4 v6 v8
du600 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T560 -> T138
du600 v0 v1 v2
  = coe (du218 (coe v0) (coe v1) (coe (d576 (coe v2))))
name602
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isSemigroup"
d602 :: T560 -> T74
d602 v0 = coe (d190 (coe (d576 (coe v0))))
name604
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isEquivalence"
d604 :: T560 -> MAlonzo.Code.Relation.Binary.Core.T578
d604 v0 = coe (d84 (coe (d190 (coe (d576 (coe v0))))))
name606
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.refl"
d606 :: T560 -> AgdaAny -> AgdaAny
d606 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d84 (coe (d190 (coe (d576 (coe v0))))))))
name608
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.reflexive"
d608 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T560 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d608 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du608 v8
du608 ::
  T560 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du608 v0
  = let v1 = d576 (coe v0) in
    let v2 = d190 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v2))) v3)
name610
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.setoid"
d610 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T560 -> MAlonzo.Code.Relation.Binary.T128
d610 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du610 v8
du610 :: T560 -> MAlonzo.Code.Relation.Binary.T128
du610 v0
  = let v1 = d576 (coe v0) in coe (du90 (coe (d190 (coe v1))))
name612
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.sym"
d612 :: T560 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d612 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d84 (coe (d190 (coe (d576 (coe v0))))))))
name614
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.trans"
d614 ::
  T560 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d614 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d84 (coe (d190 (coe (d576 (coe v0))))))))
name618
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.assoc"
d618 :: T560 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d618 v0 = coe (d86 (coe (d148 (coe (d578 (coe v0))))))
name620
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-cong"
d620 ::
  T560 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d620 v0 = coe (d88 (coe (d148 (coe (d578 (coe v0))))))
name622
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identity"
d622 :: T560 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d622 v0 = coe (d150 (coe (d578 (coe v0))))
name624
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityʳ"
d624 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T560 -> AgdaAny -> AgdaAny
d624 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du624 v8
du624 :: T560 -> AgdaAny -> AgdaAny
du624 v0
  = let v1 = d578 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d150 (coe v1))))
name626
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityˡ"
d626 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T560 -> AgdaAny -> AgdaAny
d626 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du626 v8
du626 :: T560 -> AgdaAny -> AgdaAny
du626 v0
  = let v1 = d578 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d150 (coe v1))))
name628
  = "Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isSemigroup"
d628 :: T560 -> T74
d628 v0 = coe (d148 (coe (d578 (coe v0))))
name638 = "Algebra.Structures.IsSemiring"
d638 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T638 = C6477 T560 MAlonzo.Code.Agda.Builtin.Sigma.T14
name652
  = "Algebra.Structures.IsSemiring.isSemiringWithoutAnnihilatingZero"
d652 :: T638 -> T560
d652 v0
  = case coe v0 of
      C6477 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name654 = "Algebra.Structures.IsSemiring.zero"
d654 :: T638 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d654 v0
  = case coe v0 of
      C6477 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name658 = "Algebra.Structures.IsSemiring._.assoc"
d658 :: T638 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d658 v0 = coe (d86 (coe (d148 (coe (d578 (coe (d652 (coe v0))))))))
name660 = "Algebra.Structures.IsSemiring._.∙-cong"
d660 ::
  T638 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d660 v0 = coe (d88 (coe (d148 (coe (d578 (coe (d652 (coe v0))))))))
name662 = "Algebra.Structures.IsSemiring._.identity"
d662 :: T638 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d662 v0 = coe (d150 (coe (d578 (coe (d652 (coe v0))))))
name664 = "Algebra.Structures.IsSemiring._.identityʳ"
d664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T638 -> AgdaAny -> AgdaAny
d664 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du664 v8
du664 :: T638 -> AgdaAny -> AgdaAny
du664 v0
  = let v1 = d652 (coe v0) in
    let v2 = d578 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d150 (coe v2))))
name666 = "Algebra.Structures.IsSemiring._.identityˡ"
d666 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T638 -> AgdaAny -> AgdaAny
d666 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du666 v8
du666 :: T638 -> AgdaAny -> AgdaAny
du666 v0
  = let v1 = d652 (coe v0) in
    let v2 = d578 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d150 (coe v2))))
name668 = "Algebra.Structures.IsSemiring._.*-isMonoid"
d668 :: T638 -> T138
d668 v0 = coe (d578 (coe (d652 (coe v0))))
name670 = "Algebra.Structures.IsSemiring._.isSemigroup"
d670 :: T638 -> T74
d670 v0 = coe (d148 (coe (d578 (coe (d652 (coe v0))))))
name672 = "Algebra.Structures.IsSemiring._.assoc"
d672 :: T638 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d672 v0 = coe (d86 (coe (d190 (coe (d576 (coe (d652 (coe v0))))))))
name674 = "Algebra.Structures.IsSemiring._.comm"
d674 :: T638 -> AgdaAny -> AgdaAny -> AgdaAny
d674 v0 = coe (d194 (coe (d576 (coe (d652 (coe v0))))))
name676 = "Algebra.Structures.IsSemiring._.∙-cong"
d676 ::
  T638 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d676 v0 = coe (d88 (coe (d190 (coe (d576 (coe (d652 (coe v0))))))))
name678 = "Algebra.Structures.IsSemiring._.identity"
d678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T638 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d678 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du678 v4 v6 v8
du678 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T638 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du678 v0 v1 v2
  = let v3 = d652 (coe v2) in
    coe (du216 (coe v0) (coe v1) (coe (d576 (coe v3))))
name680 = "Algebra.Structures.IsSemiring._.identityʳ"
d680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T638 -> AgdaAny -> AgdaAny
d680 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du680 v4 v6 v8
du680 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T638 -> AgdaAny -> AgdaAny
du680 v0 v1 v2
  = let v3 = d652 (coe v2) in
    coe (du214 (coe v0) (coe v1) (coe (d576 (coe v3))))
name682 = "Algebra.Structures.IsSemiring._.identityˡ"
d682 :: T638 -> AgdaAny -> AgdaAny
d682 v0 = coe (d192 (coe (d576 (coe (d652 (coe v0))))))
name684 = "Algebra.Structures.IsSemiring._.+-isCommutativeMonoid"
d684 :: T638 -> T178
d684 v0 = coe (d576 (coe (d652 (coe v0))))
name686 = "Algebra.Structures.IsSemiring._.isMonoid"
d686 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T638 -> T138
d686 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du686 v4 v6 v8
du686 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T638 -> T138
du686 v0 v1 v2
  = let v3 = d652 (coe v2) in
    coe (du218 (coe v0) (coe v1) (coe (d576 (coe v3))))
name688 = "Algebra.Structures.IsSemiring._.isSemigroup"
d688 :: T638 -> T74
d688 v0 = coe (d190 (coe (d576 (coe (d652 (coe v0))))))
name690 = "Algebra.Structures.IsSemiring._.distrib"
d690 :: T638 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d690 v0 = coe (d580 (coe (d652 (coe v0))))
name692 = "Algebra.Structures.IsSemiring._.distribʳ"
d692 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T638 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d692 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du692 v8
du692 :: T638 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du692 v0
  = let v1 = d652 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d580 (coe v1))))
name694 = "Algebra.Structures.IsSemiring._.distribˡ"
d694 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T638 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d694 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du694 v8
du694 :: T638 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du694 v0
  = let v1 = d652 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d580 (coe v1))))
name696 = "Algebra.Structures.IsSemiring._.isEquivalence"
d696 :: T638 -> MAlonzo.Code.Relation.Binary.Core.T578
d696 v0 = coe (d84 (coe (d190 (coe (d576 (coe (d652 (coe v0))))))))
name698 = "Algebra.Structures.IsSemiring._.refl"
d698 :: T638 -> AgdaAny -> AgdaAny
d698 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d84 (coe (d190 (coe (d576 (coe (d652 (coe v0))))))))))
name700 = "Algebra.Structures.IsSemiring._.reflexive"
d700 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T638 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d700 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du700 v8
du700 ::
  T638 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du700 v0
  = let v1 = d652 (coe v0) in
    let v2 = d576 (coe v1) in
    let v3 = d190 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v3))) v4)
name702 = "Algebra.Structures.IsSemiring._.setoid"
d702 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T638 -> MAlonzo.Code.Relation.Binary.T128
d702 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du702 v8
du702 :: T638 -> MAlonzo.Code.Relation.Binary.T128
du702 v0
  = let v1 = d652 (coe v0) in
    let v2 = d576 (coe v1) in coe (du90 (coe (d190 (coe v2))))
name704 = "Algebra.Structures.IsSemiring._.sym"
d704 :: T638 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d704 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d84 (coe (d190 (coe (d576 (coe (d652 (coe v0))))))))))
name706 = "Algebra.Structures.IsSemiring._.trans"
d706 ::
  T638 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d706 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d84 (coe (d190 (coe (d576 (coe (d652 (coe v0))))))))))
name708 = "Algebra.Structures.IsSemiring.isSemiringWithoutOne"
d708 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T638 -> T476
d708 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du708 v8
du708 :: T638 -> T476
du708 v0
  = coe
      (C4615
         (coe (d576 (coe (d652 (coe v0)))))
         (coe (d148 (coe (d578 (coe (d652 (coe v0)))))))
         (coe (d580 (coe (d652 (coe v0))))) (coe (d654 (coe v0))))
name712 = "Algebra.Structures.IsSemiring._.isNearSemiring"
d712 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T638 -> T414
d712 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du712 v4 v6 v8
du712 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T638 -> T414
du712 v0 v1 v2
  = coe (du516 (coe v0) (coe v1) (coe (du708 (coe v2))))
name714 = "Algebra.Structures.IsSemiring._.zeroʳ"
d714 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T638 -> AgdaAny -> AgdaAny
d714 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du714 v8
du714 :: T638 -> AgdaAny -> AgdaAny
du714 v0
  = let v1 = du708 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d498 (coe v1))))
name716 = "Algebra.Structures.IsSemiring._.zeroˡ"
d716 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T638 -> AgdaAny -> AgdaAny
d716 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du716 v8
du716 :: T638 -> AgdaAny -> AgdaAny
du716 v0
  = let v1 = du708 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d498 (coe v1))))
name724 = "Algebra.Structures.IsCommutativeSemiringWithoutOne"
d724 a0 a1 a2 a3 a4 a5 a6 = ()
data T724 = C7481 T476 (AgdaAny -> AgdaAny -> AgdaAny)
name736
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne"
d736 :: T724 -> T476
d736 v0
  = case coe v0 of
      C7481 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name738
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne.*-comm"
d738 :: T724 -> AgdaAny -> AgdaAny -> AgdaAny
d738 v0
  = case coe v0 of
      C7481 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name742
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.assoc"
d742 :: T724 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d742 v0 = coe (d86 (coe (d494 (coe (d736 (coe v0))))))
name744
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.assoc"
d744 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T724 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d744 v0 v1 v2 v3 v4 v5 v6 v7 = du744 v7
du744 :: T724 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du744 v0
  = let v1 = d736 (coe v0) in coe (d86 (coe (d494 (coe v1))))
name746
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-cong"
d746 ::
  T724 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d746 v0 = coe (d88 (coe (d494 (coe (d736 (coe v0))))))
name748
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-cong"
d748 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T724 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d748 v0 v1 v2 v3 v4 v5 v6 v7 = du748 v7
du748 ::
  T724 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du748 v0
  = let v1 = d736 (coe v0) in coe (d88 (coe (d494 (coe v1))))
name750
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-isSemigroup"
d750 :: T724 -> T74
d750 v0 = coe (d494 (coe (d736 (coe v0))))
name752
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-isSemigroup"
d752 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T724 -> T74
d752 v0 v1 v2 v3 v4 v5 v6 v7 = du752 v7
du752 :: T724 -> T74
du752 v0 = let v1 = d736 (coe v0) in coe (d494 (coe v1))
name754
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.assoc"
d754 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T724 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d754 v0 v1 v2 v3 v4 v5 v6 v7 = du754 v7
du754 :: T724 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du754 v0
  = let v1 = d736 (coe v0) in
    coe (d86 (coe (d190 (coe (d492 (coe v1))))))
name756
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.comm"
d756 :: T724 -> AgdaAny -> AgdaAny -> AgdaAny
d756 v0 = coe (d194 (coe (d492 (coe (d736 (coe v0))))))
name758
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-cong"
d758 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T724 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d758 v0 v1 v2 v3 v4 v5 v6 v7 = du758 v7
du758 ::
  T724 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du758 v0
  = let v1 = d736 (coe v0) in
    coe (d88 (coe (d190 (coe (d492 (coe v1))))))
name760
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.identity"
d760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T724 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d760 v0 v1 v2 v3 v4 v5 v6 v7 = du760 v4 v6 v7
du760 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T724 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du760 v0 v1 v2
  = let v3 = d736 (coe v2) in
    coe (du216 (coe v0) (coe v1) (coe (d492 (coe v3))))
name762
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.identityʳ"
d762 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T724 -> AgdaAny -> AgdaAny
d762 v0 v1 v2 v3 v4 v5 v6 v7 = du762 v4 v6 v7
du762 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T724 -> AgdaAny -> AgdaAny
du762 v0 v1 v2
  = let v3 = d736 (coe v2) in
    let v4 = du516 (coe v0) (coe v1) (coe v3) in
    let v5 = d430 (coe v4) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d150 (coe v5))))
name764
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.identityˡ"
d764 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T724 -> AgdaAny -> AgdaAny
d764 v0 v1 v2 v3 v4 v5 v6 v7 = du764 v4 v6 v7
du764 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T724 -> AgdaAny -> AgdaAny
du764 v0 v1 v2
  = let v3 = d736 (coe v2) in
    let v4 = du516 (coe v0) (coe v1) (coe v3) in
    let v5 = d430 (coe v4) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d150 (coe v5))))
name766
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.+-isCommutativeMonoid"
d766 :: T724 -> T178
d766 v0 = coe (d492 (coe (d736 (coe v0))))
name768
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isMonoid"
d768 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T724 -> T138
d768 v0 v1 v2 v3 v4 v5 v6 v7 = du768 v4 v6 v7
du768 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T724 -> T138
du768 v0 v1 v2
  = let v3 = d736 (coe v2) in
    coe (du218 (coe v0) (coe v1) (coe (d492 (coe v3))))
name770
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isSemigroup"
d770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T724 -> T74
d770 v0 v1 v2 v3 v4 v5 v6 v7 = du770 v7
du770 :: T724 -> T74
du770 v0
  = let v1 = d736 (coe v0) in coe (d190 (coe (d492 (coe v1))))
name772
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.distrib"
d772 :: T724 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d772 v0 = coe (d496 (coe (d736 (coe v0))))
name774
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.distribʳ"
d774 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T724 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d774 v0 v1 v2 v3 v4 v5 v6 v7 = du774 v7
du774 :: T724 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du774 v0
  = let v1 = d736 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d496 (coe v1))))
name776
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isEquivalence"
d776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T724 -> MAlonzo.Code.Relation.Binary.Core.T578
d776 v0 v1 v2 v3 v4 v5 v6 v7 = du776 v7
du776 :: T724 -> MAlonzo.Code.Relation.Binary.Core.T578
du776 v0
  = let v1 = d736 (coe v0) in
    coe (d84 (coe (d190 (coe (d492 (coe v1))))))
name778
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.isNearSemiring"
d778 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T724 -> T414
d778 v0 v1 v2 v3 v4 v5 v6 v7 = du778 v4 v6 v7
du778 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T724 -> T414
du778 v0 v1 v2
  = coe (du516 (coe v0) (coe v1) (coe (d736 (coe v2))))
name780
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.refl"
d780 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T724 -> AgdaAny -> AgdaAny
d780 v0 v1 v2 v3 v4 v5 v6 v7 = du780 v7
du780 :: T724 -> AgdaAny -> AgdaAny
du780 v0
  = let v1 = d736 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d84 (coe (d190 (coe (d492 (coe v1))))))))
name782
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.reflexive"
d782 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T724 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d782 v0 v1 v2 v3 v4 v5 v6 v7 = du782 v4 v6 v7
du782 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T724 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du782 v0 v1 v2
  = let v3 = d736 (coe v2) in
    let v4 = du516 (coe v0) (coe v1) (coe v3) in
    let v5 = d430 (coe v4) in
    let v6 = d148 (coe v5) in
    coe
      (\ v7 v8 v9 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v6))) v7)
name784
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.setoid"
d784 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T724 -> MAlonzo.Code.Relation.Binary.T128
d784 v0 v1 v2 v3 v4 v5 v6 v7 = du784 v4 v6 v7
du784 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T724 -> MAlonzo.Code.Relation.Binary.T128
du784 v0 v1 v2
  = let v3 = d736 (coe v2) in
    let v4 = du516 (coe v0) (coe v1) (coe v3) in
    let v5 = d430 (coe v4) in coe (du90 (coe (d148 (coe v5))))
name786
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.sym"
d786 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T724 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d786 v0 v1 v2 v3 v4 v5 v6 v7 = du786 v7
du786 :: T724 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du786 v0
  = let v1 = d736 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d84 (coe (d190 (coe (d492 (coe v1))))))))
name788
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.trans"
d788 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T724 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d788 v0 v1 v2 v3 v4 v5 v6 v7 = du788 v7
du788 ::
  T724 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du788 v0
  = let v1 = d736 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d84 (coe (d190 (coe (d492 (coe v1))))))))
name790
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.zero"
d790 :: T724 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d790 v0 = coe (d498 (coe (d736 (coe v0))))
name792
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.zeroʳ"
d792 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T724 -> AgdaAny -> AgdaAny
d792 v0 v1 v2 v3 v4 v5 v6 v7 = du792 v7
du792 :: T724 -> AgdaAny -> AgdaAny
du792 v0
  = let v1 = d736 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d498 (coe v1))))
name794
  = "Algebra.Structures.IsCommutativeSemiringWithoutOne._.zeroˡ"
d794 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T724 -> AgdaAny -> AgdaAny
d794 v0 v1 v2 v3 v4 v5 v6 v7 = du794 v7
du794 :: T724 -> AgdaAny -> AgdaAny
du794 v0
  = let v1 = d736 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d498 (coe v1))))
name804 = "Algebra.Structures.IsCommutativeSemiring"
d804 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T804
  = C8117 T178 T178 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny)
name822
  = "Algebra.Structures.IsCommutativeSemiring.+-isCommutativeMonoid"
d822 :: T804 -> T178
d822 v0
  = case coe v0 of
      C8117 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name824
  = "Algebra.Structures.IsCommutativeSemiring.*-isCommutativeMonoid"
d824 :: T804 -> T178
d824 v0
  = case coe v0 of
      C8117 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name826 = "Algebra.Structures.IsCommutativeSemiring.distribʳ"
d826 :: T804 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d826 v0
  = case coe v0 of
      C8117 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name828 = "Algebra.Structures.IsCommutativeSemiring.zeroˡ"
d828 :: T804 -> AgdaAny -> AgdaAny
d828 v0
  = case coe v0 of
      C8117 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name832 = "Algebra.Structures.IsCommutativeSemiring.+-CM.assoc"
d832 :: T804 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d832 v0 = coe (d86 (coe (d190 (coe (d822 (coe v0))))))
name834 = "Algebra.Structures.IsCommutativeSemiring.+-CM.comm"
d834 :: T804 -> AgdaAny -> AgdaAny -> AgdaAny
d834 v0 = coe (d194 (coe (d822 (coe v0))))
name836 = "Algebra.Structures.IsCommutativeSemiring.+-CM.identity"
d836 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d836 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du836 v4 v6 v8
du836 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T804 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du836 v0 v1 v2
  = coe (du216 (coe v0) (coe v1) (coe (d822 (coe v2))))
name838 = "Algebra.Structures.IsCommutativeSemiring.+-CM.identityʳ"
d838 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> AgdaAny -> AgdaAny
d838 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du838 v4 v6 v8
du838 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T804 -> AgdaAny -> AgdaAny
du838 v0 v1 v2
  = coe (du214 (coe v0) (coe v1) (coe (d822 (coe v2))))
name840 = "Algebra.Structures.IsCommutativeSemiring.+-CM.identityˡ"
d840 :: T804 -> AgdaAny -> AgdaAny
d840 v0 = coe (d192 (coe (d822 (coe v0))))
name842
  = "Algebra.Structures.IsCommutativeSemiring.+-CM.isEquivalence"
d842 :: T804 -> MAlonzo.Code.Relation.Binary.Core.T578
d842 v0 = coe (d84 (coe (d190 (coe (d822 (coe v0))))))
name844 = "Algebra.Structures.IsCommutativeSemiring.+-CM.isMonoid"
d844 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T138
d844 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du844 v4 v6 v8
du844 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T804 -> T138
du844 v0 v1 v2
  = coe (du218 (coe v0) (coe v1) (coe (d822 (coe v2))))
name846
  = "Algebra.Structures.IsCommutativeSemiring.+-CM.isSemigroup"
d846 :: T804 -> T74
d846 v0 = coe (d190 (coe (d822 (coe v0))))
name848 = "Algebra.Structures.IsCommutativeSemiring.+-CM.refl"
d848 :: T804 -> AgdaAny -> AgdaAny
d848 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d84 (coe (d190 (coe (d822 (coe v0))))))))
name850 = "Algebra.Structures.IsCommutativeSemiring.+-CM.reflexive"
d850 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T804 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d850 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du850 v8
du850 ::
  T804 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du850 v0
  = let v1 = d822 (coe v0) in
    let v2 = d190 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v2))) v3)
name852 = "Algebra.Structures.IsCommutativeSemiring.+-CM.setoid"
d852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> MAlonzo.Code.Relation.Binary.T128
d852 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du852 v8
du852 :: T804 -> MAlonzo.Code.Relation.Binary.T128
du852 v0
  = let v1 = d822 (coe v0) in coe (du90 (coe (d190 (coe v1))))
name854 = "Algebra.Structures.IsCommutativeSemiring.+-CM.sym"
d854 :: T804 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d854 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d84 (coe (d190 (coe (d822 (coe v0))))))))
name856 = "Algebra.Structures.IsCommutativeSemiring.+-CM.trans"
d856 ::
  T804 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d856 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d84 (coe (d190 (coe (d822 (coe v0))))))))
name858 = "Algebra.Structures.IsCommutativeSemiring.+-CM.∙-cong"
d858 ::
  T804 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d858 v0 = coe (d88 (coe (d190 (coe (d822 (coe v0))))))
name862 = "Algebra.Structures.IsCommutativeSemiring.*-CM.assoc"
d862 :: T804 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d862 v0 = coe (d86 (coe (d190 (coe (d824 (coe v0))))))
name864 = "Algebra.Structures.IsCommutativeSemiring.*-CM.comm"
d864 :: T804 -> AgdaAny -> AgdaAny -> AgdaAny
d864 v0 = coe (d194 (coe (d824 (coe v0))))
name866 = "Algebra.Structures.IsCommutativeSemiring.*-CM.identity"
d866 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d866 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du866 v5 v7 v8
du866 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T804 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du866 v0 v1 v2
  = coe (du216 (coe v0) (coe v1) (coe (d824 (coe v2))))
name868 = "Algebra.Structures.IsCommutativeSemiring.*-CM.identityʳ"
d868 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> AgdaAny -> AgdaAny
d868 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du868 v5 v7 v8
du868 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T804 -> AgdaAny -> AgdaAny
du868 v0 v1 v2
  = coe (du214 (coe v0) (coe v1) (coe (d824 (coe v2))))
name870 = "Algebra.Structures.IsCommutativeSemiring.*-CM.identityˡ"
d870 :: T804 -> AgdaAny -> AgdaAny
d870 v0 = coe (d192 (coe (d824 (coe v0))))
name872
  = "Algebra.Structures.IsCommutativeSemiring.*-CM.isEquivalence"
d872 :: T804 -> MAlonzo.Code.Relation.Binary.Core.T578
d872 v0 = coe (d84 (coe (d190 (coe (d824 (coe v0))))))
name874 = "Algebra.Structures.IsCommutativeSemiring.*-CM.isMonoid"
d874 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T138
d874 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du874 v5 v7 v8
du874 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T804 -> T138
du874 v0 v1 v2
  = coe (du218 (coe v0) (coe v1) (coe (d824 (coe v2))))
name876
  = "Algebra.Structures.IsCommutativeSemiring.*-CM.isSemigroup"
d876 :: T804 -> T74
d876 v0 = coe (d190 (coe (d824 (coe v0))))
name878 = "Algebra.Structures.IsCommutativeSemiring.*-CM.refl"
d878 :: T804 -> AgdaAny -> AgdaAny
d878 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d84 (coe (d190 (coe (d824 (coe v0))))))))
name880 = "Algebra.Structures.IsCommutativeSemiring.*-CM.reflexive"
d880 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T804 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d880 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du880 v8
du880 ::
  T804 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du880 v0
  = let v1 = d824 (coe v0) in
    let v2 = d190 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v2))) v3)
name882 = "Algebra.Structures.IsCommutativeSemiring.*-CM.setoid"
d882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> MAlonzo.Code.Relation.Binary.T128
d882 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du882 v8
du882 :: T804 -> MAlonzo.Code.Relation.Binary.T128
du882 v0
  = let v1 = d824 (coe v0) in coe (du90 (coe (d190 (coe v1))))
name884 = "Algebra.Structures.IsCommutativeSemiring.*-CM.sym"
d884 :: T804 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d884 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d84 (coe (d190 (coe (d824 (coe v0))))))))
name886 = "Algebra.Structures.IsCommutativeSemiring.*-CM.trans"
d886 ::
  T804 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d886 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d84 (coe (d190 (coe (d824 (coe v0))))))))
name888 = "Algebra.Structures.IsCommutativeSemiring.*-CM.∙-cong"
d888 ::
  T804 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d888 v0 = coe (d88 (coe (d190 (coe (d824 (coe v0))))))
name890 = "Algebra.Structures.IsCommutativeSemiring.distribˡ"
d890 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T804 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d890 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du890 v4 v5 v8
du890 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T804 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du890 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du370
         (coe (du90 (coe (d190 (coe (d822 (coe v2))))))) (coe v1) (coe v0)
         (coe (d88 (coe (d190 (coe (d822 (coe v2)))))))
         (coe (d194 (coe (d824 (coe v2))))) (coe (d826 (coe v2))))
name892 = "Algebra.Structures.IsCommutativeSemiring.distrib"
d892 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d892 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du892 v4 v5 v8
du892 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T804 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du892 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du890 (coe v0) (coe v1) (coe v2))) (coe (d826 (coe v2))))
name894 = "Algebra.Structures.IsCommutativeSemiring.zeroʳ"
d894 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> AgdaAny -> AgdaAny
d894 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du894 v5 v6 v8
du894 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T804 -> AgdaAny -> AgdaAny
du894 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du148
         (coe (du90 (coe (d190 (coe (d822 (coe v2))))))) (coe v0)
         (coe (d194 (coe (d824 (coe v2))))) (coe v1) (coe (d828 (coe v2))))
name896 = "Algebra.Structures.IsCommutativeSemiring.zero"
d896 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d896 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du896 v5 v6 v8
du896 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T804 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du896 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (d828 (coe v2))) (coe (du894 (coe v0) (coe v1) (coe v2))))
name898 = "Algebra.Structures.IsCommutativeSemiring.isSemiring"
d898 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T638
d898 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du898 v4 v5 v6 v7 v8
du898 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T638
du898 v0 v1 v2 v3 v4
  = coe
      (C6477
         (coe
            (C5489
               (coe (d822 (coe v4)))
               (coe (du218 (coe v1) (coe v3) (coe (d824 (coe v4)))))
               (coe (du892 (coe v0) (coe v1) (coe v4)))))
         (coe (du896 (coe v1) (coe v2) (coe v4))))
name902 = "Algebra.Structures.IsCommutativeSemiring._.assoc"
d902 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T804 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d902 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du902 v8
du902 :: T804 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du902 v0 = coe (d86 (coe (d190 (coe (d824 (coe v0))))))
name904 = "Algebra.Structures.IsCommutativeSemiring._.∙-cong"
d904 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T804 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d904 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du904 v8
du904 ::
  T804 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du904 v0 = coe (d88 (coe (d190 (coe (d824 (coe v0))))))
name906 = "Algebra.Structures.IsCommutativeSemiring._.identity"
d906 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d906 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du906 v5 v7 v8
du906 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T804 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du906 v0 v1 v2
  = coe (du216 (coe v0) (coe v1) (coe (d824 (coe v2))))
name908 = "Algebra.Structures.IsCommutativeSemiring._.identityʳ"
d908 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> AgdaAny -> AgdaAny
d908 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du908 v4 v5 v6 v7 v8
du908 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> AgdaAny -> AgdaAny
du908 v0 v1 v2 v3 v4
  = let v5 = du898 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d652 (coe v5) in
    let v7 = d578 (coe v6) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d150 (coe v7))))
name910 = "Algebra.Structures.IsCommutativeSemiring._.identityˡ"
d910 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> AgdaAny -> AgdaAny
d910 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du910 v4 v5 v6 v7 v8
du910 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> AgdaAny -> AgdaAny
du910 v0 v1 v2 v3 v4
  = let v5 = du898 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d652 (coe v5) in
    let v7 = d578 (coe v6) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d150 (coe v7))))
name912 = "Algebra.Structures.IsCommutativeSemiring._.*-isMonoid"
d912 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T138
d912 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du912 v5 v7 v8
du912 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T804 -> T138
du912 v0 v1 v2
  = coe (du218 (coe v0) (coe v1) (coe (d824 (coe v2))))
name914 = "Algebra.Structures.IsCommutativeSemiring._.isSemigroup"
d914 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T74
d914 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du914 v8
du914 :: T804 -> T74
du914 v0 = coe (d190 (coe (d824 (coe v0))))
name916 = "Algebra.Structures.IsCommutativeSemiring._.assoc"
d916 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T804 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d916 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du916 v8
du916 :: T804 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du916 v0 = coe (d86 (coe (d190 (coe (d822 (coe v0))))))
name918 = "Algebra.Structures.IsCommutativeSemiring._.comm"
d918 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> AgdaAny -> AgdaAny -> AgdaAny
d918 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du918 v8
du918 :: T804 -> AgdaAny -> AgdaAny -> AgdaAny
du918 v0 = coe (d194 (coe (d822 (coe v0))))
name920 = "Algebra.Structures.IsCommutativeSemiring._.∙-cong"
d920 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T804 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d920 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du920 v8
du920 ::
  T804 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du920 v0 = coe (d88 (coe (d190 (coe (d822 (coe v0))))))
name922 = "Algebra.Structures.IsCommutativeSemiring._.identity"
d922 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d922 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du922 v4 v5 v6 v7 v8
du922 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du922 v0 v1 v2 v3 v4
  = let v5 = du898 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d652 (coe v5) in
    coe (du216 (coe v0) (coe v2) (coe (d576 (coe v6))))
name924 = "Algebra.Structures.IsCommutativeSemiring._.identityʳ"
d924 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> AgdaAny -> AgdaAny
d924 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du924 v4 v5 v6 v7 v8
du924 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> AgdaAny -> AgdaAny
du924 v0 v1 v2 v3 v4
  = let v5 = du898 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d652 (coe v5) in
    coe (du214 (coe v0) (coe v2) (coe (d576 (coe v6))))
name926 = "Algebra.Structures.IsCommutativeSemiring._.identityˡ"
d926 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> AgdaAny -> AgdaAny
d926 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du926 v8
du926 :: T804 -> AgdaAny -> AgdaAny
du926 v0 = coe (d192 (coe (d822 (coe v0))))
name928 = "Algebra.Structures.IsCommutativeSemiring._.isMonoid"
d928 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T138
d928 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du928 v4 v5 v6 v7 v8
du928 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T138
du928 v0 v1 v2 v3 v4
  = let v5 = du898 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d652 (coe v5) in
    coe (du218 (coe v0) (coe v2) (coe (d576 (coe v6))))
name930 = "Algebra.Structures.IsCommutativeSemiring._.isSemigroup"
d930 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T74
d930 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du930 v8
du930 :: T804 -> T74
du930 v0 = coe (d190 (coe (d822 (coe v0))))
name932
  = "Algebra.Structures.IsCommutativeSemiring._.isEquivalence"
d932 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T804 -> MAlonzo.Code.Relation.Binary.Core.T578
d932 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du932 v8
du932 :: T804 -> MAlonzo.Code.Relation.Binary.Core.T578
du932 v0 = coe (d84 (coe (d190 (coe (d822 (coe v0))))))
name934
  = "Algebra.Structures.IsCommutativeSemiring._.isNearSemiring"
d934 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T414
d934 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du934 v4 v5 v6 v7 v8
du934 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T414
du934 v0 v1 v2 v3 v4
  = let v5 = du898 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe (du516 (coe v0) (coe v2) (coe (du708 (coe v5))))
name936
  = "Algebra.Structures.IsCommutativeSemiring._.isSemiringWithoutAnnihilatingZero"
d936 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T560
d936 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du936 v4 v5 v6 v7 v8
du936 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T560
du936 v0 v1 v2 v3 v4
  = coe
      (d652 (coe (du898 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))))
name938
  = "Algebra.Structures.IsCommutativeSemiring._.isSemiringWithoutOne"
d938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T476
d938 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du938 v4 v5 v6 v7 v8
du938 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T476
du938 v0 v1 v2 v3 v4
  = coe
      (du708 (coe (du898 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))))
name940 = "Algebra.Structures.IsCommutativeSemiring._.refl"
d940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> AgdaAny -> AgdaAny
d940 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du940 v8
du940 :: T804 -> AgdaAny -> AgdaAny
du940 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d84 (coe (d190 (coe (d822 (coe v0))))))))
name942 = "Algebra.Structures.IsCommutativeSemiring._.reflexive"
d942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T804 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d942 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du942 v4 v5 v6 v7 v8
du942 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T804 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du942 v0 v1 v2 v3 v4
  = let v5 = du898 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d652 (coe v5) in
    let v7 = d576 (coe v6) in
    let v8 = d190 (coe v7) in
    coe
      (\ v9 v10 v11 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v8))) v9)
name944 = "Algebra.Structures.IsCommutativeSemiring._.setoid"
d944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> MAlonzo.Code.Relation.Binary.T128
d944 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du944 v4 v5 v6 v7 v8
du944 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> MAlonzo.Code.Relation.Binary.T128
du944 v0 v1 v2 v3 v4
  = let v5 = du898 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d652 (coe v5) in
    let v7 = d576 (coe v6) in coe (du90 (coe (d190 (coe v7))))
name946 = "Algebra.Structures.IsCommutativeSemiring._.sym"
d946 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T804 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d946 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du946 v8
du946 :: T804 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du946 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d84 (coe (d190 (coe (d822 (coe v0))))))))
name948 = "Algebra.Structures.IsCommutativeSemiring._.trans"
d948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T804 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d948 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du948 v8
du948 ::
  T804 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du948 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d84 (coe (d190 (coe (d822 (coe v0))))))))
name950
  = "Algebra.Structures.IsCommutativeSemiring.isCommutativeSemiringWithoutOne"
d950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T724
d950 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du950 v4 v5 v6 v7 v8
du950 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T804 -> T724
du950 v0 v1 v2 v3 v4
  = coe
      (C7481
         (coe
            (du708 (coe (du898 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))))
         (coe (d194 (coe (d824 (coe v4))))))
name962 = "Algebra.Structures.IsRing"
d962 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T962 = C10327 T348 T138 MAlonzo.Code.Agda.Builtin.Sigma.T14
name980 = "Algebra.Structures.IsRing.+-isAbelianGroup"
d980 :: T962 -> T348
d980 v0
  = case coe v0 of
      C10327 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name982 = "Algebra.Structures.IsRing.*-isMonoid"
d982 :: T962 -> T138
d982 v0
  = case coe v0 of
      C10327 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name984 = "Algebra.Structures.IsRing.distrib"
d984 :: T962 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d984 v0
  = case coe v0 of
      C10327 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name988 = "Algebra.Structures.IsRing._._-_"
d988 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T962 -> AgdaAny -> AgdaAny -> AgdaAny
d988 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du988 v4 v6 v10 v11
du988 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du988 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
name990 = "Algebra.Structures.IsRing._.assoc"
d990 :: T962 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d990 v0
  = coe
      (d86 (coe (d148 (coe (d288 (coe (d360 (coe (d980 (coe v0))))))))))
name992 = "Algebra.Structures.IsRing._.comm"
d992 :: T962 -> AgdaAny -> AgdaAny -> AgdaAny
d992 v0 = coe (d362 (coe (d980 (coe v0))))
name994 = "Algebra.Structures.IsRing._.∙-cong"
d994 ::
  T962 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d994 v0
  = coe
      (d88 (coe (d148 (coe (d288 (coe (d360 (coe (d980 (coe v0))))))))))
name996 = "Algebra.Structures.IsRing._.identity"
d996 :: T962 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d996 v0
  = coe (d150 (coe (d288 (coe (d360 (coe (d980 (coe v0))))))))
name998 = "Algebra.Structures.IsRing._.identityʳ"
d998 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T962 -> AgdaAny -> AgdaAny
d998 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du998 v9
du998 :: T962 -> AgdaAny -> AgdaAny
du998 v0
  = let v1 = d980 (coe v0) in
    let v2 = d360 (coe v1) in
    let v3 = d288 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d150 (coe v3))))
name1000 = "Algebra.Structures.IsRing._.identityˡ"
d1000 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T962 -> AgdaAny -> AgdaAny
d1000 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1000 v9
du1000 :: T962 -> AgdaAny -> AgdaAny
du1000 v0
  = let v1 = d980 (coe v0) in
    let v2 = d360 (coe v1) in
    let v3 = d288 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d150 (coe v3))))
name1002 = "Algebra.Structures.IsRing._.isCommutativeMonoid"
d1002 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T962 -> T178
d1002 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1002 v9
du1002 :: T962 -> T178
du1002 v0 = coe (du406 (coe (d980 (coe v0))))
name1004 = "Algebra.Structures.IsRing._.isGroup"
d1004 :: T962 -> T274
d1004 v0 = coe (d360 (coe (d980 (coe v0))))
name1006 = "Algebra.Structures.IsRing._.isMonoid"
d1006 :: T962 -> T138
d1006 v0 = coe (d288 (coe (d360 (coe (d980 (coe v0))))))
name1008 = "Algebra.Structures.IsRing._.isSemigroup"
d1008 :: T962 -> T74
d1008 v0
  = coe (d148 (coe (d288 (coe (d360 (coe (d980 (coe v0))))))))
name1010 = "Algebra.Structures.IsRing._.⁻¹-cong"
d1010 :: T962 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1010 v0 = coe (d292 (coe (d360 (coe (d980 (coe v0))))))
name1012 = "Algebra.Structures.IsRing._.inverse"
d1012 :: T962 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1012 v0 = coe (d290 (coe (d360 (coe (d980 (coe v0))))))
name1014 = "Algebra.Structures.IsRing._.inverseʳ"
d1014 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T962 -> AgdaAny -> AgdaAny
d1014 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1014 v9
du1014 :: T962 -> AgdaAny -> AgdaAny
du1014 v0
  = let v1 = d980 (coe v0) in
    let v2 = d360 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d290 (coe v2))))
name1016 = "Algebra.Structures.IsRing._.inverseˡ"
d1016 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T962 -> AgdaAny -> AgdaAny
d1016 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1016 v9
du1016 :: T962 -> AgdaAny -> AgdaAny
du1016 v0
  = let v1 = d980 (coe v0) in
    let v2 = d360 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d290 (coe v2))))
name1018 = "Algebra.Structures.IsRing._.isEquivalence"
d1018 :: T962 -> MAlonzo.Code.Relation.Binary.Core.T578
d1018 v0
  = coe
      (d84 (coe (d148 (coe (d288 (coe (d360 (coe (d980 (coe v0))))))))))
name1020 = "Algebra.Structures.IsRing._.refl"
d1020 :: T962 -> AgdaAny -> AgdaAny
d1020 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (d84
               (coe (d148 (coe (d288 (coe (d360 (coe (d980 (coe v0))))))))))))
name1022 = "Algebra.Structures.IsRing._.reflexive"
d1022 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T962 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1022 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1022 v9
du1022 ::
  T962 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1022 v0
  = let v1 = d980 (coe v0) in
    let v2 = d360 (coe v1) in
    let v3 = d288 (coe v2) in
    let v4 = d148 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v4))) v5)
name1024 = "Algebra.Structures.IsRing._.setoid"
d1024 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T962 -> MAlonzo.Code.Relation.Binary.T128
d1024 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1024 v9
du1024 :: T962 -> MAlonzo.Code.Relation.Binary.T128
du1024 v0
  = let v1 = d980 (coe v0) in
    let v2 = d360 (coe v1) in
    let v3 = d288 (coe v2) in coe (du90 (coe (d148 (coe v3))))
name1026 = "Algebra.Structures.IsRing._.sym"
d1026 :: T962 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1026 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (d84
               (coe (d148 (coe (d288 (coe (d360 (coe (d980 (coe v0))))))))))))
name1028 = "Algebra.Structures.IsRing._.trans"
d1028 ::
  T962 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1028 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (d84
               (coe (d148 (coe (d288 (coe (d360 (coe (d980 (coe v0))))))))))))
name1030 = "Algebra.Structures.IsRing._.uniqueʳ-⁻¹"
d1030 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T962 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1030 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1030 v4 v6 v7 v9
du1030 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T962 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1030 v0 v1 v2 v3
  = let v4 = d980 (coe v3) in
    coe (du340 (coe v0) (coe v2) (coe v1) (coe (d360 (coe v4))))
name1032 = "Algebra.Structures.IsRing._.uniqueˡ-⁻¹"
d1032 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T962 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1032 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1032 v4 v6 v7 v9
du1032 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T962 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1032 v0 v1 v2 v3
  = let v4 = d980 (coe v3) in
    coe (du334 (coe v0) (coe v2) (coe v1) (coe (d360 (coe v4))))
name1036 = "Algebra.Structures.IsRing._.assoc"
d1036 :: T962 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1036 v0 = coe (d86 (coe (d148 (coe (d982 (coe v0))))))
name1038 = "Algebra.Structures.IsRing._.∙-cong"
d1038 ::
  T962 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1038 v0 = coe (d88 (coe (d148 (coe (d982 (coe v0))))))
name1040 = "Algebra.Structures.IsRing._.identity"
d1040 :: T962 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1040 v0 = coe (d150 (coe (d982 (coe v0))))
name1042 = "Algebra.Structures.IsRing._.identityʳ"
d1042 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T962 -> AgdaAny -> AgdaAny
d1042 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1042 v9
du1042 :: T962 -> AgdaAny -> AgdaAny
du1042 v0
  = let v1 = d982 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d150 (coe v1))))
name1044 = "Algebra.Structures.IsRing._.identityˡ"
d1044 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T962 -> AgdaAny -> AgdaAny
d1044 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1044 v9
du1044 :: T962 -> AgdaAny -> AgdaAny
du1044 v0
  = let v1 = d982 (coe v0) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d150 (coe v1))))
name1046 = "Algebra.Structures.IsRing._.isSemigroup"
d1046 :: T962 -> T74
d1046 v0 = coe (d148 (coe (d982 (coe v0))))
name1048 = "Algebra.Structures.IsRing.zeroˡ"
d1048 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T962 -> AgdaAny -> AgdaAny
d1048 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1048 v4 v5 v6 v7 v9
du1048 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T962 -> AgdaAny -> AgdaAny
du1048 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du184
         (let v5 = d360 (coe (d980 (coe v4))) in
          let v6 = d288 (coe v5) in coe (du90 (coe (d148 (coe v6)))))
         (coe v0) (coe v1) (coe v2) (coe v3)
         (coe
            (d88 (coe (d148 (coe (d288 (coe (d360 (coe (d980 (coe v4)))))))))))
         (coe (d88 (coe (d148 (coe (d982 (coe v4)))))))
         (coe
            (d86 (coe (d148 (coe (d288 (coe (d360 (coe (d980 (coe v4)))))))))))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d984 (coe v4)))))
         (let v5 = d360 (coe (d980 (coe v4))) in
          let v6 = d288 (coe v5) in
          coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d150 (coe v6)))))
         (let v5 = d360 (coe (d980 (coe v4))) in
          coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d290 (coe v5))))))
name1050 = "Algebra.Structures.IsRing.zeroʳ"
d1050 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T962 -> AgdaAny -> AgdaAny
d1050 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1050 v4 v5 v6 v7 v9
du1050 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T962 -> AgdaAny -> AgdaAny
du1050 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du216
         (let v5 = d360 (coe (d980 (coe v4))) in
          let v6 = d288 (coe v5) in coe (du90 (coe (d148 (coe v6)))))
         (coe v0) (coe v1) (coe v2) (coe v3)
         (coe
            (d88 (coe (d148 (coe (d288 (coe (d360 (coe (d980 (coe v4)))))))))))
         (coe (d88 (coe (d148 (coe (d982 (coe v4)))))))
         (coe
            (d86 (coe (d148 (coe (d288 (coe (d360 (coe (d980 (coe v4)))))))))))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d984 (coe v4)))))
         (let v5 = d360 (coe (d980 (coe v4))) in
          let v6 = d288 (coe v5) in
          coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d150 (coe v6)))))
         (let v5 = d360 (coe (d980 (coe v4))) in
          coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d290 (coe v5))))))
name1052 = "Algebra.Structures.IsRing.zero"
d1052 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T962 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1052 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1052 v4 v5 v6 v7 v9
du1052 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T962 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1052 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1048 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
         (coe (du1050 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))))
name1054
  = "Algebra.Structures.IsRing.isSemiringWithoutAnnihilatingZero"
d1054 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T962 -> T560
d1054 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1054 v9
du1054 :: T962 -> T560
du1054 v0
  = coe
      (C5489
         (coe (du406 (coe (d980 (coe v0))))) (coe (d982 (coe v0)))
         (coe (d984 (coe v0))))
name1056 = "Algebra.Structures.IsRing.isSemiring"
d1056 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T962 -> T638
d1056 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1056 v4 v5 v6 v7 v9
du1056 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T962 -> T638
du1056 v0 v1 v2 v3 v4
  = coe
      (C6477
         (coe (du1054 (coe v4)))
         (coe (du1052 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))))
name1060 = "Algebra.Structures.IsRing._.distribʳ"
d1060 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T962 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1060 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1060 v4 v5 v6 v7 v9
du1060 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T962 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1060 v0 v1 v2 v3 v4
  = let v5 = du1056 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d652 (coe v5) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d580 (coe v6))))
name1062 = "Algebra.Structures.IsRing._.distribˡ"
d1062 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T962 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1062 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1062 v4 v5 v6 v7 v9
du1062 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T962 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1062 v0 v1 v2 v3 v4
  = let v5 = du1056 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    let v6 = d652 (coe v5) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d580 (coe v6))))
name1064 = "Algebra.Structures.IsRing._.isNearSemiring"
d1064 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T962 -> T414
d1064 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1064 v4 v5 v6 v7 v9
du1064 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T962 -> T414
du1064 v0 v1 v2 v3 v4
  = let v5 = du1056 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe (du516 (coe v0) (coe v3) (coe (du708 (coe v5))))
name1066 = "Algebra.Structures.IsRing._.isSemiringWithoutOne"
d1066 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T962 -> T476
d1066 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1066 v4 v5 v6 v7 v9
du1066 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T962 -> T476
du1066 v0 v1 v2 v3 v4
  = coe
      (du708 (coe (du1056 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))))
name1078 = "Algebra.Structures.IsCommutativeRing"
d1078 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T1078 = C12309 T962 (AgdaAny -> AgdaAny -> AgdaAny)
name1094 = "Algebra.Structures.IsCommutativeRing.isRing"
d1094 :: T1078 -> T962
d1094 v0
  = case coe v0 of
      C12309 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1096 = "Algebra.Structures.IsCommutativeRing.*-comm"
d1096 :: T1078 -> AgdaAny -> AgdaAny -> AgdaAny
d1096 v0
  = case coe v0 of
      C12309 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1100 = "Algebra.Structures.IsCommutativeRing._._-_"
d1100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1078 -> AgdaAny -> AgdaAny -> AgdaAny
d1100 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1100 v4 v6 v10 v11
du1100 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1100 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
name1102 = "Algebra.Structures.IsCommutativeRing._.assoc"
d1102 :: T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1102 v0
  = coe (d86 (coe (d148 (coe (d982 (coe (d1094 (coe v0))))))))
name1104 = "Algebra.Structures.IsCommutativeRing._.∙-cong"
d1104 ::
  T1078 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1104 v0
  = coe (d88 (coe (d148 (coe (d982 (coe (d1094 (coe v0))))))))
name1106 = "Algebra.Structures.IsCommutativeRing._.identity"
d1106 :: T1078 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1106 v0 = coe (d150 (coe (d982 (coe (d1094 (coe v0))))))
name1108 = "Algebra.Structures.IsCommutativeRing._.identityʳ"
d1108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1078 -> AgdaAny -> AgdaAny
d1108 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1108 v9
du1108 :: T1078 -> AgdaAny -> AgdaAny
du1108 v0
  = let v1 = d1094 (coe v0) in
    let v2 = d982 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d150 (coe v2))))
name1110 = "Algebra.Structures.IsCommutativeRing._.identityˡ"
d1110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1078 -> AgdaAny -> AgdaAny
d1110 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1110 v9
du1110 :: T1078 -> AgdaAny -> AgdaAny
du1110 v0
  = let v1 = d1094 (coe v0) in
    let v2 = d982 (coe v1) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d150 (coe v2))))
name1112 = "Algebra.Structures.IsCommutativeRing._.*-isMonoid"
d1112 :: T1078 -> T138
d1112 v0 = coe (d982 (coe (d1094 (coe v0))))
name1114 = "Algebra.Structures.IsCommutativeRing._.isSemigroup"
d1114 :: T1078 -> T74
d1114 v0 = coe (d148 (coe (d982 (coe (d1094 (coe v0))))))
name1116 = "Algebra.Structures.IsCommutativeRing._.assoc"
d1116 :: T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1116 v0
  = coe
      (d86
         (coe
            (d148
               (coe (d288 (coe (d360 (coe (d980 (coe (d1094 (coe v0))))))))))))
name1118 = "Algebra.Structures.IsCommutativeRing._.comm"
d1118 :: T1078 -> AgdaAny -> AgdaAny -> AgdaAny
d1118 v0 = coe (d362 (coe (d980 (coe (d1094 (coe v0))))))
name1120 = "Algebra.Structures.IsCommutativeRing._.∙-cong"
d1120 ::
  T1078 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1120 v0
  = coe
      (d88
         (coe
            (d148
               (coe (d288 (coe (d360 (coe (d980 (coe (d1094 (coe v0))))))))))))
name1122 = "Algebra.Structures.IsCommutativeRing._.identity"
d1122 :: T1078 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1122 v0
  = coe
      (d150
         (coe (d288 (coe (d360 (coe (d980 (coe (d1094 (coe v0))))))))))
name1124 = "Algebra.Structures.IsCommutativeRing._.identityʳ"
d1124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1078 -> AgdaAny -> AgdaAny
d1124 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1124 v9
du1124 :: T1078 -> AgdaAny -> AgdaAny
du1124 v0
  = let v1 = d1094 (coe v0) in
    let v2 = d980 (coe v1) in
    let v3 = d360 (coe v2) in
    let v4 = d288 (coe v3) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d150 (coe v4))))
name1126 = "Algebra.Structures.IsCommutativeRing._.identityˡ"
d1126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1078 -> AgdaAny -> AgdaAny
d1126 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1126 v9
du1126 :: T1078 -> AgdaAny -> AgdaAny
du1126 v0
  = let v1 = d1094 (coe v0) in
    let v2 = d980 (coe v1) in
    let v3 = d360 (coe v2) in
    let v4 = d288 (coe v3) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d150 (coe v4))))
name1128
  = "Algebra.Structures.IsCommutativeRing._.+-isAbelianGroup"
d1128 :: T1078 -> T348
d1128 v0 = coe (d980 (coe (d1094 (coe v0))))
name1130
  = "Algebra.Structures.IsCommutativeRing._.isCommutativeMonoid"
d1130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1078 -> T178
d1130 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1130 v9
du1130 :: T1078 -> T178
du1130 v0
  = let v1 = d1094 (coe v0) in coe (du406 (coe (d980 (coe v1))))
name1132 = "Algebra.Structures.IsCommutativeRing._.isGroup"
d1132 :: T1078 -> T274
d1132 v0 = coe (d360 (coe (d980 (coe (d1094 (coe v0))))))
name1134 = "Algebra.Structures.IsCommutativeRing._.isMonoid"
d1134 :: T1078 -> T138
d1134 v0
  = coe (d288 (coe (d360 (coe (d980 (coe (d1094 (coe v0))))))))
name1136 = "Algebra.Structures.IsCommutativeRing._.isSemigroup"
d1136 :: T1078 -> T74
d1136 v0
  = coe
      (d148
         (coe (d288 (coe (d360 (coe (d980 (coe (d1094 (coe v0))))))))))
name1138 = "Algebra.Structures.IsCommutativeRing._.⁻¹-cong"
d1138 :: T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1138 v0
  = coe (d292 (coe (d360 (coe (d980 (coe (d1094 (coe v0))))))))
name1140 = "Algebra.Structures.IsCommutativeRing._.inverse"
d1140 :: T1078 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1140 v0
  = coe (d290 (coe (d360 (coe (d980 (coe (d1094 (coe v0))))))))
name1142 = "Algebra.Structures.IsCommutativeRing._.inverseʳ"
d1142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1078 -> AgdaAny -> AgdaAny
d1142 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1142 v9
du1142 :: T1078 -> AgdaAny -> AgdaAny
du1142 v0
  = let v1 = d1094 (coe v0) in
    let v2 = d980 (coe v1) in
    let v3 = d360 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d290 (coe v3))))
name1144 = "Algebra.Structures.IsCommutativeRing._.inverseˡ"
d1144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1078 -> AgdaAny -> AgdaAny
d1144 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1144 v9
du1144 :: T1078 -> AgdaAny -> AgdaAny
du1144 v0
  = let v1 = d1094 (coe v0) in
    let v2 = d980 (coe v1) in
    let v3 = d360 (coe v2) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d290 (coe v3))))
name1146 = "Algebra.Structures.IsCommutativeRing._.distrib"
d1146 :: T1078 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1146 v0 = coe (d984 (coe (d1094 (coe v0))))
name1148 = "Algebra.Structures.IsCommutativeRing._.distribʳ"
d1148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1148 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1148 v4 v5 v6 v7 v9
du1148 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1148 v0 v1 v2 v3 v4
  = let v5 = d1094 (coe v4) in
    let v6 = du1056 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    let v7 = d652 (coe v6) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d580 (coe v7))))
name1150 = "Algebra.Structures.IsCommutativeRing._.distribˡ"
d1150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1150 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1150 v4 v5 v6 v7 v9
du1150 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1150 v0 v1 v2 v3 v4
  = let v5 = d1094 (coe v4) in
    let v6 = du1056 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    let v7 = d652 (coe v6) in
    coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d580 (coe v7))))
name1152 = "Algebra.Structures.IsCommutativeRing._.isEquivalence"
d1152 :: T1078 -> MAlonzo.Code.Relation.Binary.Core.T578
d1152 v0
  = coe
      (d84
         (coe
            (d148
               (coe (d288 (coe (d360 (coe (d980 (coe (d1094 (coe v0))))))))))))
name1154 = "Algebra.Structures.IsCommutativeRing._.isNearSemiring"
d1154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1078 -> T414
d1154 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1154 v4 v5 v6 v7 v9
du1154 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1078 -> T414
du1154 v0 v1 v2 v3 v4
  = let v5 = d1094 (coe v4) in
    let v6 = du1056 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    coe (du516 (coe v0) (coe v3) (coe (du708 (coe v6))))
name1156 = "Algebra.Structures.IsCommutativeRing._.isSemiring"
d1156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1078 -> T638
d1156 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1156 v4 v5 v6 v7 v9
du1156 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1078 -> T638
du1156 v0 v1 v2 v3 v4
  = coe
      (du1056 (coe v0) (coe v1) (coe v2) (coe v3) (coe (d1094 (coe v4))))
name1158
  = "Algebra.Structures.IsCommutativeRing._.isSemiringWithoutAnnihilatingZero"
d1158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1078 -> T560
d1158 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1158 v9
du1158 :: T1078 -> T560
du1158 v0 = coe (du1054 (coe (d1094 (coe v0))))
name1160
  = "Algebra.Structures.IsCommutativeRing._.isSemiringWithoutOne"
d1160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1078 -> T476
d1160 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1160 v4 v5 v6 v7 v9
du1160 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1078 -> T476
du1160 v0 v1 v2 v3 v4
  = let v5 = d1094 (coe v4) in
    coe
      (du708 (coe (du1056 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5))))
name1162 = "Algebra.Structures.IsCommutativeRing._.refl"
d1162 :: T1078 -> AgdaAny -> AgdaAny
d1162 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (d84
               (coe
                  (d148
                     (coe (d288 (coe (d360 (coe (d980 (coe (d1094 (coe v0))))))))))))))
name1164 = "Algebra.Structures.IsCommutativeRing._.reflexive"
d1164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1078 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1164 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1164 v9
du1164 ::
  T1078 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1164 v0
  = let v1 = d1094 (coe v0) in
    let v2 = d980 (coe v1) in
    let v3 = d360 (coe v2) in
    let v4 = d288 (coe v3) in
    let v5 = d148 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v5))) v6)
name1166 = "Algebra.Structures.IsCommutativeRing._.setoid"
d1166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1078 -> MAlonzo.Code.Relation.Binary.T128
d1166 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1166 v9
du1166 :: T1078 -> MAlonzo.Code.Relation.Binary.T128
du1166 v0
  = let v1 = d1094 (coe v0) in
    let v2 = d980 (coe v1) in
    let v3 = d360 (coe v2) in
    let v4 = d288 (coe v3) in coe (du90 (coe (d148 (coe v4))))
name1168 = "Algebra.Structures.IsCommutativeRing._.sym"
d1168 :: T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1168 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (d84
               (coe
                  (d148
                     (coe (d288 (coe (d360 (coe (d980 (coe (d1094 (coe v0))))))))))))))
name1170 = "Algebra.Structures.IsCommutativeRing._.trans"
d1170 ::
  T1078 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1170 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (d84
               (coe
                  (d148
                     (coe (d288 (coe (d360 (coe (d980 (coe (d1094 (coe v0))))))))))))))
name1172 = "Algebra.Structures.IsCommutativeRing._.uniqueʳ-⁻¹"
d1172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1172 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1172 v4 v6 v7 v9
du1172 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1172 v0 v1 v2 v3
  = let v4 = d1094 (coe v3) in
    let v5 = d980 (coe v4) in
    coe (du340 (coe v0) (coe v2) (coe v1) (coe (d360 (coe v5))))
name1174 = "Algebra.Structures.IsCommutativeRing._.uniqueˡ-⁻¹"
d1174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1174 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1174 v4 v6 v7 v9
du1174 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1078 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1174 v0 v1 v2 v3
  = let v4 = d1094 (coe v3) in
    let v5 = d980 (coe v4) in
    coe (du334 (coe v0) (coe v2) (coe v1) (coe (d360 (coe v5))))
name1176 = "Algebra.Structures.IsCommutativeRing._.zero"
d1176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1078 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1176 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1176 v4 v5 v6 v7 v9
du1176 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1078 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1176 v0 v1 v2 v3 v4
  = coe
      (du1052 (coe v0) (coe v1) (coe v2) (coe v3) (coe (d1094 (coe v4))))
name1178 = "Algebra.Structures.IsCommutativeRing._.zeroʳ"
d1178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1078 -> AgdaAny -> AgdaAny
d1178 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1178 v4 v5 v6 v7 v9
du1178 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1078 -> AgdaAny -> AgdaAny
du1178 v0 v1 v2 v3 v4
  = coe
      (du1050 (coe v0) (coe v1) (coe v2) (coe v3) (coe (d1094 (coe v4))))
name1180 = "Algebra.Structures.IsCommutativeRing._.zeroˡ"
d1180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1078 -> AgdaAny -> AgdaAny
d1180 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1180 v4 v5 v6 v7 v9
du1180 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1078 -> AgdaAny -> AgdaAny
du1180 v0 v1 v2 v3 v4
  = coe
      (du1048 (coe v0) (coe v1) (coe v2) (coe v3) (coe (d1094 (coe v4))))
name1182
  = "Algebra.Structures.IsCommutativeRing.isCommutativeSemiring"
d1182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1078 -> T804
d1182 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1182 v4 v5 v6 v7 v9
du1182 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1078 -> T804
du1182 v0 v1 v2 v3 v4
  = coe
      (C8117
         (coe (du406 (coe (d980 (coe (d1094 (coe v4)))))))
         (coe
            (C1223
               (coe (d148 (coe (d982 (coe (d1094 (coe v4)))))))
               (let v5 = d982 (coe (d1094 (coe v4))) in
                coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d150 (coe v5)))))
               (coe (d1096 (coe v4)))))
         (coe
            (MAlonzo.Code.Agda.Builtin.Sigma.d30
               (coe (d984 (coe (d1094 (coe v4)))))))
         (coe
            (MAlonzo.Code.Agda.Builtin.Sigma.d28
               (coe
                  (du1052
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe (d1094 (coe v4))))))))
name1186
  = "Algebra.Structures.IsCommutativeRing._.*-isCommutativeMonoid"
d1186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1078 -> T178
d1186 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1186 v4 v5 v6 v7 v9
du1186 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1078 -> T178
du1186 v0 v1 v2 v3 v4
  = coe
      (d824 (coe (du1182 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))))
name1188
  = "Algebra.Structures.IsCommutativeRing._.isCommutativeSemiringWithoutOne"
d1188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1078 -> T724
d1188 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1188 v4 v5 v6 v7 v8 v9
du1188 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1078 -> T724
du1188 v0 v1 v2 v3 v4 v5
  = coe
      (du950
         (coe v0) (coe v1) (coe v3) (coe v4)
         (coe (du1182 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5))))
name1192 = "Algebra.Structures.IsSemilattice"
d1192 a0 a1 a2 a3 a4 = ()
data T1192 = C13859 T104 (AgdaAny -> AgdaAny -> AgdaAny)
name1200 = "Algebra.Structures.IsSemilattice.isBand"
d1200 :: T1192 -> T104
d1200 v0
  = case coe v0 of
      C13859 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1202 = "Algebra.Structures.IsSemilattice.comm"
d1202 :: T1192 -> AgdaAny -> AgdaAny -> AgdaAny
d1202 v0
  = case coe v0 of
      C13859 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1206 = "Algebra.Structures.IsSemilattice._.assoc"
d1206 :: T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1206 v0 = coe (d86 (coe (d112 (coe (d1200 (coe v0))))))
name1208 = "Algebra.Structures.IsSemilattice._.idem"
d1208 :: T1192 -> AgdaAny -> AgdaAny
d1208 v0 = coe (d114 (coe (d1200 (coe v0))))
name1210 = "Algebra.Structures.IsSemilattice._.isEquivalence"
d1210 :: T1192 -> MAlonzo.Code.Relation.Binary.Core.T578
d1210 v0 = coe (d84 (coe (d112 (coe (d1200 (coe v0))))))
name1212 = "Algebra.Structures.IsSemilattice._.isSemigroup"
d1212 :: T1192 -> T74
d1212 v0 = coe (d112 (coe (d1200 (coe v0))))
name1214 = "Algebra.Structures.IsSemilattice._.refl"
d1214 :: T1192 -> AgdaAny -> AgdaAny
d1214 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d84 (coe (d112 (coe (d1200 (coe v0))))))))
name1216 = "Algebra.Structures.IsSemilattice._.reflexive"
d1216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1192 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1216 v0 v1 v2 v3 v4 v5 = du1216 v5
du1216 ::
  T1192 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1216 v0
  = let v1 = d1200 (coe v0) in
    let v2 = d112 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d84 (coe v2))) v3)
name1218 = "Algebra.Structures.IsSemilattice._.setoid"
d1218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1192 -> MAlonzo.Code.Relation.Binary.T128
d1218 v0 v1 v2 v3 v4 v5 = du1218 v5
du1218 :: T1192 -> MAlonzo.Code.Relation.Binary.T128
du1218 v0
  = let v1 = d1200 (coe v0) in coe (du90 (coe (d112 (coe v1))))
name1220 = "Algebra.Structures.IsSemilattice._.sym"
d1220 :: T1192 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1220 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d84 (coe (d112 (coe (d1200 (coe v0))))))))
name1222 = "Algebra.Structures.IsSemilattice._.trans"
d1222 ::
  T1192 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1222 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d84 (coe (d112 (coe (d1200 (coe v0))))))))
name1224 = "Algebra.Structures.IsSemilattice._.∙-cong"
d1224 ::
  T1192 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1224 v0 = coe (d88 (coe (d112 (coe (d1200 (coe v0))))))
name1230 = "Algebra.Structures.IsLattice"
d1230 a0 a1 a2 a3 a4 a5 = ()
data T1230
  = C14145 MAlonzo.Code.Relation.Binary.Core.T578
           (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny ->
            AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny ->
            AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
           MAlonzo.Code.Agda.Builtin.Sigma.T14
name1252 = "Algebra.Structures.IsLattice.isEquivalence"
d1252 :: T1230 -> MAlonzo.Code.Relation.Binary.Core.T578
d1252 v0
  = case coe v0 of
      C14145 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1254 = "Algebra.Structures.IsLattice.∨-comm"
d1254 :: T1230 -> AgdaAny -> AgdaAny -> AgdaAny
d1254 v0
  = case coe v0 of
      C14145 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1256 = "Algebra.Structures.IsLattice.∨-assoc"
d1256 :: T1230 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1256 v0
  = case coe v0 of
      C14145 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1258 = "Algebra.Structures.IsLattice.∨-cong"
d1258 ::
  T1230 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1258 v0
  = case coe v0 of
      C14145 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1260 = "Algebra.Structures.IsLattice.∧-comm"
d1260 :: T1230 -> AgdaAny -> AgdaAny -> AgdaAny
d1260 v0
  = case coe v0 of
      C14145 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1262 = "Algebra.Structures.IsLattice.∧-assoc"
d1262 :: T1230 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1262 v0
  = case coe v0 of
      C14145 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1264 = "Algebra.Structures.IsLattice.∧-cong"
d1264 ::
  T1230 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1264 v0
  = case coe v0 of
      C14145 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1266 = "Algebra.Structures.IsLattice.absorptive"
d1266 :: T1230 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1266 v0
  = case coe v0 of
      C14145 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name1270 = "Algebra.Structures.IsLattice._.refl"
d1270 :: T1230 -> AgdaAny -> AgdaAny
d1270 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594 (coe (d1252 (coe v0))))
name1272 = "Algebra.Structures.IsLattice._.reflexive"
d1272 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1230 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1272 v0 v1 v2 v3 v4 v5 v6 = du1272 v6
du1272 ::
  T1230 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1272 v0
  = coe
      (\ v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d1252 (coe v0))) v1)
name1274 = "Algebra.Structures.IsLattice._.sym"
d1274 :: T1230 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1274 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596 (coe (d1252 (coe v0))))
name1276 = "Algebra.Structures.IsLattice._.trans"
d1276 ::
  T1230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1276 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598 (coe (d1252 (coe v0))))
name1282 = "Algebra.Structures.IsDistributiveLattice"
d1282 a0 a1 a2 a3 a4 a5 = ()
data T1282
  = C14487 T1230 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name1292 = "Algebra.Structures.IsDistributiveLattice.isLattice"
d1292 :: T1282 -> T1230
d1292 v0
  = case coe v0 of
      C14487 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1294 = "Algebra.Structures.IsDistributiveLattice.∨-∧-distribʳ"
d1294 :: T1282 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1294 v0
  = case coe v0 of
      C14487 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1298 = "Algebra.Structures.IsDistributiveLattice._.absorptive"
d1298 :: T1282 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1298 v0 = coe (d1266 (coe (d1292 (coe v0))))
name1300
  = "Algebra.Structures.IsDistributiveLattice._.isEquivalence"
d1300 :: T1282 -> MAlonzo.Code.Relation.Binary.Core.T578
d1300 v0 = coe (d1252 (coe (d1292 (coe v0))))
name1302 = "Algebra.Structures.IsDistributiveLattice._.refl"
d1302 :: T1282 -> AgdaAny -> AgdaAny
d1302 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d1252 (coe (d1292 (coe v0))))))
name1304 = "Algebra.Structures.IsDistributiveLattice._.reflexive"
d1304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1282 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1304 v0 v1 v2 v3 v4 v5 v6 = du1304 v6
du1304 ::
  T1282 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1304 v0
  = let v1 = d1292 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d1252 (coe v1))) v2)
name1306 = "Algebra.Structures.IsDistributiveLattice._.sym"
d1306 :: T1282 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1306 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d1252 (coe (d1292 (coe v0))))))
name1308 = "Algebra.Structures.IsDistributiveLattice._.trans"
d1308 ::
  T1282 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1308 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d1252 (coe (d1292 (coe v0))))))
name1310 = "Algebra.Structures.IsDistributiveLattice._.∧-assoc"
d1310 :: T1282 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1310 v0 = coe (d1262 (coe (d1292 (coe v0))))
name1312 = "Algebra.Structures.IsDistributiveLattice._.∧-comm"
d1312 :: T1282 -> AgdaAny -> AgdaAny -> AgdaAny
d1312 v0 = coe (d1260 (coe (d1292 (coe v0))))
name1314 = "Algebra.Structures.IsDistributiveLattice._.∧-cong"
d1314 ::
  T1282 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1314 v0 = coe (d1264 (coe (d1292 (coe v0))))
name1316 = "Algebra.Structures.IsDistributiveLattice._.∨-assoc"
d1316 :: T1282 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1316 v0 = coe (d1256 (coe (d1292 (coe v0))))
name1318 = "Algebra.Structures.IsDistributiveLattice._.∨-comm"
d1318 :: T1282 -> AgdaAny -> AgdaAny -> AgdaAny
d1318 v0 = coe (d1254 (coe (d1292 (coe v0))))
name1320 = "Algebra.Structures.IsDistributiveLattice._.∨-cong"
d1320 ::
  T1282 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1320 v0 = coe (d1258 (coe (d1292 (coe v0))))
name1332 = "Algebra.Structures.IsBooleanAlgebra"
d1332 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T1332
  = C14881 T1282 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name1352
  = "Algebra.Structures.IsBooleanAlgebra.isDistributiveLattice"
d1352 :: T1332 -> T1282
d1352 v0
  = case coe v0 of
      C14881 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1354 = "Algebra.Structures.IsBooleanAlgebra.∨-complementʳ"
d1354 :: T1332 -> AgdaAny -> AgdaAny
d1354 v0
  = case coe v0 of
      C14881 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1356 = "Algebra.Structures.IsBooleanAlgebra.∧-complementʳ"
d1356 :: T1332 -> AgdaAny -> AgdaAny
d1356 v0
  = case coe v0 of
      C14881 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1358 = "Algebra.Structures.IsBooleanAlgebra.¬-cong"
d1358 :: T1332 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1358 v0
  = case coe v0 of
      C14881 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1362 = "Algebra.Structures.IsBooleanAlgebra._.absorptive"
d1362 :: T1332 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1362 v0 = coe (d1266 (coe (d1292 (coe (d1352 (coe v0))))))
name1364 = "Algebra.Structures.IsBooleanAlgebra._.isEquivalence"
d1364 :: T1332 -> MAlonzo.Code.Relation.Binary.Core.T578
d1364 v0 = coe (d1252 (coe (d1292 (coe (d1352 (coe v0))))))
name1366 = "Algebra.Structures.IsBooleanAlgebra._.isLattice"
d1366 :: T1332 -> T1230
d1366 v0 = coe (d1292 (coe (d1352 (coe v0))))
name1368 = "Algebra.Structures.IsBooleanAlgebra._.refl"
d1368 :: T1332 -> AgdaAny -> AgdaAny
d1368 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (d1252 (coe (d1292 (coe (d1352 (coe v0))))))))
name1370 = "Algebra.Structures.IsBooleanAlgebra._.reflexive"
d1370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1332 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1370 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1370 v9
du1370 ::
  T1332 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1370 v0
  = let v1 = d1352 (coe v0) in
    let v2 = d1292 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du600 (coe (d1252 (coe v2))) v3)
name1372 = "Algebra.Structures.IsBooleanAlgebra._.sym"
d1372 :: T1332 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1372 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (d1252 (coe (d1292 (coe (d1352 (coe v0))))))))
name1374 = "Algebra.Structures.IsBooleanAlgebra._.trans"
d1374 ::
  T1332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1374 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (d1252 (coe (d1292 (coe (d1352 (coe v0))))))))
name1376 = "Algebra.Structures.IsBooleanAlgebra._.∧-assoc"
d1376 :: T1332 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1376 v0 = coe (d1262 (coe (d1292 (coe (d1352 (coe v0))))))
name1378 = "Algebra.Structures.IsBooleanAlgebra._.∧-comm"
d1378 :: T1332 -> AgdaAny -> AgdaAny -> AgdaAny
d1378 v0 = coe (d1260 (coe (d1292 (coe (d1352 (coe v0))))))
name1380 = "Algebra.Structures.IsBooleanAlgebra._.∧-cong"
d1380 ::
  T1332 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1380 v0 = coe (d1264 (coe (d1292 (coe (d1352 (coe v0))))))
name1382 = "Algebra.Structures.IsBooleanAlgebra._.∨-assoc"
d1382 :: T1332 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1382 v0 = coe (d1256 (coe (d1292 (coe (d1352 (coe v0))))))
name1384 = "Algebra.Structures.IsBooleanAlgebra._.∨-comm"
d1384 :: T1332 -> AgdaAny -> AgdaAny -> AgdaAny
d1384 v0 = coe (d1254 (coe (d1292 (coe (d1352 (coe v0))))))
name1386 = "Algebra.Structures.IsBooleanAlgebra._.∨-cong"
d1386 ::
  T1332 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1386 v0 = coe (d1258 (coe (d1292 (coe (d1352 (coe v0))))))
name1388 = "Algebra.Structures.IsBooleanAlgebra._.∨-∧-distribʳ"
d1388 :: T1332 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1388 v0 = coe (d1294 (coe (d1352 (coe v0))))
