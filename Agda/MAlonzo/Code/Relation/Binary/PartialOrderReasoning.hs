{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.PartialOrderReasoning where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning

name56 = "Relation.Binary.PartialOrderReasoning._._IsRelatedTo_"
d56 a0 a1 a2 a3 a4 a5 = ()
name58 = "Relation.Binary.PartialOrderReasoning._._∎"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T304 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
d58 v0 v1 v2 v3 = du58 v3
du58 ::
  MAlonzo.Code.Relation.Binary.T304 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
du58 v0
  = coe
      (MAlonzo.Code.Relation.Binary.PreorderReasoning.du114
         (coe (MAlonzo.Code.Relation.Binary.du358 (coe v0))))
name60 = "Relation.Binary.PartialOrderReasoning._._≈⟨_⟩_"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
d60 v0 v1 v2 v3 = du60 v3
du60 ::
  MAlonzo.Code.Relation.Binary.T304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
du60 v0
  = coe
      (MAlonzo.Code.Relation.Binary.PreorderReasoning.du88
         (coe (MAlonzo.Code.Relation.Binary.du358 (coe v0))))
name62 = "Relation.Binary.PartialOrderReasoning._._≈⟨⟩_"
d62 ::
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
d62 v0 = coe v0
name64 = "Relation.Binary.PartialOrderReasoning._._≡⟨_⟩_"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
d64 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du64 v8
du64 ::
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
du64 v0 = coe v0
name66 = "Relation.Binary.PartialOrderReasoning._._∼⟨_⟩_"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
d66 v0 v1 v2 v3 = du66 v3
du66 ::
  MAlonzo.Code.Relation.Binary.T304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
du66 v0
  = coe
      (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
         (coe (MAlonzo.Code.Relation.Binary.du358 (coe v0))))
name68 = "Relation.Binary.PartialOrderReasoning._.begin_"
d68 ::
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 -> AgdaAny
d68 = coe MAlonzo.Code.Relation.Binary.PreorderReasoning.d66
