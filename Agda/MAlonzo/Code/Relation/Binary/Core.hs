{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty

name12 = "Relation.Binary.Core.REL"
d12 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Agda.Primitive.T4 -> ()
d12 = erased
name24 = "Relation.Binary.Core.Rel"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> ()
d24 = erased
name42 = "Relation.Binary.Core._⇒_"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d42 = erased
name64 = "Relation.Binary.Core._=[_]⇒_"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> ()) -> ()
d64 = erased
name84 = "Relation.Binary.Core._Preserves_⟶_"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d84 = erased
name110 = "Relation.Binary.Core._Preserves₂_⟶_⟶_"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d110 = erased
name134 = "Relation.Binary.Core.Reflexive"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> ()
d134 = erased
name152 = "Relation.Binary.Core.Irreflexive"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d152 = erased
name174 = "Relation.Binary.Core.Sym"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d174 = erased
name186 = "Relation.Binary.Core.Symmetric"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> ()
d186 = erased
name208 = "Relation.Binary.Core.Trans"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d208 = erased
name240 = "Relation.Binary.Core.TransFlip"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d240 = erased
name260 = "Relation.Binary.Core.Transitive"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> ()
d260 = erased
name272 = "Relation.Binary.Core.Antisymmetric"
d272 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d272 = erased
name288 = "Relation.Binary.Core.Asymmetric"
d288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> ()
d288 = erased
name302 = "Relation.Binary.Core.Total"
d302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> ()
d302 = erased
name322 = "Relation.Binary.Core.Tri"
d322 a0 a1 a2 a3 a4 a5 = ()
data T322 = C342 AgdaAny | C350 AgdaAny | C358 AgdaAny
name368 = "Relation.Binary.Core.Trichotomous"
d368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d368 = erased
name378 = "Relation.Binary.Core._._>_"
d378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d378 = erased
name390 = "Relation.Binary.Core.Maximum"
d390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> ()
d390 = erased
name404 = "Relation.Binary.Core.Minimum"
d404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> ()
d404 = erased
name416 = "Relation.Binary.Core._Respects_"
d416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d416 = erased
name434 = "Relation.Binary.Core._Respectsʳ_"
d434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d434 = erased
name450 = "Relation.Binary.Core._Respectsˡ_"
d450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d450 = erased
name466 = "Relation.Binary.Core._Respects₂_"
d466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d466 = erased
name480 = "Relation.Binary.Core.Substitutive"
d480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> MAlonzo.Code.Agda.Primitive.T4 -> ()
d480 = erased
name500 = "Relation.Binary.Core.Decidable"
d500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> AgdaAny -> ()) -> ()
d500 = erased
name518 = "Relation.Binary.Core.Irrelevant"
d518 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> AgdaAny -> ()) -> ()
d518 = erased
name542 = "Relation.Binary.Core.NonEmpty"
d542 a0 a1 a2 a3 a4 a5 = ()
data T542 = C568 AgdaAny AgdaAny AgdaAny
name562 = "Relation.Binary.Core.NonEmpty.x"
d562 :: T542 -> AgdaAny
d562 v0
  = case coe v0 of
      C568 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name564 = "Relation.Binary.Core.NonEmpty.y"
d564 :: T542 -> AgdaAny
d564 v0
  = case coe v0 of
      C568 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name566 = "Relation.Binary.Core.NonEmpty.proof"
d566 :: T542 -> AgdaAny
d566 v0
  = case coe v0 of
      C568 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name578 = "Relation.Binary.Core.IsEquivalence"
d578 a0 a1 a2 a3 = ()
data T578
  = C3153 (AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name594 = "Relation.Binary.Core.IsEquivalence.refl"
d594 :: T578 -> AgdaAny -> AgdaAny
d594 v0
  = case coe v0 of
      C3153 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name596 = "Relation.Binary.Core.IsEquivalence.sym"
d596 :: T578 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d596 v0
  = case coe v0 of
      C3153 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name598 = "Relation.Binary.Core.IsEquivalence.trans"
d598 ::
  T578 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d598 v0
  = case coe v0 of
      C3153 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name600 = "Relation.Binary.Core.IsEquivalence.reflexive"
d600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T578 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d600 v0 v1 v2 v3 v4 v5 v6 v7 = du600 v4 v5
du600 :: T578 -> AgdaAny -> AgdaAny
du600 v0 v1 = coe d594 v0 v1
