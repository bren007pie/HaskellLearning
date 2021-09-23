{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Morphism where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning

name18 = "Algebra.Morphism.Definitions.Morphism"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> AgdaAny -> ()) -> ()
d18 = erased
name20 = "Algebra.Morphism.Definitions.Homomorphic₀"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d20 = erased
name28 = "Algebra.Morphism.Definitions.Homomorphic₁"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d28 = erased
name38 = "Algebra.Morphism.Definitions.Homomorphic₂"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d38 = erased
name68 = "Algebra.Morphism._.F._∙_"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T28 ->
  MAlonzo.Code.Algebra.T28 -> AgdaAny -> AgdaAny -> AgdaAny
d68 v0 v1 v2 v3 v4 v5 = du68 v4
du68 :: MAlonzo.Code.Algebra.T28 -> AgdaAny -> AgdaAny -> AgdaAny
du68 v0 = coe (MAlonzo.Code.Algebra.d46 (coe v0))
name70 = "Algebra.Morphism._.F._≈_"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T28 ->
  MAlonzo.Code.Algebra.T28 -> AgdaAny -> AgdaAny -> ()
d70 = erased
name124 = "Algebra.Morphism._._.Homomorphic₀"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T28 ->
  MAlonzo.Code.Algebra.T28 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d124 = erased
name126 = "Algebra.Morphism._._.Homomorphic₁"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T28 ->
  MAlonzo.Code.Algebra.T28 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d126 = erased
name128 = "Algebra.Morphism._._.Homomorphic₂"
d128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T28 ->
  MAlonzo.Code.Algebra.T28 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d128 = erased
name130 = "Algebra.Morphism._._.Morphism"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T28 -> MAlonzo.Code.Algebra.T28 -> ()
d130 = erased
name134 = "Algebra.Morphism._.IsSemigroupMorphism"
d134 a0 a1 a2 a3 a4 a5 a6 = ()
data T134
  = C583 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
         (AgdaAny -> AgdaAny -> AgdaAny)
name142 = "Algebra.Morphism._.IsSemigroupMorphism.⟦⟧-cong"
d142 :: T134 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d142 v0
  = case coe v0 of
      C583 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name144 = "Algebra.Morphism._.IsSemigroupMorphism.∙-homo"
d144 :: T134 -> AgdaAny -> AgdaAny -> AgdaAny
d144 v0
  = case coe v0 of
      C583 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name190 = "Algebra.Morphism._.F.semigroup"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T154 ->
  MAlonzo.Code.Algebra.T154 -> MAlonzo.Code.Algebra.T28
d190 v0 v1 v2 v3 v4 v5 = du190 v4
du190 :: MAlonzo.Code.Algebra.T154 -> MAlonzo.Code.Algebra.T28
du190 v0 = coe (MAlonzo.Code.Algebra.du206 (coe v0))
name198 = "Algebra.Morphism._.F.ε"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T154 -> MAlonzo.Code.Algebra.T154 -> AgdaAny
d198 v0 v1 v2 v3 v4 v5 = du198 v4
du198 :: MAlonzo.Code.Algebra.T154 -> AgdaAny
du198 v0 = coe (MAlonzo.Code.Algebra.d176 (coe v0))
name230 = "Algebra.Morphism._.T.semigroup"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T154 ->
  MAlonzo.Code.Algebra.T154 -> MAlonzo.Code.Algebra.T28
d230 v0 v1 v2 v3 v4 v5 = du230 v5
du230 :: MAlonzo.Code.Algebra.T154 -> MAlonzo.Code.Algebra.T28
du230 v0 = coe (MAlonzo.Code.Algebra.du206 (coe v0))
name244 = "Algebra.Morphism._._.Homomorphic₀"
d244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T154 ->
  MAlonzo.Code.Algebra.T154 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d244 = erased
name246 = "Algebra.Morphism._._.Homomorphic₁"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T154 ->
  MAlonzo.Code.Algebra.T154 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d246 = erased
name248 = "Algebra.Morphism._._.Homomorphic₂"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T154 ->
  MAlonzo.Code.Algebra.T154 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d248 = erased
name250 = "Algebra.Morphism._._.Morphism"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T154 -> MAlonzo.Code.Algebra.T154 -> ()
d250 = erased
name254 = "Algebra.Morphism._.IsMonoidMorphism"
d254 a0 a1 a2 a3 a4 a5 a6 = ()
data T254 = C861 T134 AgdaAny
name262 = "Algebra.Morphism._.IsMonoidMorphism.sm-homo"
d262 :: T254 -> T134
d262 v0
  = case coe v0 of
      C861 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name264 = "Algebra.Morphism._.IsMonoidMorphism.ε-homo"
d264 :: T254 -> AgdaAny
d264 v0
  = case coe v0 of
      C861 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name268 = "Algebra.Morphism._.IsMonoidMorphism._.∙-homo"
d268 :: T254 -> AgdaAny -> AgdaAny -> AgdaAny
d268 v0 = coe (d144 (coe (d262 (coe v0))))
name270 = "Algebra.Morphism._.IsMonoidMorphism._.⟦⟧-cong"
d270 :: T254 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d270 v0 = coe (d142 (coe (d262 (coe v0))))
name314 = "Algebra.Morphism._.F.monoid"
d314 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T214 ->
  MAlonzo.Code.Algebra.T214 -> MAlonzo.Code.Algebra.T154
d314 v0 v1 v2 v3 v4 v5 = du314 v4
du314 :: MAlonzo.Code.Algebra.T214 -> MAlonzo.Code.Algebra.T154
du314 v0 = coe (MAlonzo.Code.Algebra.du270 (coe v0))
name360 = "Algebra.Morphism._.T.monoid"
d360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T214 ->
  MAlonzo.Code.Algebra.T214 -> MAlonzo.Code.Algebra.T154
d360 v0 v1 v2 v3 v4 v5 = du360 v5
du360 :: MAlonzo.Code.Algebra.T214 -> MAlonzo.Code.Algebra.T154
du360 v0 = coe (MAlonzo.Code.Algebra.du270 (coe v0))
name382 = "Algebra.Morphism._._.Homomorphic₀"
d382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T214 ->
  MAlonzo.Code.Algebra.T214 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d382 = erased
name384 = "Algebra.Morphism._._.Homomorphic₁"
d384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T214 ->
  MAlonzo.Code.Algebra.T214 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d384 = erased
name386 = "Algebra.Morphism._._.Homomorphic₂"
d386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T214 ->
  MAlonzo.Code.Algebra.T214 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d386 = erased
name388 = "Algebra.Morphism._._.Morphism"
d388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T214 -> MAlonzo.Code.Algebra.T214 -> ()
d388 = erased
name392 = "Algebra.Morphism._.IsCommutativeMonoidMorphism"
d392 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T392 = C1209 T254
name398 = "Algebra.Morphism._.IsCommutativeMonoidMorphism.mn-homo"
d398 :: T392 -> T254
d398 v0
  = case coe v0 of
      C1209 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name402
  = "Algebra.Morphism._.IsCommutativeMonoidMorphism._.sm-homo"
d402 :: T392 -> T134
d402 v0 = coe (d262 (coe (d398 (coe v0))))
name404 = "Algebra.Morphism._.IsCommutativeMonoidMorphism._.ε-homo"
d404 :: T392 -> AgdaAny
d404 v0 = coe (d264 (coe (d398 (coe v0))))
name406 = "Algebra.Morphism._.IsCommutativeMonoidMorphism._.∙-homo"
d406 :: T392 -> AgdaAny -> AgdaAny -> AgdaAny
d406 v0 = coe (d144 (coe (d262 (coe (d398 (coe v0))))))
name408
  = "Algebra.Morphism._.IsCommutativeMonoidMorphism._.⟦⟧-cong"
d408 :: T392 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d408 v0 = coe (d142 (coe (d262 (coe (d398 (coe v0))))))
name438 = "Algebra.Morphism._.F.commutativeMonoid"
d438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T282 ->
  MAlonzo.Code.Algebra.T282 -> MAlonzo.Code.Algebra.T214
d438 v0 v1 v2 v3 v4 v5 = du438 v4
du438 :: MAlonzo.Code.Algebra.T282 -> MAlonzo.Code.Algebra.T214
du438 v0 = coe (MAlonzo.Code.Algebra.du342 (coe v0))
name458 = "Algebra.Morphism._.F.monoid"
d458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T282 ->
  MAlonzo.Code.Algebra.T282 -> MAlonzo.Code.Algebra.T154
d458 v0 v1 v2 v3 v4 v5 = du458 v4
du458 :: MAlonzo.Code.Algebra.T282 -> MAlonzo.Code.Algebra.T154
du458 v0
  = coe
      (MAlonzo.Code.Algebra.du270
         (coe (MAlonzo.Code.Algebra.du342 (coe v0))))
name490 = "Algebra.Morphism._.T.commutativeMonoid"
d490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T282 ->
  MAlonzo.Code.Algebra.T282 -> MAlonzo.Code.Algebra.T214
d490 v0 v1 v2 v3 v4 v5 = du490 v5
du490 :: MAlonzo.Code.Algebra.T282 -> MAlonzo.Code.Algebra.T214
du490 v0 = coe (MAlonzo.Code.Algebra.du342 (coe v0))
name510 = "Algebra.Morphism._.T.monoid"
d510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T282 ->
  MAlonzo.Code.Algebra.T282 -> MAlonzo.Code.Algebra.T154
d510 v0 v1 v2 v3 v4 v5 = du510 v5
du510 :: MAlonzo.Code.Algebra.T282 -> MAlonzo.Code.Algebra.T154
du510 v0
  = coe
      (MAlonzo.Code.Algebra.du270
         (coe (MAlonzo.Code.Algebra.du342 (coe v0))))
name532 = "Algebra.Morphism._._.Homomorphic₀"
d532 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T282 ->
  MAlonzo.Code.Algebra.T282 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d532 = erased
name534 = "Algebra.Morphism._._.Homomorphic₁"
d534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T282 ->
  MAlonzo.Code.Algebra.T282 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d534 = erased
name536 = "Algebra.Morphism._._.Homomorphic₂"
d536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T282 ->
  MAlonzo.Code.Algebra.T282 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d536 = erased
name538 = "Algebra.Morphism._._.Morphism"
d538 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T282 -> MAlonzo.Code.Algebra.T282 -> ()
d538 = erased
name542
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism"
d542 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T542 = C1607 T254
name548
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism.mn-homo"
d548 :: T542 -> T254
d548 v0
  = case coe v0 of
      C1607 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name552
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.sm-homo"
d552 :: T542 -> T134
d552 v0 = coe (d262 (coe (d548 (coe v0))))
name554
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.ε-homo"
d554 :: T542 -> AgdaAny
d554 v0 = coe (d264 (coe (d548 (coe v0))))
name556
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.∙-homo"
d556 :: T542 -> AgdaAny -> AgdaAny -> AgdaAny
d556 v0 = coe (d144 (coe (d262 (coe (d548 (coe v0))))))
name558
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.⟦⟧-cong"
d558 :: T542 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d558 v0 = coe (d142 (coe (d262 (coe (d548 (coe v0))))))
name560
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism.isCommutativeMonoidMorphism"
d560 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T282 ->
  MAlonzo.Code.Algebra.T282 -> (AgdaAny -> AgdaAny) -> T542 -> T392
d560 v0 v1 v2 v3 v4 v5 v6 v7 = du560 v7
du560 :: T542 -> T392
du560 v0 = coe (C1209 (coe (d548 (coe v0))))
name582 = "Algebra.Morphism._.F._⁻¹"
d582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 ->
  MAlonzo.Code.Algebra.T386 -> AgdaAny -> AgdaAny
d582 v0 v1 v2 v3 v4 v5 = du582 v4
du582 :: MAlonzo.Code.Algebra.T386 -> AgdaAny -> AgdaAny
du582 v0 = coe (MAlonzo.Code.Algebra.d412 (coe v0))
name612 = "Algebra.Morphism._.F.monoid"
d612 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 ->
  MAlonzo.Code.Algebra.T386 -> MAlonzo.Code.Algebra.T154
d612 v0 v1 v2 v3 v4 v5 = du612 v4
du612 :: MAlonzo.Code.Algebra.T386 -> MAlonzo.Code.Algebra.T154
du612 v0 = coe (MAlonzo.Code.Algebra.du460 (coe v0))
name674 = "Algebra.Morphism._.T.monoid"
d674 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 ->
  MAlonzo.Code.Algebra.T386 -> MAlonzo.Code.Algebra.T154
d674 v0 v1 v2 v3 v4 v5 = du674 v5
du674 :: MAlonzo.Code.Algebra.T386 -> MAlonzo.Code.Algebra.T154
du674 v0 = coe (MAlonzo.Code.Algebra.du460 (coe v0))
name704 = "Algebra.Morphism._._.Homomorphic₀"
d704 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 ->
  MAlonzo.Code.Algebra.T386 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d704 = erased
name706 = "Algebra.Morphism._._.Homomorphic₁"
d706 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 ->
  MAlonzo.Code.Algebra.T386 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d706 = erased
name708 = "Algebra.Morphism._._.Homomorphic₂"
d708 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 ->
  MAlonzo.Code.Algebra.T386 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d708 = erased
name710 = "Algebra.Morphism._._.Morphism"
d710 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 -> MAlonzo.Code.Algebra.T386 -> ()
d710 = erased
name714 = "Algebra.Morphism._.IsGroupMorphism"
d714 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T714 = C2217 T254
name720 = "Algebra.Morphism._.IsGroupMorphism.mn-homo"
d720 :: T714 -> T254
d720 v0
  = case coe v0 of
      C2217 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name724 = "Algebra.Morphism._.IsGroupMorphism._.sm-homo"
d724 :: T714 -> T134
d724 v0 = coe (d262 (coe (d720 (coe v0))))
name726 = "Algebra.Morphism._.IsGroupMorphism._.ε-homo"
d726 :: T714 -> AgdaAny
d726 v0 = coe (d264 (coe (d720 (coe v0))))
name728 = "Algebra.Morphism._.IsGroupMorphism._.∙-homo"
d728 :: T714 -> AgdaAny -> AgdaAny -> AgdaAny
d728 v0 = coe (d144 (coe (d262 (coe (d720 (coe v0))))))
name730 = "Algebra.Morphism._.IsGroupMorphism._.⟦⟧-cong"
d730 :: T714 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d730 v0 = coe (d142 (coe (d262 (coe (d720 (coe v0))))))
name732 = "Algebra.Morphism._.IsGroupMorphism.⁻¹-homo"
d732 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 ->
  MAlonzo.Code.Algebra.T386 ->
  (AgdaAny -> AgdaAny) -> T714 -> AgdaAny -> AgdaAny
d732 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du732 v4 v5 v6 v7 v8
du732 ::
  MAlonzo.Code.Algebra.T386 ->
  MAlonzo.Code.Algebra.T386 ->
  (AgdaAny -> AgdaAny) -> T714 -> AgdaAny -> AgdaAny
du732 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du334
      (MAlonzo.Code.Algebra.d408 (coe v1))
      (MAlonzo.Code.Algebra.d410 (coe v1))
      (MAlonzo.Code.Algebra.d412 (coe v1))
      (MAlonzo.Code.Algebra.d414 (coe v1))
      (coe v2 (coe MAlonzo.Code.Algebra.d412 v0 v4)) (coe v2 v4)
      (MAlonzo.Code.Relation.Binary.PreorderReasoning.d66
         (coe
            (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
               (coe
                  (MAlonzo.Code.Relation.Binary.du158
                     (let v5 = MAlonzo.Code.Algebra.d414 (coe v1) in
                      let v6 = MAlonzo.Code.Algebra.Structures.d288 (coe v5) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du90
                           (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v6)))))))
               (coe
                  MAlonzo.Code.Algebra.d408 v1
                  (coe v2 (coe MAlonzo.Code.Algebra.d412 v0 v4)) (coe v2 v4))
               (coe
                  v2
                  (let v5
                         = let v5 = MAlonzo.Code.Algebra.du460 (coe v0) in
                           MAlonzo.Code.Algebra.du206 (coe v5) in
                   coe
                     MAlonzo.Code.Algebra.d46 v5 (coe MAlonzo.Code.Algebra.d412 v0 v4)
                     v4))
               (coe (MAlonzo.Code.Algebra.d410 (coe v1)))
               (coe
                  MAlonzo.Code.Relation.Binary.Core.d596
                  (MAlonzo.Code.Algebra.Structures.d84
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d148
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d288
                                 (coe (MAlonzo.Code.Algebra.d414 (coe v1))))))))
                  (coe
                     v2
                     (let v5
                            = let v5 = MAlonzo.Code.Algebra.du460 (coe v0) in
                              MAlonzo.Code.Algebra.du206 (coe v5) in
                      coe
                        MAlonzo.Code.Algebra.d46 v5 (coe MAlonzo.Code.Algebra.d412 v0 v4)
                        v4))
                  (coe
                     MAlonzo.Code.Algebra.d46
                     (let v5 = MAlonzo.Code.Algebra.du460 (coe v1) in
                      MAlonzo.Code.Algebra.du206 (coe v5))
                     (coe v2 (coe MAlonzo.Code.Algebra.d412 v0 v4)) (coe v2 v4))
                  (coe
                     d144 (d262 (coe (d720 (coe v3))))
                     (coe MAlonzo.Code.Algebra.d412 v0 v4) v4))
               (coe
                  (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                     (coe
                        (MAlonzo.Code.Relation.Binary.du158
                           (let v5 = MAlonzo.Code.Algebra.d414 (coe v1) in
                            let v6 = MAlonzo.Code.Algebra.Structures.d288 (coe v5) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du90
                                 (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v6)))))))
                     (coe
                        v2
                        (coe
                           MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v4)
                           v4))
                     (coe v2 (MAlonzo.Code.Algebra.d410 (coe v0)))
                     (coe (MAlonzo.Code.Algebra.d410 (coe v1)))
                     (coe
                        d142 (d262 (coe (d720 (coe v3))))
                        (coe
                           MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v4)
                           v4)
                        (MAlonzo.Code.Algebra.d410 (coe v0))
                        (let v5 = MAlonzo.Code.Algebra.d414 (coe v0) in
                         coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d28
                           (MAlonzo.Code.Algebra.Structures.d290 (coe v5)) v4))
                     (coe
                        (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                           (coe
                              (MAlonzo.Code.Relation.Binary.du158
                                 (let v5 = MAlonzo.Code.Algebra.d414 (coe v1) in
                                  let v6 = MAlonzo.Code.Algebra.Structures.d288 (coe v5) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du90
                                       (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v6)))))))
                           (coe v2 (MAlonzo.Code.Algebra.d410 (coe v0)))
                           (coe
                              (MAlonzo.Code.Algebra.d176
                                 (coe (MAlonzo.Code.Algebra.du460 (coe v1)))))
                           (coe (MAlonzo.Code.Algebra.d410 (coe v1)))
                           (coe (d264 (coe (d720 (coe v3)))))
                           (coe
                              (MAlonzo.Code.Relation.Binary.PreorderReasoning.du114
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.du158
                                       (let v5 = MAlonzo.Code.Algebra.d414 (coe v1) in
                                        let v6 = MAlonzo.Code.Algebra.Structures.d288 (coe v5) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du90
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d148 (coe v6)))))))
                                 (coe (MAlonzo.Code.Algebra.d410 (coe v1))))))))))))
name790 = "Algebra.Morphism._.F.group"
d790 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T472 ->
  MAlonzo.Code.Algebra.T472 -> MAlonzo.Code.Algebra.T386
d790 v0 v1 v2 v3 v4 v5 = du790 v4
du790 :: MAlonzo.Code.Algebra.T472 -> MAlonzo.Code.Algebra.T386
du790 v0 = coe (MAlonzo.Code.Algebra.du550 (coe v0))
name862 = "Algebra.Morphism._.T.group"
d862 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T472 ->
  MAlonzo.Code.Algebra.T472 -> MAlonzo.Code.Algebra.T386
d862 v0 v1 v2 v3 v4 v5 = du862 v5
du862 :: MAlonzo.Code.Algebra.T472 -> MAlonzo.Code.Algebra.T386
du862 v0 = coe (MAlonzo.Code.Algebra.du550 (coe v0))
name918 = "Algebra.Morphism._._.Homomorphic₀"
d918 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T472 ->
  MAlonzo.Code.Algebra.T472 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d918 = erased
name920 = "Algebra.Morphism._._.Homomorphic₁"
d920 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T472 ->
  MAlonzo.Code.Algebra.T472 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d920 = erased
name922 = "Algebra.Morphism._._.Homomorphic₂"
d922 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T472 ->
  MAlonzo.Code.Algebra.T472 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d922 = erased
name924 = "Algebra.Morphism._._.Morphism"
d924 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T472 -> MAlonzo.Code.Algebra.T472 -> ()
d924 = erased
name928 = "Algebra.Morphism._.IsAbelianGroupMorphism"
d928 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T928 = C3181 T714
name934 = "Algebra.Morphism._.IsAbelianGroupMorphism.gp-homo"
d934 :: T928 -> T714
d934 v0
  = case coe v0 of
      C3181 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name938 = "Algebra.Morphism._.IsAbelianGroupMorphism._.mn-homo"
d938 :: T928 -> T254
d938 v0 = coe (d720 (coe (d934 (coe v0))))
name940 = "Algebra.Morphism._.IsAbelianGroupMorphism._.sm-homo"
d940 :: T928 -> T134
d940 v0 = coe (d262 (coe (d720 (coe (d934 (coe v0))))))
name942 = "Algebra.Morphism._.IsAbelianGroupMorphism._.ε-homo"
d942 :: T928 -> AgdaAny
d942 v0 = coe (d264 (coe (d720 (coe (d934 (coe v0))))))
name944 = "Algebra.Morphism._.IsAbelianGroupMorphism._.⁻¹-homo"
d944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T472 ->
  MAlonzo.Code.Algebra.T472 ->
  (AgdaAny -> AgdaAny) -> T928 -> AgdaAny -> AgdaAny
d944 v0 v1 v2 v3 v4 v5 v6 v7 = du944 v4 v5 v6 v7
du944 ::
  MAlonzo.Code.Algebra.T472 ->
  MAlonzo.Code.Algebra.T472 ->
  (AgdaAny -> AgdaAny) -> T928 -> AgdaAny -> AgdaAny
du944 v0 v1 v2 v3
  = coe
      (du732
         (coe (MAlonzo.Code.Algebra.du550 (coe v0)))
         (coe (MAlonzo.Code.Algebra.du550 (coe v1))) (coe v2)
         (coe (d934 (coe v3))))
name946 = "Algebra.Morphism._.IsAbelianGroupMorphism._.∙-homo"
d946 :: T928 -> AgdaAny -> AgdaAny -> AgdaAny
d946 v0
  = coe (d144 (coe (d262 (coe (d720 (coe (d934 (coe v0))))))))
name948 = "Algebra.Morphism._.IsAbelianGroupMorphism._.⟦⟧-cong"
d948 :: T928 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d948 v0
  = coe (d142 (coe (d262 (coe (d720 (coe (d934 (coe v0))))))))
name990 = "Algebra.Morphism._.F.*-monoid"
d990 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1304 ->
  MAlonzo.Code.Algebra.T1304 -> MAlonzo.Code.Algebra.T154
d990 v0 v1 v2 v3 v4 v5 = du990 v4
du990 :: MAlonzo.Code.Algebra.T1304 -> MAlonzo.Code.Algebra.T154
du990 v0
  = let v1 = MAlonzo.Code.Algebra.du1428 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.du884
         (coe (MAlonzo.Code.Algebra.du996 (coe v1))))
name996 = "Algebra.Morphism._.F.+-abelianGroup"
d996 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1304 ->
  MAlonzo.Code.Algebra.T1304 -> MAlonzo.Code.Algebra.T472
d996 v0 v1 v2 v3 v4 v5 = du996 v4
du996 :: MAlonzo.Code.Algebra.T1304 -> MAlonzo.Code.Algebra.T472
du996 v0 = coe (MAlonzo.Code.Algebra.du1426 (coe v0))
name1118 = "Algebra.Morphism._.T.*-monoid"
d1118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1304 ->
  MAlonzo.Code.Algebra.T1304 -> MAlonzo.Code.Algebra.T154
d1118 v0 v1 v2 v3 v4 v5 = du1118 v5
du1118 :: MAlonzo.Code.Algebra.T1304 -> MAlonzo.Code.Algebra.T154
du1118 v0
  = let v1 = MAlonzo.Code.Algebra.du1428 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.du884
         (coe (MAlonzo.Code.Algebra.du996 (coe v1))))
name1124 = "Algebra.Morphism._.T.+-abelianGroup"
d1124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1304 ->
  MAlonzo.Code.Algebra.T1304 -> MAlonzo.Code.Algebra.T472
d1124 v0 v1 v2 v3 v4 v5 = du1124 v5
du1124 :: MAlonzo.Code.Algebra.T1304 -> MAlonzo.Code.Algebra.T472
du1124 v0 = coe (MAlonzo.Code.Algebra.du1426 (coe v0))
name1224 = "Algebra.Morphism._._.Homomorphic₀"
d1224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1304 ->
  MAlonzo.Code.Algebra.T1304 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d1224 = erased
name1226 = "Algebra.Morphism._._.Homomorphic₁"
d1226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1304 ->
  MAlonzo.Code.Algebra.T1304 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d1226 = erased
name1228 = "Algebra.Morphism._._.Homomorphic₂"
d1228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1304 ->
  MAlonzo.Code.Algebra.T1304 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1228 = erased
name1230 = "Algebra.Morphism._._.Morphism"
d1230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1304 -> MAlonzo.Code.Algebra.T1304 -> ()
d1230 = erased
name1234 = "Algebra.Morphism._.IsRingMorphism"
d1234 a0 a1 a2 a3 a4 a5 a6 = ()
data T1234 = C3811 T928 T254
name1242 = "Algebra.Morphism._.IsRingMorphism.+-abgp-homo"
d1242 :: T1234 -> T928
d1242 v0
  = case coe v0 of
      C3811 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1244 = "Algebra.Morphism._.IsRingMorphism.*-mn-homo"
d1244 :: T1234 -> T254
d1244 v0
  = case coe v0 of
      C3811 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
