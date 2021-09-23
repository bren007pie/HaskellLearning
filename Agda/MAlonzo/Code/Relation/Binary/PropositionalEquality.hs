{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.PropositionalEquality where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.HeterogeneousEquality.Core
import qualified MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous
import qualified MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Construct.Trivial
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Nullary

name26 = "Relation.Binary.PropositionalEquality.subst₂"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d26 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du26 v12
du26 :: AgdaAny -> AgdaAny
du26 v0 = coe v0
name46 = "Relation.Binary.PropositionalEquality.cong"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d46 = erased
name66 = "Relation.Binary.PropositionalEquality.cong-app"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d66 = erased
name92 = "Relation.Binary.PropositionalEquality.cong₂"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d92 = erased
name98 = "Relation.Binary.PropositionalEquality.setoid"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.T128
d98 v0 v1 = du98
du98 :: MAlonzo.Code.Relation.Binary.T128
du98
  = coe
      (\ v0 v1 v2 -> MAlonzo.Code.Relation.Binary.C1037 v2) erased erased
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du68
name106 = "Relation.Binary.PropositionalEquality.decSetoid"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Relation.Binary.T200
d106 v0 v1 v2 = du106 v2
du106 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Relation.Binary.T200
du106 v0
  = coe
      (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1393 v3) erased erased
      (MAlonzo.Code.Relation.Binary.C1251
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du68)
         (coe v0))
name114 = "Relation.Binary.PropositionalEquality.isPreorder"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.T16
d114 v0 v1 = du114
du114 :: MAlonzo.Code.Relation.Binary.T16
du114
  = coe
      (MAlonzo.Code.Relation.Binary.C17
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du68)
         (coe (\ v0 v1 v2 -> v2)) erased)
name118 = "Relation.Binary.PropositionalEquality.preorder"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.T74
d118 v0 v1 = du118
du118 :: MAlonzo.Code.Relation.Binary.T74
du118
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C807 v3) erased
      erased erased du114
name130 = "Relation.Binary.PropositionalEquality._→-setoid_"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Relation.Binary.T128
d130 v0 v1 v2 v3 = du130
du130 :: MAlonzo.Code.Relation.Binary.T128
du130
  = coe
      (MAlonzo.Code.Function.Equality.du204
         (coe
            (MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Construct.Trivial.du96
               (coe du98))))
name148 = "Relation.Binary.PropositionalEquality._≗_"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d148 = erased
name166 = "Relation.Binary.PropositionalEquality.:→-to-Π"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.T58 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Function.Equality.T16
d166 v0 v1 v2 v3 v4 v5 = du166 v4 v5
du166 ::
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.T58 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Function.Equality.T16
du166 v0 v1
  = coe
      (MAlonzo.Code.Function.Equality.C19
         (coe v1) (coe (\ v2 v3 v4 -> du184 (coe v0) (coe v1) v2)))
name178 = "Relation.Binary.PropositionalEquality._._._≈_"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.T58 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d178 = erased
name184 = "Relation.Binary.PropositionalEquality._.cong′"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.T58 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d184 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du184 v4 v5 v6
du184 ::
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.T58 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du184 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.d40
      (MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.d78 (coe v0))
      v2 (coe v1 v2)
name196 = "Relation.Binary.PropositionalEquality.→-to-⟶"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.T128 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Function.Equality.T16
d196 v0 v1 v2 v3 v4 = du196 v4
du196 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Function.Equality.T16
du196 v0
  = coe
      (du166
         (coe
            (\ v1 v2 v3 ->
               MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.C625 v3)
            erased erased
            (MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Construct.Trivial.du32
               (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0))))))
name214 = "Relation.Binary.PropositionalEquality.Reveal_·_is_"
d214 a0 a1 a2 a3 a4 a5 a6 = ()
data T214 = C234
name232 = "Relation.Binary.PropositionalEquality.Reveal_·_is_.eq"
d232 :: T214 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d232 = erased
name250 = "Relation.Binary.PropositionalEquality.inspect"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> T214
d250 = erased
name266
  = "Relation.Binary.PropositionalEquality.≡-Reasoning.begin_"
d266 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d266 = erased
name274 = "Relation.Binary.PropositionalEquality.≡-Reasoning._≡⟨⟩_"
d274 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d274 = erased
name284
  = "Relation.Binary.PropositionalEquality.≡-Reasoning._≡⟨_⟩_"
d284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d284 = erased
name296
  = "Relation.Binary.PropositionalEquality.≡-Reasoning._≅⟨_⟩_"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.HeterogeneousEquality.Core.T16 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d296 = erased
name304 = "Relation.Binary.PropositionalEquality.≡-Reasoning._∎"
d304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d304 = erased
name310 = "Relation.Binary.PropositionalEquality.Extensionality"
d310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> ()
d310 = erased
name336
  = "Relation.Binary.PropositionalEquality.extensionality-for-lower-levels"
d336 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d336 = erased
name364 = "Relation.Binary.PropositionalEquality.∀-extensionality"
d364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d364 = erased
name386 = "Relation.Binary.PropositionalEquality.isPropositional"
d386 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d386 = erased
name398 = "Relation.Binary.PropositionalEquality.≡-irrelevance"
d398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d398 = erased
name416 = "Relation.Binary.PropositionalEquality._.≡-≟-identity"
d416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d416 = erased
name434 = "Relation.Binary.PropositionalEquality._.≢-≟-identity"
d434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d434 v0 v1 v2 v3 v4 v5 = du434 v0 v2 v3 v4
du434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du434 v0 v1 v2 v3
  = let v4 = coe v1 v2 v3 in
    case coe v4 of
      MAlonzo.Code.Relation.Nullary.C22 v5
        -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
      MAlonzo.Code.Relation.Nullary.C26
        -> coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name450 = "Relation.Binary.PropositionalEquality.proof-irrelevance"
d450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d450 = erased
