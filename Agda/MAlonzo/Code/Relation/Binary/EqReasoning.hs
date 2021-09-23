{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.EqReasoning where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning

name34 = "Relation.Binary.EqReasoning._._IsRelatedTo_"
d34 a0 a1 a2 a3 a4 = ()
name36 = "Relation.Binary.EqReasoning._._∎"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
d36 v0 v1 v2 = du36 v2
du36 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
du36 v0
  = coe
      (MAlonzo.Code.Relation.Binary.PreorderReasoning.du114
         (coe (MAlonzo.Code.Relation.Binary.du158 (coe v0))))
name38 = "Relation.Binary.EqReasoning._._∼⟨_⟩_"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
d38 v0 v1 v2 = du38 v2
du38 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
du38 v0
  = coe
      (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
         (coe (MAlonzo.Code.Relation.Binary.du158 (coe v0))))
name40 = "Relation.Binary.EqReasoning._._≡⟨_⟩_"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
d40 v0 v1 v2 v3 v4 v5 v6 v7 = du40 v7
du40 ::
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
du40 v0 = coe v0
name42 = "Relation.Binary.EqReasoning._._≈⟨⟩_"
d42 ::
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
d42 v0 = coe v0
name44 = "Relation.Binary.EqReasoning._.begin_"
d44 ::
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 -> AgdaAny
d44 = coe MAlonzo.Code.Relation.Binary.PreorderReasoning.d66
