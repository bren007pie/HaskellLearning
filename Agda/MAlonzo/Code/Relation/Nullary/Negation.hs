{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Nullary.Negation where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Category.Monad.Indexed
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Nullary

name14 = "Relation.Nullary.Negation.contradiction"
d14 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () -> AgdaAny -> (AgdaAny -> MAlonzo.Code.Data.Empty.T4) -> AgdaAny
d14 v0 v1 v2 v3 v4 v5 = du14 v1
du14 :: MAlonzo.Code.Agda.Primitive.T4 -> AgdaAny
du14 v0 = coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
name28 = "Relation.Nullary.Negation.contraposition"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d28 = erased
name50 = "Relation.Nullary.Negation.¬?"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
d50 v0 v1 v2 = du50 v2
du50 ::
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
du50 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1
        -> coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased
      MAlonzo.Code.Relation.Nullary.C26
        -> coe (MAlonzo.Code.Relation.Nullary.C22 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name68 = "Relation.Nullary.Negation.∃⟶¬∀¬"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d68 = erased
name82 = "Relation.Nullary.Negation.∀⟶¬∃¬"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d82 = erased
name102 = "Relation.Nullary.Negation.¬∃⟶∀¬"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d102 = erased
name116 = "Relation.Nullary.Negation.∀¬⟶¬∃"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d116 = erased
name130 = "Relation.Nullary.Negation.∃¬⟶¬∀"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Data.Empty.T4
d130 = erased
name140 = "Relation.Nullary.Negation.¬¬-map"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d140 = erased
name146 = "Relation.Nullary.Negation.Stable"
d146 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d146 = erased
name154 = "Relation.Nullary.Negation.stable"
d154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  ((((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
     MAlonzo.Code.Data.Empty.T4) ->
    AgdaAny) ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d154 = erased
name164 = "Relation.Nullary.Negation.negated-stable"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
    MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d164 = erased
name176 = "Relation.Nullary.Negation.decidable-stable"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny
d176 v0 v1 v2 v3 = du176 v0 v2
du176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Nullary.T14 -> AgdaAny
du176 v0 v1
  = case coe v1 of
      MAlonzo.Code.Relation.Nullary.C22 v2 -> coe v2
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
      _ -> MAlonzo.RTE.mazUnreachableError
name190 = "Relation.Nullary.Negation.¬-drop-Dec"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
d190 v0 v1 v2 = du190 v2
du190 ::
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
du190 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1
        -> coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased
      MAlonzo.Code.Relation.Nullary.C26
        -> coe (MAlonzo.Code.Relation.Nullary.C22 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name200 = "Relation.Nullary.Negation.¬¬-Monad"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Category.Monad.Indexed.T14
d200 v0 = du200
du200 :: MAlonzo.Code.Category.Monad.Indexed.T14
du200
  = coe
      (MAlonzo.Code.Category.Monad.Indexed.C15
         (coe
            (\ v0 v1 v2 v3 ->
               coe MAlonzo.Code.Data.Empty.d10 () erased erased))
         (coe
            (\ v0 v1 v2 v3 v4 v5 v6 v7 ->
               coe MAlonzo.Code.Data.Empty.d10 () erased erased)))
name218 = "Relation.Nullary.Negation.¬¬-push"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (((AgdaAny -> AgdaAny) -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d218 = erased
name232 = "Relation.Nullary.Negation.excluded-middle"
d232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Relation.Nullary.T14 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d232 = erased
name246 = "Relation.Nullary.Negation.call/cc"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  ((AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
   MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d246 = erased
name268 = "Relation.Nullary.Negation.independence-of-premise"
d268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d268 = erased
name280 = "Relation.Nullary.Negation._.helper"
d280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d280 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du280 v2 v6 v7 v8
du280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du280 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Relation.Nullary.C22 v4
        -> coe
             (MAlonzo.Code.Data.Product.du184
                (coe (\ v5 -> v5)) (coe (\ v5 v6 v7 -> v6)) (coe v2 v4))
      MAlonzo.Code.Relation.Nullary.C26
        -> coe
             (MAlonzo.Code.Agda.Builtin.Sigma.C32
                (coe v1)
                (coe (\ v5 -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased)))
      _ -> MAlonzo.RTE.mazUnreachableError
name298 = "Relation.Nullary.Negation.independence-of-premise-⊎"
d298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  (AgdaAny ->
   MAlonzo.Code.Data.Sum.Base.T14 AgdaAny AgdaAny AgdaAny AgdaAny) ->
  (MAlonzo.Code.Data.Sum.Base.T14
     AgdaAny AgdaAny (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Empty.T4
d298 = erased
name308 = "Relation.Nullary.Negation._.helper"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  (AgdaAny ->
   MAlonzo.Code.Data.Sum.Base.T14 AgdaAny AgdaAny AgdaAny AgdaAny) ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Data.Sum.Base.T14
    AgdaAny AgdaAny (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
d308 v0 v1 v2 v3 v4 v5 v6 v7 = du308 v1 v6 v7
du308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny ->
   MAlonzo.Code.Data.Sum.Base.T14 AgdaAny AgdaAny AgdaAny AgdaAny) ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Data.Sum.Base.T14
    AgdaAny AgdaAny (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
du308 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Relation.Nullary.C22 v3
        -> coe
             MAlonzo.Code.Data.Sum.Base.du108 (\ v4 v5 -> v4) (\ v4 v5 -> v4)
             (coe v1 v3)
      MAlonzo.Code.Relation.Nullary.C26
        -> coe
             (MAlonzo.Code.Data.Sum.Base.C26
                (coe (\ v4 -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased)))
      _ -> MAlonzo.RTE.mazUnreachableError
name348 = "Relation.Nullary.Negation.Excluded-Middle"
d348 :: MAlonzo.Code.Agda.Primitive.T4 -> ()
d348 = erased
name356 = "Relation.Nullary.Negation.Double-Negation-Elimination"
d356 :: MAlonzo.Code.Agda.Primitive.T4 -> ()
d356 = erased
