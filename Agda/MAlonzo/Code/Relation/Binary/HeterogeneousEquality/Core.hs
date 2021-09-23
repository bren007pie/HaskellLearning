{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.HeterogeneousEquality.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive

name16 = "Relation.Binary.HeterogeneousEquality.Core._≅_"
d16 a0 a1 a2 a3 a4 = ()
data T16 = C24
name34 = "Relation.Binary.HeterogeneousEquality.Core.≅-to-≡"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny -> AgdaAny -> T16 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d34 = erased
