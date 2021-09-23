{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Maybe.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.These
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Nullary

type AgdaMaybe a b = Maybe b
name10 = "Data.Maybe.Base.Maybe"
d10 a0 a1 = ()
type T10 a0 a1 = MAlonzo.Code.Data.Maybe.Base.AgdaMaybe a0 a1
pattern C18 a0 = Just a0
pattern C20 = Nothing
check18 :: forall xa. forall xA. xA -> T10 xa xA
check18 = Just
check20 :: forall xa. forall xA. T10 xa xA
check20 = Nothing
cover10 :: MAlonzo.Code.Data.Maybe.Base.AgdaMaybe a1 a2 -> ()
cover10 x
  = case x of
      Just _ -> ()
      Nothing -> ()
name30 = "Data.Maybe.Base.just-injective"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d30 = erased
name32 = "Data.Maybe.Base.boolToMaybe"
d32 :: Bool -> T10 AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T6
d32 v0 = if coe v0 then coe (C18 erased) else coe C20
name38 = "Data.Maybe.Base.is-just"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T10 AgdaAny AgdaAny -> Bool
d38 v0 v1 v2 = du38 v2
du38 :: T10 AgdaAny AgdaAny -> Bool
du38 v0
  = case coe v0 of
      C18 v1 -> coe MAlonzo.Code.Agda.Builtin.Bool.C10
      C20 -> coe MAlonzo.Code.Agda.Builtin.Bool.C8
      _ -> MAlonzo.RTE.mazUnreachableError
name44 = "Data.Maybe.Base.is-nothing"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T10 AgdaAny AgdaAny -> Bool
d44 v0 v1 v2 = du44 v2
du44 :: T10 AgdaAny AgdaAny -> Bool
du44 v0
  = coe (MAlonzo.Code.Data.Bool.Base.d6 (coe (du38 (coe v0))))
name50 = "Data.Maybe.Base.decToMaybe"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T14 -> T10 AgdaAny AgdaAny
d50 v0 v1 v2 = du50 v2
du50 :: MAlonzo.Code.Relation.Nullary.T14 -> T10 AgdaAny AgdaAny
du50 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1 -> coe (C18 (coe v1))
      MAlonzo.Code.Relation.Nullary.C26 -> coe C20
      _ -> MAlonzo.RTE.mazUnreachableError
name66 = "Data.Maybe.Base.maybe"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (T10 AgdaAny AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T10 AgdaAny AgdaAny -> AgdaAny
d66 v0 v1 v2 v3 v4 v5 v6 = du66 v4 v5 v6
du66 ::
  (AgdaAny -> AgdaAny) -> AgdaAny -> T10 AgdaAny AgdaAny -> AgdaAny
du66 v0 v1 v2
  = case coe v2 of
      C18 v3 -> coe v0 v3
      C20 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name86 = "Data.Maybe.Base.maybe′"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T10 AgdaAny AgdaAny -> AgdaAny
d86 v0 v1 v2 v3 = du86
du86 ::
  (AgdaAny -> AgdaAny) -> AgdaAny -> T10 AgdaAny AgdaAny -> AgdaAny
du86 = coe du66
name92 = "Data.Maybe.Base.fromMaybe"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> T10 AgdaAny AgdaAny -> AgdaAny
d92 v0 v1 = du92
du92 :: AgdaAny -> T10 AgdaAny AgdaAny -> AgdaAny
du92 = coe du86 (\ v0 -> v0)
name102 = "Data.Maybe.Base._.From-just"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T10 AgdaAny AgdaAny -> ()
d102 = erased
name106 = "Data.Maybe.Base._.from-just"
d106 :: T10 AgdaAny AgdaAny -> AgdaAny
d106 v0
  = case coe v0 of
      C18 v1 -> coe v1
      C20 -> coe (MAlonzo.Code.Level.C20 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name118 = "Data.Maybe.Base.map"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) -> T10 AgdaAny AgdaAny -> T10 AgdaAny AgdaAny
d118 v0 v1 v2 v3 v4 = du118 v4
du118 ::
  (AgdaAny -> AgdaAny) -> T10 AgdaAny AgdaAny -> T10 AgdaAny AgdaAny
du118 v0 = coe (du66 (coe (\ v1 -> C18 (coe v0 v1))) (coe C20))
name130 = "Data.Maybe.Base.Any"
d130 a0 a1 a2 a3 a4 = ()
newtype T130 = C144 AgdaAny
name154 = "Data.Maybe.Base.All"
d154 a0 a1 a2 a3 a4 = ()
data T154 = C168 AgdaAny | C170
name176 = "Data.Maybe.Base.Is-just"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T10 AgdaAny AgdaAny -> ()
d176 = erased
name184 = "Data.Maybe.Base.Is-nothing"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T10 AgdaAny AgdaAny -> ()
d184 = erased
name194 = "Data.Maybe.Base.to-witness"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T10 AgdaAny AgdaAny -> T130 -> AgdaAny
d194 v0 v1 v2 v3 = du194 v2 v3
du194 :: T10 AgdaAny AgdaAny -> T130 -> AgdaAny
du194 v0 v1
  = coe
      (seq
         (coe v1)
         (case coe v0 of
            C18 v2 -> coe v2
            _ -> MAlonzo.RTE.mazUnreachableError))
name204 = "Data.Maybe.Base.to-witness-T"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T10 AgdaAny AgdaAny -> AgdaAny -> AgdaAny
d204 v0 v1 v2 v3 = du204 v2
du204 :: T10 AgdaAny AgdaAny -> AgdaAny
du204 v0
  = case coe v0 of
      C18 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name224 = "Data.Maybe.Base._.alignWith"
d224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  (MAlonzo.Code.Data.These.T12 -> AgdaAny) ->
  T10 AgdaAny AgdaAny -> T10 AgdaAny AgdaAny -> T10 AgdaAny AgdaAny
d224 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du224 v6 v7 v8
du224 ::
  (MAlonzo.Code.Data.These.T12 -> AgdaAny) ->
  T10 AgdaAny AgdaAny -> T10 AgdaAny AgdaAny -> T10 AgdaAny AgdaAny
du224 v0 v1 v2
  = case coe v1 of
      C18 v3
        -> case coe v2 of
             C18 v4
               -> coe
                    (C18 (coe v0 (MAlonzo.Code.Data.These.C26 (coe v3) (coe v4))))
             C20 -> coe (C18 (coe v0 (MAlonzo.Code.Data.These.C22 (coe v3))))
             _ -> MAlonzo.RTE.mazUnreachableError
      C20
        -> case coe v2 of
             C18 v3 -> coe (C18 (coe v0 (MAlonzo.Code.Data.These.C24 (coe v3))))
             C20 -> coe v2
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name242 = "Data.Maybe.Base._.zipWith"
d242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T10 AgdaAny AgdaAny -> T10 AgdaAny AgdaAny -> T10 AgdaAny AgdaAny
d242 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du242 v6 v7 v8
du242 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T10 AgdaAny AgdaAny -> T10 AgdaAny AgdaAny -> T10 AgdaAny AgdaAny
du242 v0 v1 v2
  = let v3 = C20 in
    case coe v1 of
      C18 v4
        -> case coe v2 of
             C18 v5 -> coe (C18 (coe v0 v4 v5))
             _ -> coe v3
      _ -> coe v3
name262 = "Data.Maybe.Base._.align"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  T10 AgdaAny AgdaAny ->
  T10 AgdaAny AgdaAny -> T10 AgdaAny MAlonzo.Code.Data.These.T12
d262 v0 v1 v2 v3 = du262
du262 ::
  T10 AgdaAny AgdaAny ->
  T10 AgdaAny AgdaAny -> T10 AgdaAny MAlonzo.Code.Data.These.T12
du262 = coe (du224 (coe (\ v0 -> v0)))
name264 = "Data.Maybe.Base._.zip"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  T10 AgdaAny AgdaAny ->
  T10 AgdaAny AgdaAny ->
  T10 AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T14
d264 v0 v1 v2 v3 = du264
du264 ::
  T10 AgdaAny AgdaAny ->
  T10 AgdaAny AgdaAny ->
  T10 AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T14
du264 = coe (du242 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32))
