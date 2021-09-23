{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.These where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

name12 = "Data.These.These"
d12 a0 a1 a2 a3 = ()
data T12 = C22 AgdaAny | C24 AgdaAny | C26 AgdaAny AgdaAny
name48 = "Data.These.map"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  () -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T12 -> T12
d48 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du48 v8 v9 v10
du48 :: (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T12 -> T12
du48 v0 v1 v2
  = case coe v2 of
      C22 v3 -> coe (C22 (coe v0 v3))
      C24 v3 -> coe (C24 (coe v1 v3))
      C26 v3 v4 -> coe (C26 (coe v0 v3) (coe v1 v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name84 = "Data.These.map₁"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> T12 -> T12
d84 v0 v1 v2 v3 v4 v5 v6 = du84 v6
du84 :: (AgdaAny -> AgdaAny) -> T12 -> T12
du84 v0 = coe (du48 (coe v0) (coe (\ v1 -> v1)))
name102 = "Data.These.map₂"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> T12 -> T12
d102 v0 v1 v2 v3 v4 v5 = du102
du102 :: (AgdaAny -> AgdaAny) -> T12 -> T12
du102 = coe (du48 (coe (\ v0 -> v0)))
name120 = "Data.These._.fold"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T12 -> AgdaAny
d120 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du120 v6 v7 v8 v9
du120 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T12 -> AgdaAny
du120 v0 v1 v2 v3
  = case coe v3 of
      C22 v4 -> coe v0 v4
      C24 v4 -> coe v1 v4
      C26 v4 v5 -> coe v2 v4 v5
      _ -> MAlonzo.RTE.mazUnreachableError
name148 = "Data.These._.swap"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> T12 -> T12
d148 v0 v1 v2 v3 = du148
du148 :: T12 -> T12
du148
  = coe
      (du120
         (coe C24) (coe C22) (coe (\ v0 v1 -> C26 (coe v1) (coe v0))))
name178 = "Data.These._.alignWith"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () -> (T12 -> AgdaAny) -> (T12 -> AgdaAny) -> T12 -> T12 -> T12
d178 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du178 v12 v13 v14 v15
du178 :: (T12 -> AgdaAny) -> (T12 -> AgdaAny) -> T12 -> T12 -> T12
du178 v0 v1 v2 v3
  = case coe v2 of
      C22 v4
        -> case coe v3 of
             C22 v5 -> coe (C22 (coe v0 (C26 (coe v4) (coe v5))))
             C24 v5 -> coe (C26 (coe v0 v2) (coe v1 v3))
             C26 v5 v6
               -> coe
                    (C26 (coe v0 (C26 (coe v4) (coe v5))) (coe v1 (C24 (coe v6))))
             _ -> MAlonzo.RTE.mazUnreachableError
      C24 v4
        -> case coe v3 of
             C22 v5 -> coe (C26 (coe v0 (C24 (coe v5))) (coe v1 (C22 (coe v4))))
             C24 v5 -> coe (C24 (coe v1 (C26 (coe v4) (coe v5))))
             C26 v5 v6
               -> coe
                    (C26 (coe v0 (C24 (coe v5))) (coe v1 (C26 (coe v4) (coe v6))))
             _ -> MAlonzo.RTE.mazUnreachableError
      C26 v4 v5
        -> case coe v3 of
             C22 v6
               -> coe
                    (C26 (coe v0 (C26 (coe v4) (coe v6))) (coe v1 (C22 (coe v5))))
             C24 v6
               -> coe
                    (C26 (coe v0 (C22 (coe v4))) (coe v1 (C26 (coe v5) (coe v6))))
             C26 v6 v7
               -> coe
                    (C26
                       (coe v0 (C26 (coe v4) (coe v6))) (coe v1 (C26 (coe v5) (coe v7))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name264 = "Data.These._.align"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> () -> () -> T12 -> T12 -> T12
d264 v0 v1 v2 v3 v4 v5 v6 v7 = du264
du264 :: T12 -> T12 -> T12
du264 = coe (du178 (coe (\ v0 -> v0)) (coe (\ v0 -> v0)))
name274 = "Data.These._.leftMost"
d274 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T12 -> AgdaAny
d274 v0 v1 = du274
du274 :: T12 -> AgdaAny
du274
  = coe
      (du120 (coe (\ v0 -> v0)) (coe (\ v0 -> v0)) (coe (\ v0 v1 -> v0)))
name276 = "Data.These._.rightMost"
d276 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T12 -> AgdaAny
d276 v0 v1 = du276
du276 :: T12 -> AgdaAny
du276
  = coe
      (du120 (coe (\ v0 -> v0)) (coe (\ v0 -> v0)) (coe (\ v0 v1 -> v1)))
name278 = "Data.These._.mergeThese"
d278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> T12 -> AgdaAny
d278 v0 v1 = du278
du278 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T12 -> AgdaAny
du278 = coe (du120 (coe (\ v0 -> v0)) (coe (\ v0 -> v0)))
