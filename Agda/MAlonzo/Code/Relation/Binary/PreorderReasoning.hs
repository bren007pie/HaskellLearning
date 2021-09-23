{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.PreorderReasoning where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary

name52 = "Relation.Binary.PreorderReasoning._IsRelatedTo_"
d52 a0 a1 a2 a3 a4 a5 = ()
newtype T52 = C60 AgdaAny
name66 = "Relation.Binary.PreorderReasoning.begin_"
d66 :: T52 -> AgdaAny
d66 v0
  = case coe v0 of
      C60 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name76 = "Relation.Binary.PreorderReasoning._∼⟨_⟩_"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T52 -> T52
d76 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du76 v3 v4 v5 v6 v7 v8
du76 ::
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T52 -> T52
du76 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C60 v6
        -> coe
             (C60
                (coe
                   MAlonzo.Code.Relation.Binary.d40
                   (MAlonzo.Code.Relation.Binary.d96 (coe v0)) v1 v2 v3 v4 v6))
      _ -> MAlonzo.RTE.mazUnreachableError
name88 = "Relation.Binary.PreorderReasoning._≈⟨_⟩_"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T52 -> T52
d88 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du88 v3 v4 v5 v6 v7 v8
du88 ::
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T52 -> T52
du88 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C60 v6
        -> coe
             (C60
                (coe
                   MAlonzo.Code.Relation.Binary.d40
                   (MAlonzo.Code.Relation.Binary.d96 (coe v0)) v1 v2 v3
                   (coe
                      MAlonzo.Code.Relation.Binary.d38
                      (MAlonzo.Code.Relation.Binary.d96 (coe v0)) v1 v2 v4)
                   v6))
      _ -> MAlonzo.RTE.mazUnreachableError
name100 = "Relation.Binary.PreorderReasoning._≡⟨_⟩_"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T52 -> T52
d100 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du100 v8
du100 :: T52 -> T52
du100 v0 = coe v0
name108 = "Relation.Binary.PreorderReasoning._≈⟨⟩_"
d108 :: T52 -> T52
d108 v0 = coe v0
name114 = "Relation.Binary.PreorderReasoning._∎"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 -> AgdaAny -> T52
d114 v0 v1 v2 v3 v4 = du114 v3 v4
du114 :: MAlonzo.Code.Relation.Binary.T74 -> AgdaAny -> T52
du114 v0 v1
  = coe
      (C60
         (coe
            (MAlonzo.Code.Relation.Binary.du52
               (coe (MAlonzo.Code.Relation.Binary.d96 (coe v0))) (coe v1))))
