{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Nat.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Morphism
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PreorderReasoning
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable

name8 = "Data.Nat.Properties._._Absorbs_"
d8 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d8 = erased
name10 = "Data.Nat.Properties._._DistributesOver_"
d10 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d10 = erased
name12 = "Data.Nat.Properties._._DistributesOverʳ_"
d12 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d12 = erased
name14 = "Data.Nat.Properties._._DistributesOverˡ_"
d14 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d14 = erased
name18 = "Data.Nat.Properties._.Absorptive"
d18 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d18 = erased
name20 = "Data.Nat.Properties._.Associative"
d20 :: (Integer -> Integer -> Integer) -> ()
d20 = erased
name22 = "Data.Nat.Properties._.Commutative"
d22 :: (Integer -> Integer -> Integer) -> ()
d22 = erased
name28 = "Data.Nat.Properties._.Idempotent"
d28 :: (Integer -> Integer -> Integer) -> ()
d28 = erased
name32 = "Data.Nat.Properties._.Identity"
d32 :: Integer -> (Integer -> Integer -> Integer) -> ()
d32 = erased
name38 = "Data.Nat.Properties._.LeftIdentity"
d38 :: Integer -> (Integer -> Integer -> Integer) -> ()
d38 = erased
name42 = "Data.Nat.Properties._.LeftZero"
d42 :: Integer -> (Integer -> Integer -> Integer) -> ()
d42 = erased
name44 = "Data.Nat.Properties._.RightIdentity"
d44 :: Integer -> (Integer -> Integer -> Integer) -> ()
d44 = erased
name48 = "Data.Nat.Properties._.RightZero"
d48 :: Integer -> (Integer -> Integer -> Integer) -> ()
d48 = erased
name50 = "Data.Nat.Properties._.Selective"
d50 :: (Integer -> Integer -> Integer) -> ()
d50 = erased
name52 = "Data.Nat.Properties._.Zero"
d52 :: Integer -> (Integer -> Integer -> Integer) -> ()
d52 = erased
name100 = "Data.Nat.Properties._.IsCommutativeMonoid"
d100 a0 a1 = ()
name104 = "Data.Nat.Properties._.IsCommutativeSemiring"
d104 a0 a1 a2 a3 = ()
name106 = "Data.Nat.Properties._.IsCommutativeSemiringWithoutOne"
d106 a0 a1 a2 = ()
name108 = "Data.Nat.Properties._.IsDistributiveLattice"
d108 a0 a1 = ()
name114 = "Data.Nat.Properties._.IsLattice"
d114 a0 a1 = ()
name116 = "Data.Nat.Properties._.IsMonoid"
d116 a0 a1 = ()
name122 = "Data.Nat.Properties._.IsSemigroup"
d122 a0 = ()
name126 = "Data.Nat.Properties._.IsSemiring"
d126 a0 a1 a2 a3 = ()
name130 = "Data.Nat.Properties._.IsSemiringWithoutOne"
d130 a0 a1 a2 = ()
name996 = "Data.Nat.Properties.suc-injective"
d996 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d996 = erased
name998 = "Data.Nat.Properties._≟_"
d998 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d998 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe (MAlonzo.Code.Relation.Nullary.C22 erased)
             _ -> coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (\ v3 -> MAlonzo.Code.Relation.Nullary.C26) erased
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (d998 (coe v2) (coe v3))
name1022 = "Data.Nat.Properties.≡-isDecEquivalence"
d1022 :: MAlonzo.Code.Relation.Binary.T168
d1022
  = coe
      (MAlonzo.Code.Relation.Binary.C1251
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du68)
         (coe d998))
name1024 = "Data.Nat.Properties.≡-decSetoid"
d1024 :: MAlonzo.Code.Relation.Binary.T200
d1024
  = coe
      (\ v0 v1 v2 -> MAlonzo.Code.Relation.Binary.C1393 v2) erased erased
      d1022
name1030 = "Data.Nat.Properties.≤-pred"
d1030 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1030 v0 v1 v2 = du1030 v2
du1030 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1030 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1034 = "Data.Nat.Properties.≤-reflexive"
d1034 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d1034 v0 v1 v2 = du1034 v0
du1034 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1034 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C18 v4) erased erased
             (du1034 (coe v1))
name1038 = "Data.Nat.Properties.≤-refl"
d1038 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1038 v0 = coe (du1034 (coe v0))
name1040 = "Data.Nat.Properties.≤-antisym"
d1040 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1040 = erased
name1054 = "Data.Nat.Properties.≤-trans"
d1054 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1054 v0 v1 v2 v3 v4 = du1054 v3 v4
du1054 ::
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1054 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v7
               -> coe
                    (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased erased
                    (du1054 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1060 = "Data.Nat.Properties.≤-total"
d1060 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T14
    AgdaAny AgdaAny MAlonzo.Code.Data.Nat.Base.T6
    MAlonzo.Code.Data.Nat.Base.T6
d1060 v0 v1
  = case coe v0 of
      0 -> coe
             (MAlonzo.Code.Data.Sum.Base.C26
                (coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    (MAlonzo.Code.Data.Sum.Base.C30
                       (coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  let v4 = d1060 (coe v2) (coe v3) in
                  case coe v4 of
                    MAlonzo.Code.Data.Sum.Base.C26 v5
                      -> coe
                           (MAlonzo.Code.Data.Sum.Base.C26
                              (coe
                                 (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
                                 v5))
                    MAlonzo.Code.Data.Sum.Base.C30 v5
                      -> coe
                           (MAlonzo.Code.Data.Sum.Base.C30
                              (coe
                                 (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
                                 v5))
                    _ -> MAlonzo.RTE.mazUnreachableError
name1082 = "Data.Nat.Properties._≤?_"
d1082 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1082 v0 v1
  = case coe v0 of
      0 -> coe
             (MAlonzo.Code.Relation.Nullary.C22
                (coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (\ v3 -> MAlonzo.Code.Relation.Nullary.C26) erased
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  let v4 = d1082 (coe v2) (coe v3) in
                  case coe v4 of
                    MAlonzo.Code.Relation.Nullary.C22 v5
                      -> coe
                           (MAlonzo.Code.Relation.Nullary.C22
                              (coe
                                 (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
                                 v5))
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe (\ v6 -> MAlonzo.Code.Relation.Nullary.C26) erased
                    _ -> MAlonzo.RTE.mazUnreachableError
name1106 = "Data.Nat.Properties._≥?_"
d1106 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1106 v0 v1 = coe (d1082 (coe v1) (coe v0))
name1108 = "Data.Nat.Properties.≤-isPreorder"
d1108 :: MAlonzo.Code.Relation.Binary.T16
d1108
  = coe
      (MAlonzo.Code.Relation.Binary.C17
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du68)
         (coe d1034) (coe d1054))
name1110 = "Data.Nat.Properties.≤-preorder"
d1110 :: MAlonzo.Code.Relation.Binary.T74
d1110
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C807 v3) erased
      erased erased d1108
name1112 = "Data.Nat.Properties.≤-isPartialOrder"
d1112 :: MAlonzo.Code.Relation.Binary.T250
d1112 = coe (MAlonzo.Code.Relation.Binary.C1577 (coe d1108) erased)
name1114 = "Data.Nat.Properties.≤-poset"
d1114 :: MAlonzo.Code.Relation.Binary.T304
d1114
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1911 v3) erased
      erased erased d1112
name1116 = "Data.Nat.Properties.≤-isTotalOrder"
d1116 :: MAlonzo.Code.Relation.Binary.T870
d1116
  = coe (MAlonzo.Code.Relation.Binary.C5399 (coe d1112) (coe d1060))
name1118 = "Data.Nat.Properties.≤-totalOrder"
d1118 :: MAlonzo.Code.Relation.Binary.T928
d1118
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C5785 v3) erased
      erased erased d1116
name1120 = "Data.Nat.Properties.≤-isDecTotalOrder"
d1120 :: MAlonzo.Code.Relation.Binary.T1004
d1120
  = coe
      (MAlonzo.Code.Relation.Binary.C6143
         (coe d1116) (coe d998) (coe d1082))
name1122 = "Data.Nat.Properties.≤-decTotalOrder"
d1122 :: MAlonzo.Code.Relation.Binary.T1078
d1122
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C6701 v3) erased
      erased erased d1120
name1132 = "Data.Nat.Properties.s≤s-injective"
d1132 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1132 = erased
name1134 = "Data.Nat.Properties.≤-irrelevance"
d1134 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1134 = erased
name1144 = "Data.Nat.Properties.≤-step"
d1144 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1144 v0 v1 v2 = du1144 v2
du1144 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1144 v0 = coe v0
name1150 = "Data.Nat.Properties.n≤1+n"
d1150 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1150 v0 = coe (d1038 (coe v0))
name1154 = "Data.Nat.Properties.1+n≰n"
d1154 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1154 = erased
name1160 = "Data.Nat.Properties.n≤0⇒n≡0"
d1160 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1160 = erased
name1162 = "Data.Nat.Properties.pred-mono"
d1162 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1162 v0 v1 v2 = du1162 v2
du1162 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1162 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      MAlonzo.Code.Data.Nat.Base.C18 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1170 = "Data.Nat.Properties.≤pred⇒≤"
d1170 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1170 v0 v1 v2 = du1170 v1 v2
du1170 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1170 v0 v1 = coe (seq (coe v0) (coe v1))
name1186 = "Data.Nat.Properties.≤⇒pred≤"
d1186 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1186 v0 v1 v2 = du1186 v0 v2
du1186 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1186 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (du1054 (coe (d1150 (coe v2))) (coe v1))
name1194 = "Data.Nat.Properties.<-irrefl"
d1194 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1194 = erased
name1198 = "Data.Nat.Properties.<-asym"
d1198 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1198 = erased
name1204 = "Data.Nat.Properties.<-trans"
d1204 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1204 v0 v1 v2 v3 v4 = du1204 v1 v3 v4
du1204 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1204 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C18 v5
        -> case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C18 v8
               -> coe
                    (\ v9 v10 v11 -> MAlonzo.Code.Data.Nat.Base.C18 v11) erased erased
                    (du1054 (coe v5) (coe (du1186 (coe v0) (coe v8))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1210 = "Data.Nat.Properties.<-transʳ"
d1210 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1210 v0 v1 v2 v3 v4 = du1210 v3 v4
du1210 ::
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1210 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> coe
             (\ v5 v6 v7 -> MAlonzo.Code.Data.Nat.Base.C18 v7) erased erased
             (du1054 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name1216 = "Data.Nat.Properties.<-transˡ"
d1216 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1216 v0 v1 v2 v3 v4 = du1216 v3 v4
du1216 ::
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1216 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v7
               -> coe
                    (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased erased
                    (du1054 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1222 = "Data.Nat.Properties.<-cmp"
d1222 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Binary.Core.T322
d1222 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe
                    (\ v2 v3 v4 -> MAlonzo.Code.Relation.Binary.Core.C350 v3) erased
                    erased erased
             _ -> coe
                    (\ v2 v3 v4 -> MAlonzo.Code.Relation.Binary.Core.C342 v2)
                    (coe
                       (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C18 v4) erased erased
                       (coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased))
                    erased erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    (\ v3 v4 v5 -> MAlonzo.Code.Relation.Binary.Core.C358 v5) erased
                    erased
                    (coe
                       (\ v3 v4 v5 -> MAlonzo.Code.Data.Nat.Base.C18 v5) erased erased
                       (coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  let v4 = d1222 (coe v2) (coe v3) in
                  case coe v4 of
                    MAlonzo.Code.Relation.Binary.Core.C342 v5
                      -> coe
                           (\ v8 v9 v10 -> MAlonzo.Code.Relation.Binary.Core.C342 v8)
                           (coe
                              (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased erased
                              v5)
                           erased erased
                    MAlonzo.Code.Relation.Binary.Core.C350 v6
                      -> coe
                           (\ v8 v9 v10 -> MAlonzo.Code.Relation.Binary.Core.C350 v9) erased
                           erased erased
                    MAlonzo.Code.Relation.Binary.Core.C358 v7
                      -> coe
                           (\ v8 v9 v10 -> MAlonzo.Code.Relation.Binary.Core.C358 v10) erased
                           erased
                           (coe
                              (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased erased
                              v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
name1266 = "Data.Nat.Properties._<?_"
d1266 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1266 v0 v1
  = coe (d1082 (coe (addInt (coe (1 :: Integer)) (coe v0))) (coe v1))
name1272 = "Data.Nat.Properties._>?_"
d1272 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1272 v0 v1 = coe (d1266 (coe v1) (coe v0))
name1274 = "Data.Nat.Properties.<-resp₂-≡"
d1274 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1274
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4)))
name1280 = "Data.Nat.Properties.<-isStrictPartialOrder"
d1280 :: MAlonzo.Code.Relation.Binary.T564
d1280
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C3361 v0 v2 v3)
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du68 erased
      d1204 d1274
name1282 = "Data.Nat.Properties.<-strictPartialOrder"
d1282 :: MAlonzo.Code.Relation.Binary.T622
d1282
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C4079 v3) erased
      erased erased d1280
name1284 = "Data.Nat.Properties.<-isStrictTotalOrder"
d1284 :: MAlonzo.Code.Relation.Binary.T1196
d1284
  = coe
      (MAlonzo.Code.Relation.Binary.C7259
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du68)
         (coe d1204) (coe d1222))
name1286 = "Data.Nat.Properties.<-strictTotalOrder"
d1286 :: MAlonzo.Code.Relation.Binary.T1262
d1286
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C8433 v3) erased
      erased erased d1284
name1288 = "Data.Nat.Properties.<-irrelevance"
d1288 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1288 = erased
name1294 = "Data.Nat.Properties.<⇒≤pred"
d1294 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1294 v0 v1 v2 = du1294 v2
du1294 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1294 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1298 = "Data.Nat.Properties.<⇒≤"
d1298 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1298 v0 v1 v2 = du1298 v1 v2
du1298 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1298 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (du1054 (coe v4) (coe (d1038 (coe v5))))
      _ -> MAlonzo.RTE.mazUnreachableError
name1302 = "Data.Nat.Properties.<⇒≢"
d1302 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1302 = erased
name1306 = "Data.Nat.Properties.≤⇒≯"
d1306 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1306 = erased
name1312 = "Data.Nat.Properties.<⇒≱"
d1312 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1312 = erased
name1318 = "Data.Nat.Properties.<⇒≯"
d1318 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1318 = erased
name1324 = "Data.Nat.Properties.≰⇒≮"
d1324 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1324 = erased
name1330 = "Data.Nat.Properties.≰⇒>"
d1330 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1330 v0 v1 v2 = du1330 v0 v1
du1330 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1330 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    (\ v3 v4 v5 -> MAlonzo.Code.Data.Nat.Base.C18 v5) erased erased
                    (coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (du1330 (coe v2) (coe v3))
name1342 = "Data.Nat.Properties.≰⇒≥"
d1342 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1342 v0 v1 v2 = du1342 v0 v1
du1342 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1342 v0 v1
  = coe (du1298 (coe v0) (coe (du1330 (coe v0) (coe v1))))
name1344 = "Data.Nat.Properties.≮⇒≥"
d1344 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1344 v0 v1 v2 = du1344 v0 v1
du1344 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1344 v0 v1
  = case coe v1 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (du1344 (coe v3) (coe v2))
name1360 = "Data.Nat.Properties.≤∧≢⇒<"
d1360 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1360 v0 v1 v2 v3 = du1360 v1 v2
du1360 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1360 v0 v1
  = case coe v0 of
      0 -> coe
             (seq (coe v1) (coe MAlonzo.Code.Data.Empty.d10 () erased erased))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (coe (\ v4 -> MAlonzo.Code.Data.Nat.Base.C10) erased)
             MAlonzo.Code.Data.Nat.Base.C18 v5
               -> coe
                    (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
                    (du1360 (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name1376 = "Data.Nat.Properties.n≮n"
d1376 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1376 = erased
name1384 = "Data.Nat.Properties.m<n⇒n≢0"
d1384 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1384 = erased
name1390 = "Data.Nat.Properties.z≤′n"
d1390 :: Integer -> MAlonzo.Code.Data.Nat.Base.T122
d1390 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C126
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C132 v3) erased
             (d1390 (coe v1))
name1398 = "Data.Nat.Properties.s≤′s"
d1398 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T122
d1398 v0 v1 v2 = du1398 v2
du1398 ::
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T122
du1398 v0 = coe v0
name1402 = "Data.Nat.Properties.≤′⇒≤"
d1402 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T6
d1402 v0 v1 v2 = du1402 v0 v2
du1402 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T6
du1402 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C126 -> coe (d1038 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C132 v3
        -> coe (du1402 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name1406 = "Data.Nat.Properties.≤⇒≤′"
d1406 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T122
d1406 v0 v1 v2 = du1406 v1 v2
du1406 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T122
du1406 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10 -> coe (d1390 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (du1406 (coe v5) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name1418 = "Data.Nat.Properties.≤′-step-injective"
d1418 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 ->
  MAlonzo.Code.Data.Nat.Base.T122 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1418 = erased
name1420 = "Data.Nat.Properties._≤′?_"
d1420 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1420 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du98 (du1406 (coe v1))
      (du1402 (coe v0)) (d1082 (coe v0) (coe v1))
name1426 = "Data.Nat.Properties._<′?_"
d1426 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1426 v0 v1
  = coe (d1420 (coe (addInt (coe (1 :: Integer)) (coe v0))) (coe v1))
name1432 = "Data.Nat.Properties._≥′?_"
d1432 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1432 v0 v1 = coe (d1420 (coe v1) (coe v0))
name1434 = "Data.Nat.Properties._>′?_"
d1434 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1434 v0 v1 = coe (d1426 (coe v1) (coe v0))
name1436 = "Data.Nat.Properties.≤″⇒≤"
d1436 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 -> MAlonzo.Code.Data.Nat.Base.T6
d1436 v0 v1 v2 = du1436 v0 v2
du1436 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 -> MAlonzo.Code.Data.Nat.Base.T6
du1436 v0 v1
  = case coe v0 of
      0 -> coe
             (seq
                (coe v1) (coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C170 v3
               -> coe
                    (\ v5 v6 v7 -> MAlonzo.Code.Data.Nat.Base.C18 v7) erased erased
                    (du1436
                       (coe v2)
                       (coe (\ v5 v6 -> MAlonzo.Code.Data.Nat.Base.C170 v5) v3 erased))
             _ -> MAlonzo.RTE.mazUnreachableError
name1440 = "Data.Nat.Properties.≤⇒≤″"
d1440 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T156
d1440 v0 v1 v2 = du1440 v0 v1
du1440 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T156
du1440 v0 v1
  = coe
      (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C170 v2)
      (du1452 (coe v0) (coe v1)) erased
name1452 = "Data.Nat.Properties._.k"
d1452 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6 -> Integer
d1452 v0 v1 v2 v3 v4 v5 = du1452 v3 v4
du1452 :: Integer -> Integer -> Integer
du1452 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe (du1452 (coe v2) (coe v3))
name1470 = "Data.Nat.Properties._.proof"
d1470 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1470 = erased
name1474 = "Data.Nat.Properties._≤″?_"
d1474 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1474 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du98
      (\ v2 -> du1440 (coe v0) (coe v1)) (du1436 (coe v0))
      (d1082 (coe v0) (coe v1))
name1480 = "Data.Nat.Properties._<″?_"
d1480 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1480 v0 v1
  = coe (d1474 (coe (addInt (coe (1 :: Integer)) (coe v0))) (coe v1))
name1486 = "Data.Nat.Properties._≥″?_"
d1486 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1486 v0 v1 = coe (d1474 (coe v1) (coe v0))
name1488 = "Data.Nat.Properties._>″?_"
d1488 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1488 v0 v1 = coe (d1480 (coe v1) (coe v0))
name1494 = "Data.Nat.Properties.+-suc"
d1494 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1494 = erased
name1502 = "Data.Nat.Properties.+-assoc"
d1502 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1502 = erased
name1510 = "Data.Nat.Properties.+-identityˡ"
d1510 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1510 = erased
name1512 = "Data.Nat.Properties.+-identityʳ"
d1512 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1512 = erased
name1516 = "Data.Nat.Properties.+-identity"
d1516 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1516 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1518 = "Data.Nat.Properties.+-comm"
d1518 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1518 = erased
name1526 = "Data.Nat.Properties.+-isSemigroup"
d1526 :: MAlonzo.Code.Algebra.Structures.T74
d1526
  = coe
      (MAlonzo.Code.Algebra.Structures.C237
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du68)
         erased erased)
name1528 = "Data.Nat.Properties.+-semigroup"
d1528 :: MAlonzo.Code.Algebra.T28
d1528
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C77 v2 v3) erased erased
      addInt d1526
name1530 = "Data.Nat.Properties.+-0-isMonoid"
d1530 :: MAlonzo.Code.Algebra.Structures.T138
d1530
  = coe
      (MAlonzo.Code.Algebra.Structures.C741 (coe d1526) (coe d1516))
name1532 = "Data.Nat.Properties.+-0-monoid"
d1532 :: MAlonzo.Code.Algebra.T154
d1532
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C593 v2 v3 v4) erased
      erased addInt (0 :: Integer) d1530
name1534 = "Data.Nat.Properties.+-0-isCommutativeMonoid"
d1534 :: MAlonzo.Code.Algebra.Structures.T178
d1534
  = coe
      (MAlonzo.Code.Algebra.Structures.C1223 (coe d1526) erased erased)
name1536 = "Data.Nat.Properties.+-0-commutativeMonoid"
d1536 :: MAlonzo.Code.Algebra.T214
d1536
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C889 v2 v3 v4) erased
      erased addInt (0 :: Integer) d1534
name1538 = "Data.Nat.Properties.+-cancelˡ-≡"
d1538 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1538 = erased
name1546 = "Data.Nat.Properties.+-cancelʳ-≡"
d1546 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1546 = erased
name1548 = "Data.Nat.Properties.+-cancel-≡"
d1548 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1548 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1554 = "Data.Nat.Properties.m≢1+m+n"
d1554 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1554 = erased
name1564 = "Data.Nat.Properties.i+1+j≢i"
d1564 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1564 = erased
name1572 = "Data.Nat.Properties.i+j≡0⇒i≡0"
d1572 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1572 = erased
name1582 = "Data.Nat.Properties.i+j≡0⇒j≡0"
d1582 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1582 = erased
name1590 = "Data.Nat.Properties.+-cancelˡ-≤"
d1590 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1590 v0 v1 v2 v3 = du1590 v0 v3
du1590 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1590 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v5 -> coe (du1590 (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name1598 = "Data.Nat.Properties.+-cancelʳ-≤"
d1598 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1598 v0 v1 v2 v3 = du1598 v0 v3
du1598 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1598 v0 v1 = coe (du1590 (coe v0) (coe v1))
name1608 = "Data.Nat.Properties.+-cancel-≤"
d1608 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1608
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe d1590) (coe d1598))
name1616 = "Data.Nat.Properties.≤-stepsˡ"
d1616 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1616 v0 v1 v2 v3 = du1616 v3
du1616 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1616 v0 = coe v0
name1630 = "Data.Nat.Properties.≤-stepsʳ"
d1630 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1630 v0 v1 v2 v3 = du1630 v3
du1630 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1630 v0 = coe v0
name1644 = "Data.Nat.Properties.m≤m+n"
d1644 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1644 v0 v1 = du1644 v0
du1644 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1644 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C18 v4) erased erased
             (du1644 (coe v1))
name1656 = "Data.Nat.Properties.n≤m+n"
d1656 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1656 v0 v1 = du1656 v1
du1656 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1656 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C18 v4) erased erased
             (du1656 (coe v1))
name1672 = "Data.Nat.Properties.m+n≤o⇒m≤o"
d1672 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1672 v0 v1 v2 v3 = du1672 v0 v3
du1672 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1672 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v5
               -> coe
                    (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
                    (du1672 (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name1686 = "Data.Nat.Properties.m+n≤o⇒n≤o"
d1686 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1686 v0 v1 v2 v3 = du1686 v0 v2 v3
du1686 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1686 v0 v1 v2
  = case coe v0 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (du1686 (coe v3) (coe v1) (coe (du1298 (coe v1) (coe v2))))
name1694 = "Data.Nat.Properties.+-mono-≤"
d1694 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1694 v0 v1 v2 v3 v4 v5 = du1694 v3 v4 v5
du1694 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1694 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (du1054 (coe v2) (coe (du1656 (coe v0))))
      MAlonzo.Code.Data.Nat.Base.C18 v5
        -> coe
             (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
             (du1694 (coe v0) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name1708 = "Data.Nat.Properties.+-monoˡ-≤"
d1708 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1708 v0 v1 v2 v3 = du1708 v0 v3
du1708 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1708 v0 v1
  = coe (du1694 (coe v0) (coe v1) (coe (d1038 (coe v0))))
name1718 = "Data.Nat.Properties.+-monoʳ-≤"
d1718 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1718 v0 v1 v2 v3 = du1718 v0 v2 v3
du1718 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1718 v0 v1 v2
  = coe (du1694 (coe v1) (coe (d1038 (coe v0))) (coe v2))
name1724 = "Data.Nat.Properties.+-mono-<-≤"
d1724 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1724 v0 v1 v2 v3 v4 v5 = du1724 v4 v5
du1724 ::
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1724 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> case coe v4 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased v1
             MAlonzo.Code.Data.Nat.Base.C18 v7
               -> coe
                    (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased erased
                    (du1724
                       (coe
                          (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased erased
                          v7)
                       (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1734 = "Data.Nat.Properties.+-mono-≤-<"
d1734 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1734 v0 v1 v2 v3 v4 v5 = du1734 v3 v4 v5
du1734 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1734 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (du1054 (coe v2) (coe (du1656 (coe v0))))
      MAlonzo.Code.Data.Nat.Base.C18 v5
        -> coe
             (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
             (du1734 (coe v0) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name1744 = "Data.Nat.Properties.+-mono-<"
d1744 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1744 v0 v1 v2 v3 v4 = du1744 v1 v3 v4
du1744 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1744 v0 v1 v2
  = coe (du1734 (coe v1) (coe (du1298 (coe v0) (coe v2))))
name1752 = "Data.Nat.Properties.+-monoˡ-<"
d1752 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1752 v0 v1 v2 = du1752 v0
du1752 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1752 v0 = coe (du1708 (coe v0))
name1760 = "Data.Nat.Properties.+-monoʳ-<"
d1760 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1760 v0 v1 v2 v3 = du1760 v0 v3
du1760 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1760 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v3 v4 v5 -> MAlonzo.Code.Data.Nat.Base.C18 v5) erased erased
             (du1760 (coe v2) (coe v1))
name1772 = "Data.Nat.Properties.i+1+j≰i"
d1772 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1772 = erased
name1782 = "Data.Nat.Properties.m+n≮n"
d1782 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1782 = erased
name1796 = "Data.Nat.Properties.m+n≮m"
d1796 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1796 = erased
name1808 = "Data.Nat.Properties.m≤′m+n"
d1808 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T122
d1808 v0 v1
  = coe
      (du1406 (coe (addInt (coe v0) (coe v1))) (coe (du1644 (coe v0))))
name1818 = "Data.Nat.Properties.n≤′m+n"
d1818 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T122
d1818 v0 v1 = du1818 v0
du1818 :: Integer -> MAlonzo.Code.Data.Nat.Base.T122
du1818 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C126
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C132 v3) erased
             (du1818 (coe v1))
name1830 = "Data.Nat.Properties.+-*-suc"
d1830 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1830 = erased
name1842 = "Data.Nat.Properties.*-identityˡ"
d1842 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1842 = erased
name1846 = "Data.Nat.Properties.*-identityʳ"
d1846 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1846 = erased
name1850 = "Data.Nat.Properties.*-identity"
d1850 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1850 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1852 = "Data.Nat.Properties.*-zeroˡ"
d1852 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1852 = erased
name1854 = "Data.Nat.Properties.*-zeroʳ"
d1854 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1854 = erased
name1858 = "Data.Nat.Properties.*-zero"
d1858 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1858 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1860 = "Data.Nat.Properties.*-comm"
d1860 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1860 = erased
name1870 = "Data.Nat.Properties.*-distribʳ-+"
d1870 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1870 = erased
name1884 = "Data.Nat.Properties.*-distribˡ-+"
d1884 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1884 = erased
name1886 = "Data.Nat.Properties.*-distrib-+"
d1886 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1886 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1888 = "Data.Nat.Properties.*-assoc"
d1888 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1888 = erased
name1902 = "Data.Nat.Properties.*-isSemigroup"
d1902 :: MAlonzo.Code.Algebra.Structures.T74
d1902
  = coe
      (MAlonzo.Code.Algebra.Structures.C237
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du68)
         erased erased)
name1904 = "Data.Nat.Properties.*-semigroup"
d1904 :: MAlonzo.Code.Algebra.T28
d1904
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C77 v2 v3) erased erased
      mulInt d1902
name1906 = "Data.Nat.Properties.*-1-isMonoid"
d1906 :: MAlonzo.Code.Algebra.Structures.T138
d1906
  = coe
      (MAlonzo.Code.Algebra.Structures.C741 (coe d1902) (coe d1850))
name1908 = "Data.Nat.Properties.*-1-monoid"
d1908 :: MAlonzo.Code.Algebra.T154
d1908
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C593 v2 v3 v4) erased
      erased mulInt (1 :: Integer) d1906
name1910 = "Data.Nat.Properties.*-1-isCommutativeMonoid"
d1910 :: MAlonzo.Code.Algebra.Structures.T178
d1910
  = coe
      (MAlonzo.Code.Algebra.Structures.C1223 (coe d1902) erased erased)
name1912 = "Data.Nat.Properties.*-1-commutativeMonoid"
d1912 :: MAlonzo.Code.Algebra.T214
d1912
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C889 v2 v3 v4) erased
      erased mulInt (1 :: Integer) d1910
name1914 = "Data.Nat.Properties.*-+-isSemiring"
d1914 :: MAlonzo.Code.Algebra.Structures.T638
d1914
  = coe
      (MAlonzo.Code.Algebra.Structures.C6477
         (coe
            (MAlonzo.Code.Algebra.Structures.C5489
               (coe d1534) (coe d1906) (coe d1886)))
         (coe d1858))
name1916 = "Data.Nat.Properties.*-+-semiring"
d1916 :: MAlonzo.Code.Algebra.T896
d1916
  = coe
      (\ v0 v1 v2 v3 v4 v5 v6 ->
         MAlonzo.Code.Algebra.C3797 v2 v3 v4 v5 v6)
      erased erased addInt mulInt (0 :: Integer) (1 :: Integer) d1914
name1918 = "Data.Nat.Properties.*-+-isCommutativeSemiring"
d1918 :: MAlonzo.Code.Algebra.Structures.T804
d1918
  = coe
      (MAlonzo.Code.Algebra.Structures.C8117
         (coe d1534) (coe d1910) erased erased)
name1920 = "Data.Nat.Properties.*-+-commutativeSemiring"
d1920 :: MAlonzo.Code.Algebra.T1134
d1920
  = coe
      (\ v0 v1 v2 v3 v4 v5 v6 ->
         MAlonzo.Code.Algebra.C4777 v2 v3 v4 v5 v6)
      erased erased addInt mulInt (0 :: Integer) (1 :: Integer) d1918
name1928 = "Data.Nat.Properties.*-cancelʳ-≡"
d1928 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1928 = erased
name1950 = "Data.Nat.Properties.*-cancelˡ-≡"
d1950 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1950 = erased
name1964 = "Data.Nat.Properties.i*j≡0⇒i≡0∨j≡0"
d1964 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Sum.Base.T14
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Equality.T12
    MAlonzo.Code.Agda.Builtin.Equality.T12
d1964 v0 v1 v2 = du1964 v0
du1964 ::
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T14
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Equality.T12
    MAlonzo.Code.Agda.Builtin.Equality.T12
du1964 v0
  = case coe v0 of
      0 -> coe (MAlonzo.Code.Data.Sum.Base.C26 erased)
      _ -> coe (MAlonzo.Code.Data.Sum.Base.C30 erased)
name1982 = "Data.Nat.Properties.i*j≡1⇒i≡1"
d1982 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1982 = erased
name2002 = "Data.Nat.Properties.i*j≡1⇒j≡1"
d2002 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2002 = erased
name2016 = "Data.Nat.Properties.*-cancelʳ-≤"
d2016 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2016 v0 v1 v2 v3 = du2016 v0
du2016 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2016 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C18 v4) erased erased
             (du2016 (coe v1))
name2028 = "Data.Nat.Properties.*-mono-≤"
d2028 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2028 v0 v1 v2 v3 v4 v5 = du2028 v1 v3 v4 v5
du2028 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2028 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (\ v5 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      MAlonzo.Code.Data.Nat.Base.C18 v6
        -> let v7 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (du1694
                (coe (mulInt (coe v7) (coe v1))) (coe v3)
                (coe (du2028 (coe v7) (coe v1) (coe v6) (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name2038 = "Data.Nat.Properties.*-monoˡ-≤"
d2038 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2038 v0 v1 v2 v3 = du2038 v0 v2 v3
du2038 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2038 v0 v1 v2
  = coe (du2028 (coe v1) (coe v0) (coe v2) (coe (d1038 (coe v0))))
name2048 = "Data.Nat.Properties.*-monoʳ-≤"
d2048 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2048 v0 v1 v2 v3 = du2048 v0 v2 v3
du2048 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2048 v0 v1 v2
  = coe (du2028 (coe v0) (coe v1) (coe (d1038 (coe v0))) (coe v2))
name2054 = "Data.Nat.Properties.*-mono-<"
d2054 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2054 v0 v1 v2 v3 v4 v5 = du2054 v1 v3 v4 v5
du2054 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2054 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C18 v6
        -> case coe v6 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    (seq
                       (coe v3)
                       (coe
                          (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased erased
                          (coe (\ v8 -> MAlonzo.Code.Data.Nat.Base.C10) erased)))
             MAlonzo.Code.Data.Nat.Base.C18 v9
               -> case coe v3 of
                    MAlonzo.Code.Data.Nat.Base.C18 v12
                      -> coe
                           du1744 v1
                           (mulInt (coe (subInt (coe v0) (coe (1 :: Integer)))) (coe v1))
                           (coe
                              (\ v13 v14 v15 -> MAlonzo.Code.Data.Nat.Base.C18 v15) erased erased
                              v12)
                           (du2054
                              (coe (subInt (coe v0) (coe (1 :: Integer)))) (coe v1)
                              (coe
                                 (\ v13 v14 v15 -> MAlonzo.Code.Data.Nat.Base.C18 v15) erased erased
                                 v9)
                              (coe
                                 (\ v13 v14 v15 -> MAlonzo.Code.Data.Nat.Base.C18 v15) erased erased
                                 v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2066 = "Data.Nat.Properties.*-monoˡ-<"
d2066 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2066 v0 v1 v2 v3 = du2066 v0 v2 v3
du2066 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2066 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C18 v5
        -> case coe v5 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    (\ v7 v8 v9 -> MAlonzo.Code.Data.Nat.Base.C18 v9) erased erased
                    (coe (\ v7 -> MAlonzo.Code.Data.Nat.Base.C10) erased)
             MAlonzo.Code.Data.Nat.Base.C18 v8
               -> coe
                    (du1734
                       (coe
                          (mulInt
                             (coe (subInt (coe v1) (coe (1 :: Integer))))
                             (coe (addInt (coe (1 :: Integer)) (coe v0)))))
                       (coe (d1038 (coe (addInt (coe (1 :: Integer)) (coe v0)))))
                       (coe
                          (du2066
                             (coe v0) (coe (subInt (coe v1) (coe (1 :: Integer))))
                             (coe
                                (\ v9 v10 v11 -> MAlonzo.Code.Data.Nat.Base.C18 v11) erased erased
                                v8))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2078 = "Data.Nat.Properties.*-monoʳ-<"
d2078 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2078 v0 v1 v2 v3 = du2078 v0 v2 v3
du2078 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2078 v0 v1 v2
  = case coe v0 of
      0 -> case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C18 v5
               -> coe
                    (du1694
                       (coe (0 :: Integer))
                       (coe
                          (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased v5)
                       (coe (\ v6 -> MAlonzo.Code.Data.Nat.Base.C10) erased))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C18 v6
               -> coe
                    (du1694
                       (coe (mulInt (coe v0) (coe v1)))
                       (coe
                          (\ v7 v8 v9 -> MAlonzo.Code.Data.Nat.Base.C18 v9) erased erased v6)
                       (coe
                          (du1298
                             (coe (mulInt (coe v0) (coe v1)))
                             (coe
                                (du2078
                                   (coe v3) (coe v1)
                                   (coe
                                      (\ v7 v8 v9 -> MAlonzo.Code.Data.Nat.Base.C18 v9) erased
                                      erased v6))))))
             _ -> MAlonzo.RTE.mazUnreachableError
name2086 = "Data.Nat.Properties.^-identityʳ"
d2086 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2086 = erased
name2090 = "Data.Nat.Properties.^-zeroˡ"
d2090 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2090 = erased
name2100 = "Data.Nat.Properties.^-distribˡ-+-*"
d2100 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2100 = erased
name2118 = "Data.Nat.Properties.^-semigroup-morphism"
d2118 :: Integer -> MAlonzo.Code.Algebra.Morphism.T134
d2118 v0 = du2118
du2118 :: MAlonzo.Code.Algebra.Morphism.T134
du2118 = coe (MAlonzo.Code.Algebra.Morphism.C583 erased erased)
name2126 = "Data.Nat.Properties.^-monoid-morphism"
d2126 :: Integer -> MAlonzo.Code.Algebra.Morphism.T254
d2126 v0 = du2126
du2126 :: MAlonzo.Code.Algebra.Morphism.T254
du2126
  = coe (MAlonzo.Code.Algebra.Morphism.C861 (coe du2118) erased)
name2134 = "Data.Nat.Properties.^-*-assoc"
d2134 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2134 = erased
name2156 = "Data.Nat.Properties.i^j≡0⇒i≡0"
d2156 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2156 = erased
name2170 = "Data.Nat.Properties.i^j≡1⇒j≡0∨i≡1"
d2170 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Sum.Base.T14
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Equality.T12
    MAlonzo.Code.Agda.Builtin.Equality.T12
d2170 v0 v1 v2 = du2170 v1
du2170 ::
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T14
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Equality.T12
    MAlonzo.Code.Agda.Builtin.Equality.T12
du2170 v0
  = case coe v0 of
      0 -> coe (MAlonzo.Code.Data.Sum.Base.C26 erased)
      _ -> coe (MAlonzo.Code.Data.Sum.Base.C30 erased)
name2180 = "Data.Nat.Properties.⊔-assoc"
d2180 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2180 = erased
name2196 = "Data.Nat.Properties.⊔-identityˡ"
d2196 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2196 = erased
name2198 = "Data.Nat.Properties.⊔-identityʳ"
d2198 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2198 = erased
name2202 = "Data.Nat.Properties.⊔-identity"
d2202 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2202 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name2204 = "Data.Nat.Properties.⊔-comm"
d2204 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2204 = erased
name2214 = "Data.Nat.Properties.⊔-sel"
d2214 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T14
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Equality.T12
    MAlonzo.Code.Agda.Builtin.Equality.T12
d2214 v0 v1
  = case coe v0 of
      0 -> coe (MAlonzo.Code.Data.Sum.Base.C30 erased)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (MAlonzo.Code.Data.Sum.Base.C26 erased)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (d2214 (coe v2) (coe v3))
name2238 = "Data.Nat.Properties.⊔-idem"
d2238 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2238 = erased
name2240 = "Data.Nat.Properties.⊓-assoc"
d2240 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2240 = erased
name2256 = "Data.Nat.Properties.⊓-zeroˡ"
d2256 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2256 = erased
name2258 = "Data.Nat.Properties.⊓-zeroʳ"
d2258 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2258 = erased
name2262 = "Data.Nat.Properties.⊓-zero"
d2262 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2262 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name2264 = "Data.Nat.Properties.⊓-comm"
d2264 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2264 = erased
name2274 = "Data.Nat.Properties.⊓-sel"
d2274 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T14
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Equality.T12
    MAlonzo.Code.Agda.Builtin.Equality.T12
d2274 v0 v1
  = case coe v0 of
      0 -> coe (MAlonzo.Code.Data.Sum.Base.C26 erased)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (MAlonzo.Code.Data.Sum.Base.C30 erased)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (d2274 (coe v2) (coe v3))
name2298 = "Data.Nat.Properties.⊓-idem"
d2298 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2298 = erased
name2300 = "Data.Nat.Properties.⊓-distribʳ-⊔"
d2300 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2300 = erased
name2320 = "Data.Nat.Properties.⊓-distribˡ-⊔"
d2320 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2320 = erased
name2322 = "Data.Nat.Properties.⊓-distrib-⊔"
d2322 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2322 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name2324 = "Data.Nat.Properties.⊔-abs-⊓"
d2324 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2324 = erased
name2334 = "Data.Nat.Properties.⊓-abs-⊔"
d2334 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2334 = erased
name2346 = "Data.Nat.Properties.⊓-⊔-absorptive"
d2346 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2346 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name2348 = "Data.Nat.Properties.⊔-isSemigroup"
d2348 :: MAlonzo.Code.Algebra.Structures.T74
d2348
  = coe
      (MAlonzo.Code.Algebra.Structures.C237
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du68)
         erased erased)
name2350 = "Data.Nat.Properties.⊔-semigroup"
d2350 :: MAlonzo.Code.Algebra.T28
d2350
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C77 v2 v3) erased erased
      MAlonzo.Code.Data.Nat.Base.d74 d2348
name2352 = "Data.Nat.Properties.⊔-0-isCommutativeMonoid"
d2352 :: MAlonzo.Code.Algebra.Structures.T178
d2352
  = coe
      (MAlonzo.Code.Algebra.Structures.C1223 (coe d2348) erased erased)
name2354 = "Data.Nat.Properties.⊔-0-commutativeMonoid"
d2354 :: MAlonzo.Code.Algebra.T214
d2354
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C889 v2 v3 v4) erased
      erased MAlonzo.Code.Data.Nat.Base.d74 (0 :: Integer) d2352
name2356 = "Data.Nat.Properties.⊓-isSemigroup"
d2356 :: MAlonzo.Code.Algebra.Structures.T74
d2356
  = coe
      (MAlonzo.Code.Algebra.Structures.C237
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du68)
         erased erased)
name2358 = "Data.Nat.Properties.⊓-semigroup"
d2358 :: MAlonzo.Code.Algebra.T28
d2358
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C77 v2 v3) erased erased
      MAlonzo.Code.Data.Nat.Base.d74 d2348
name2360 = "Data.Nat.Properties.⊔-⊓-isSemiringWithoutOne"
d2360 :: MAlonzo.Code.Algebra.Structures.T476
d2360
  = coe
      (MAlonzo.Code.Algebra.Structures.C4615
         (coe d2352) (coe d2356) (coe d2322) (coe d2262))
name2362
  = "Data.Nat.Properties.⊔-⊓-isCommutativeSemiringWithoutOne"
d2362 :: MAlonzo.Code.Algebra.Structures.T724
d2362
  = coe (MAlonzo.Code.Algebra.Structures.C7481 (coe d2360) erased)
name2364 = "Data.Nat.Properties.⊔-⊓-commutativeSemiringWithoutOne"
d2364 :: MAlonzo.Code.Algebra.T1024
d2364
  = coe
      (\ v0 v1 v2 v3 v4 v5 -> MAlonzo.Code.Algebra.C4367 v2 v3 v4 v5)
      erased erased MAlonzo.Code.Data.Nat.Base.d74
      MAlonzo.Code.Data.Nat.Base.d84 (0 :: Integer) d2362
name2366 = "Data.Nat.Properties.⊓-⊔-isLattice"
d2366 :: MAlonzo.Code.Algebra.Structures.T1230
d2366
  = coe
      (MAlonzo.Code.Algebra.Structures.C14145
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du68)
         erased erased erased erased erased erased (coe d2346))
name2368 = "Data.Nat.Properties.⊓-⊔-lattice"
d2368 :: MAlonzo.Code.Algebra.T1696
d2368
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C7083 v2 v3 v4) erased
      erased MAlonzo.Code.Data.Nat.Base.d84
      MAlonzo.Code.Data.Nat.Base.d74 d2366
name2370 = "Data.Nat.Properties.⊓-⊔-isDistributiveLattice"
d2370 :: MAlonzo.Code.Algebra.Structures.T1282
d2370
  = coe (MAlonzo.Code.Algebra.Structures.C14487 (coe d2366) erased)
name2372 = "Data.Nat.Properties.⊓-⊔-distributiveLattice"
d2372 :: MAlonzo.Code.Algebra.T1754
d2372
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C7345 v2 v3 v4) erased
      erased MAlonzo.Code.Data.Nat.Base.d84
      MAlonzo.Code.Data.Nat.Base.d74 d2370
name2378 = "Data.Nat.Properties.m⊓n≤m"
d2378 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2378 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (d2378 (coe v2) (coe v3))
name2390 = "Data.Nat.Properties.m⊓n≤n"
d2390 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2390 v0 v1 = coe (d2378 (coe v1) (coe v0))
name2402 = "Data.Nat.Properties.m≤m⊔n"
d2402 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2402 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (d1038 (coe v0))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (d2402 (coe v2) (coe v3))
name2414 = "Data.Nat.Properties.n≤m⊔n"
d2414 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2414 v0 v1 = coe (d2402 (coe v1) (coe v0))
name2426 = "Data.Nat.Properties.m⊓n≤m⊔n"
d2426 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2426 v0 v1
  = case coe v0 of
      0 -> coe
             (d1038
                (coe
                   (MAlonzo.Code.Data.Nat.Base.d74 (coe (0 :: Integer)) (coe v1))))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    (d1038
                       (coe
                          (MAlonzo.Code.Data.Nat.Base.d74 (coe v0) (coe (0 :: Integer)))))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (d2426 (coe v2) (coe v3))
name2440 = "Data.Nat.Properties.m≤n⇒m⊓n≡m"
d2440 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2440 = erased
name2448 = "Data.Nat.Properties.m≤n⇒n⊓m≡m"
d2448 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2448 = erased
name2458 = "Data.Nat.Properties.m⊓n≡m⇒m≤n"
d2458 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d2458 v0 v1 v2 = du2458 v0 v1
du2458 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2458 v0 v1 = coe (d2390 (coe v0) (coe v1))
name2468 = "Data.Nat.Properties.m⊓n≡n⇒n≤m"
d2468 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d2468 v0 v1 v2 = du2468 v0 v1
du2468 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2468 v0 v1 = coe (d2378 (coe v0) (coe v1))
name2478 = "Data.Nat.Properties.m≤n⇒n⊔m≡n"
d2478 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2478 = erased
name2486 = "Data.Nat.Properties.m≤n⇒m⊔n≡n"
d2486 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2486 = erased
name2496 = "Data.Nat.Properties.n⊔m≡m⇒n≤m"
d2496 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d2496 v0 v1 v2 = du2496 v0 v1
du2496 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2496 v0 v1 = coe (d2402 (coe v1) (coe v0))
name2506 = "Data.Nat.Properties.n⊔m≡n⇒m≤n"
d2506 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d2506 v0 v1 v2 = du2506 v0 v1
du2506 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2506 v0 v1 = coe (d2414 (coe v1) (coe v0))
name2512 = "Data.Nat.Properties.⊔-mono-≤"
d2512 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2512 v0 v1 v2 v3 v4 v5
  = let v6 = d2214 (coe v0) (coe v2) in
    case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C26 v7
        -> coe (du1054 (coe v4) (coe (d2402 (coe v1) (coe v3))))
      MAlonzo.Code.Data.Sum.Base.C30 v7
        -> coe (du1054 (coe v5) (coe (d2414 (coe v1) (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name2570 = "Data.Nat.Properties.⊔-monoˡ-≤"
d2570 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2570 v0 v1 v2 v3
  = coe
      (d2512
         (coe v1) (coe v2) (coe v0) (coe v0) (coe v3)
         (coe (d1038 (coe v0))))
name2580 = "Data.Nat.Properties.⊔-monoʳ-≤"
d2580 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2580 v0 v1 v2 v3
  = coe
      (d2512
         (coe v0) (coe v0) (coe v1) (coe v2) (coe (d1038 (coe v0)))
         (coe v3))
name2586 = "Data.Nat.Properties.⊔-mono-<"
d2586 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2586 v0 v1 v2 v3
  = coe
      (d2512
         (coe (addInt (coe (1 :: Integer)) (coe v0))) (coe v1)
         (coe (addInt (coe (1 :: Integer)) (coe v2))) (coe v3))
name2588 = "Data.Nat.Properties.⊓-mono-≤"
d2588 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2588 v0 v1 v2 v3 v4 v5
  = let v6 = d2274 (coe v1) (coe v3) in
    case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C26 v7
        -> coe (du1054 (coe (d2378 (coe v0) (coe v2))) (coe v4))
      MAlonzo.Code.Data.Sum.Base.C30 v7
        -> coe (du1054 (coe (d2390 (coe v0) (coe v2))) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
name2646 = "Data.Nat.Properties.⊓-monoˡ-≤"
d2646 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2646 v0 v1 v2 v3
  = coe
      (d2588
         (coe v1) (coe v2) (coe v0) (coe v0) (coe v3)
         (coe (d1038 (coe v0))))
name2656 = "Data.Nat.Properties.⊓-monoʳ-≤"
d2656 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2656 v0 v1 v2 v3
  = coe
      (d2588
         (coe v0) (coe v0) (coe v1) (coe v2) (coe (d1038 (coe v0)))
         (coe v3))
name2662 = "Data.Nat.Properties.⊓-mono-<"
d2662 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2662 v0 v1 v2 v3
  = coe
      (d2588
         (coe (addInt (coe (1 :: Integer)) (coe v0))) (coe v1)
         (coe (addInt (coe (1 :: Integer)) (coe v2))) (coe v3))
name2668 = "Data.Nat.Properties.m⊔n≤m+n"
d2668 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2668 v0 v1
  = let v2 = d2214 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C26 v3 -> coe (du1644 (coe v0))
      MAlonzo.Code.Data.Sum.Base.C30 v3 -> coe (du1656 (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name2702 = "Data.Nat.Properties.m⊓n≤m+n"
d2702 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2702 v0 v1
  = let v2 = d2274 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C26 v3 -> coe (du1644 (coe v0))
      MAlonzo.Code.Data.Sum.Base.C30 v3 -> coe (du1656 (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name2732 = "Data.Nat.Properties.+-distribˡ-⊔"
d2732 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2732 = erased
name2744 = "Data.Nat.Properties.+-distribʳ-⊔"
d2744 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2744 = erased
name2746 = "Data.Nat.Properties.+-distrib-⊔"
d2746 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2746 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name2748 = "Data.Nat.Properties.+-distribˡ-⊓"
d2748 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2748 = erased
name2760 = "Data.Nat.Properties.+-distribʳ-⊓"
d2760 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2760 = erased
name2762 = "Data.Nat.Properties.+-distrib-⊓"
d2762 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2762 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name2770 = "Data.Nat.Properties.⊓-triangulate"
d2770 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2770 = erased
name2788 = "Data.Nat.Properties.⊔-triangulate"
d2788 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2788 = erased
name2800 = "Data.Nat.Properties.0∸n≡0"
d2800 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2800 = erased
name2804 = "Data.Nat.Properties.n∸n≡0"
d2804 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2804 = erased
name2812 = "Data.Nat.Properties.n∸m≤n"
d2812 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2812 v0 v1
  = case coe v0 of
      0 -> coe
             (d1038 (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v1 (0 :: Integer)))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    (d1038 (coe MAlonzo.Code.Agda.Builtin.Nat.d22 (0 :: Integer) v0))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (du1054 (coe (d2812 (coe v2) (coe v3))) (coe (d1150 (coe v3))))
name2826 = "Data.Nat.Properties.m≮m∸n"
d2826 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d2826 = erased
name2836 = "Data.Nat.Properties.∸-mono"
d2836 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2836 v0 v1 v2 v3 v4 v5
  = let v6
          = seq
              (coe v5) (coe (du1054 (coe (d2812 (coe v2) (coe v0))) (coe v4))) in
    case coe v4 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> case coe v5 of
             MAlonzo.Code.Data.Nat.Base.C18 v10
               -> case coe v2 of
                    _ | coe (geqInt (coe v2) (coe (1 :: Integer))) ->
                        case coe v3 of
                          _ | coe (geqInt (coe v3) (coe (1 :: Integer))) ->
                              coe (\ v11 -> MAlonzo.Code.Data.Nat.Base.C10) erased
                          _ -> coe v6
                    _ -> coe v6
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    (du1054
                       (coe (d2812 (coe v2) (coe v0)))
                       (coe (\ v9 -> MAlonzo.Code.Data.Nat.Base.C10) erased))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Nat.Base.C18 v9
        -> case coe v5 of
             MAlonzo.Code.Data.Nat.Base.C18 v12
               -> case coe v0 of
                    _ | coe (geqInt (coe v0) (coe (1 :: Integer))) ->
                        let v13 = subInt (coe v0) (coe (1 :: Integer)) in
                        case coe v1 of
                          _ | coe (geqInt (coe v1) (coe (1 :: Integer))) ->
                              let v14 = subInt (coe v1) (coe (1 :: Integer)) in
                              case coe v2 of
                                _ | coe (geqInt (coe v2) (coe (1 :: Integer))) ->
                                    let v15 = subInt (coe v2) (coe (1 :: Integer)) in
                                    case coe v3 of
                                      _ | coe (geqInt (coe v3) (coe (1 :: Integer))) ->
                                          let v16 = subInt (coe v3) (coe (1 :: Integer)) in
                                          coe
                                            (d2836
                                               (coe v13) (coe v14) (coe v15) (coe v16) (coe v9)
                                               (coe v12))
                                      _ -> coe v6
                                _ -> coe v6
                          _ -> coe v6
                    _ -> coe v6
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    (du1054
                       (coe (d2812 (coe v2) (coe v0)))
                       (coe
                          (\ v11 v12 v13 -> MAlonzo.Code.Data.Nat.Base.C18 v13) erased erased
                          v9))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2854 = "Data.Nat.Properties.∸-monoˡ-≤"
d2854 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2854 v0 v1 v2 v3
  = coe
      (d2836
         (coe v0) (coe v1) (coe v2) (coe v2) (coe v3)
         (coe (d1038 (coe v2))))
name2866 = "Data.Nat.Properties.∸-monoʳ-≤"
d2866 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2866 v0 v1 v2 v3
  = coe
      (d2836
         (coe v2) (coe v2) (coe v1) (coe v0) (coe (d1038 (coe v2)))
         (coe v3))
name2874 = "Data.Nat.Properties.m∸n≡0⇒m≤n"
d2874 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d2874 v0 v1 v2 = du2874 v0
du2874 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2874 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C18 v4) erased erased
             (du2874 (coe v1))
name2888 = "Data.Nat.Properties.m≤n⇒m∸n≡0"
d2888 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2888 = erased
name2900 = "Data.Nat.Properties.+-∸-comm"
d2900 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2900 = erased
name2920 = "Data.Nat.Properties.∸-+-assoc"
d2920 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2920 = erased
name2950 = "Data.Nat.Properties.+-∸-assoc"
d2950 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2950 = erased
name2970 = "Data.Nat.Properties.n≤m+n∸m"
d2970 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2970 v0 v1
  = case coe v1 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe (d1038 (coe v1))
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (d2970 (coe v3) (coe v2))
name2984 = "Data.Nat.Properties.m+n∸n≡m"
d2984 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2984 = erased
name2996 = "Data.Nat.Properties.m+n∸m≡n"
d2996 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2996 = erased
name3010 = "Data.Nat.Properties.m∸n+n≡m"
d3010 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3010 = erased
name3022 = "Data.Nat.Properties.m∸[m∸n]≡n"
d3022 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3022 = erased
name3038 = "Data.Nat.Properties.[i+j]∸[i+k]≡j∸k"
d3038 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3038 = erased
name3050 = "Data.Nat.Properties.*-distribʳ-∸"
d3050 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3050 = erased
name3070 = "Data.Nat.Properties.*-distribˡ-∸"
d3070 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3070 = erased
name3072 = "Data.Nat.Properties.*-distrib-∸"
d3072 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d3072 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name3078 = "Data.Nat.Properties.m⊓n+n∸m≡n"
d3078 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3078 = erased
name3092 = "Data.Nat.Properties.[m∸n]⊓[n∸m]≡0"
d3092 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3092 = erased
name3108 = "Data.Nat.Properties.∸-distribˡ-⊓-⊔"
d3108 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3108 = erased
name3134 = "Data.Nat.Properties.∸-distribʳ-⊓"
d3134 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3134 = erased
name3160 = "Data.Nat.Properties.∸-distribˡ-⊔-⊓"
d3160 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3160 = erased
name3184 = "Data.Nat.Properties.∸-distribʳ-⊔"
d3184 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3184 = erased
name3208 = "Data.Nat.Properties.n≡m⇒∣n-m∣≡0"
d3208 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3208 = erased
name3216 = "Data.Nat.Properties.m≤n⇒∣n-m∣≡n∸m"
d3216 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3216 = erased
name3226 = "Data.Nat.Properties.∣n-m∣≡0⇒n≡m"
d3226 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3226 = erased
name3244 = "Data.Nat.Properties.∣n-m∣≡n∸m⇒m≤n"
d3244 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d3244 v0 v1 v2 = du3244 v0 v1
du3244 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du3244 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (du3244 (coe v2) (coe v3))
name3262 = "Data.Nat.Properties.∣n-n∣≡0"
d3262 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3262 = erased
name3270 = "Data.Nat.Properties.∣n-n+m∣≡m"
d3270 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3270 = erased
name3284 = "Data.Nat.Properties.∣n+m-n+o∣≡∣m-o|"
d3284 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3284 = erased
name3300 = "Data.Nat.Properties.n∸m≤∣n-m∣"
d3300 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3300 v0 v1
  = let v2 = d1060 (coe v1) (coe v0) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C26 v3
        -> coe (d1038 (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v0 v1))
      MAlonzo.Code.Data.Sum.Base.C30 v3
        -> coe (\ v4 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> MAlonzo.RTE.mazUnreachableError
name3330 = "Data.Nat.Properties.∣n-m∣≤n⊔m"
d3330 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3330 v0 v1
  = case coe v0 of
      0 -> coe
             (d1038
                (coe
                   (MAlonzo.Code.Data.Nat.Base.d110 (coe (0 :: Integer)) (coe v1))))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    (d1038
                       (coe
                          (MAlonzo.Code.Data.Nat.Base.d110 (coe v0) (coe (0 :: Integer)))))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (d3330 (coe v2) (coe v3))
name3340 = "Data.Nat.Properties.∣-∣-comm"
d3340 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3340 = erased
name3354 = "Data.Nat.Properties.∣n-m∣≡[n∸m]∨[m∸n]"
d3354 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T14
    AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Equality.T12
    MAlonzo.Code.Agda.Builtin.Equality.T12
d3354 v0 v1 = coe (d1060 (coe v0) (coe v1))
name3382 = "Data.Nat.Properties.*-distribˡ-∣-∣-aux"
d3382 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3382 = erased
name3394 = "Data.Nat.Properties.*-distribˡ-∣-∣"
d3394 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3394 = erased
name3424 = "Data.Nat.Properties.*-distribʳ-∣-∣"
d3424 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3424 = erased
name3426 = "Data.Nat.Properties.*-distrib-∣-∣"
d3426 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d3426 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name3428 = "Data.Nat.Properties.⌊n/2⌋-mono"
d3428 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3428 v0 v1 v2 = du3428 v2
du3428 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3428 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      MAlonzo.Code.Data.Nat.Base.C18 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe (\ v5 -> MAlonzo.Code.Data.Nat.Base.C10) erased
             MAlonzo.Code.Data.Nat.Base.C18 v6
               -> coe
                    (\ v7 v8 v9 -> MAlonzo.Code.Data.Nat.Base.C18 v9) erased erased
                    (du3428 (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name3432 = "Data.Nat.Properties.⌈n/2⌉-mono"
d3432 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3432 v0 v1 v2 = du3432 v2
du3432 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3432 v0
  = coe
      (du3428
         (coe
            (\ v1 v2 v3 -> MAlonzo.Code.Data.Nat.Base.C18 v3) erased erased
            v0))
name3438 = "Data.Nat.Properties.⌈n/2⌉≤′n"
d3438 :: Integer -> MAlonzo.Code.Data.Nat.Base.T122
d3438 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C126
      1 -> coe MAlonzo.Code.Data.Nat.Base.C126
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C132 v3) erased
             (d3438 (coe v1))
name3444 = "Data.Nat.Properties.⌊n/2⌋≤′n"
d3444 :: Integer -> MAlonzo.Code.Data.Nat.Base.T122
d3444 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C126
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C132 v3) erased
             (d3438 (coe v1))
name3452 = "Data.Nat.Properties.eq?"
d3452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Function.Injection.T84 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d3452 v0 v1 v2 = du3452 v2
du3452 ::
  MAlonzo.Code.Function.Injection.T84 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du3452 v0
  = coe
      (MAlonzo.Code.Relation.Nullary.Decidable.du128 (coe v0) (coe d998))
name3460 = "Data.Nat.Properties.≤-Reasoning._._IsRelatedTo_"
d3460 a0 a1 = ()
name3462 = "Data.Nat.Properties.≤-Reasoning._._∎"
d3462 ::
  Integer -> MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
d3462
  = let v0
          = MAlonzo.Code.Relation.Binary.du986
              (coe (MAlonzo.Code.Relation.Binary.du1148 (coe d1122))) in
    coe
      (MAlonzo.Code.Relation.Binary.PreorderReasoning.du114
         (coe (MAlonzo.Code.Relation.Binary.du358 (coe v0))))
name3464 = "Data.Nat.Properties.≤-Reasoning._._≈⟨⟩_"
d3464 ::
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
d3464 v0 = coe v0
name3466 = "Data.Nat.Properties.≤-Reasoning._._≡⟨_⟩_"
d3466 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
d3466 v0 v1 v2 v3 v4 = du3466 v4
du3466 ::
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
du3466 v0 = coe v0
name3468 = "Data.Nat.Properties.≤-Reasoning._._∼⟨_⟩_"
d3468 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
d3468
  = let v0
          = MAlonzo.Code.Relation.Binary.du986
              (coe (MAlonzo.Code.Relation.Binary.du1148 (coe d1122))) in
    coe
      (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
         (coe (MAlonzo.Code.Relation.Binary.du358 (coe v0))))
name3470 = "Data.Nat.Properties.≤-Reasoning._.begin_"
d3470 ::
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Data.Nat.Base.T6
d3470 = coe MAlonzo.Code.Relation.Binary.PreorderReasoning.d66
name3484 = "Data.Nat.Properties.≤-Reasoning._<⟨_⟩_"
d3484 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52 ->
  MAlonzo.Code.Relation.Binary.PreorderReasoning.T52
d3484 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
         (coe
            (MAlonzo.Code.Relation.Binary.du358
               (coe
                  (MAlonzo.Code.Relation.Binary.du986
                     (coe (MAlonzo.Code.Relation.Binary.du1148 (coe d1122)))))))
         (coe (addInt (coe (1 :: Integer)) (coe v0))) (coe v1) (coe v2)
         (coe v3) (coe v4))
name3492 = "Data.Nat.Properties._*-mono_"
d3492 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3492 = coe d2028
name3494 = "Data.Nat.Properties._+-mono_"
d3494 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3494 = coe d1694
name3496 = "Data.Nat.Properties.+-right-identity"
d3496 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3496 = erased
name3498 = "Data.Nat.Properties.*-right-zero"
d3498 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3498 = erased
name3500 = "Data.Nat.Properties.distribʳ-*-+"
d3500 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3500 = erased
name3502 = "Data.Nat.Properties.*-distrib-∸ʳ"
d3502 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3502 = erased
name3504 = "Data.Nat.Properties.cancel-+-left"
d3504 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3504 = erased
name3506 = "Data.Nat.Properties.cancel-+-left-≤"
d3506 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3506 = coe d1590
name3508 = "Data.Nat.Properties.cancel-*-right"
d3508 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3508 = erased
name3510 = "Data.Nat.Properties.cancel-*-right-≤"
d3510 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3510 = coe d2016
name3512 = "Data.Nat.Properties.strictTotalOrder"
d3512 :: MAlonzo.Code.Relation.Binary.T1262
d3512 = coe d1286
name3514 = "Data.Nat.Properties.isCommutativeSemiring"
d3514 :: MAlonzo.Code.Algebra.Structures.T804
d3514 = coe d1918
name3516 = "Data.Nat.Properties.commutativeSemiring"
d3516 :: MAlonzo.Code.Algebra.T1134
d3516 = coe d1920
name3518 = "Data.Nat.Properties.isDistributiveLattice"
d3518 :: MAlonzo.Code.Algebra.Structures.T1282
d3518 = coe d2370
name3520 = "Data.Nat.Properties.distributiveLattice"
d3520 :: MAlonzo.Code.Algebra.T1754
d3520 = coe d2372
name3522 = "Data.Nat.Properties.⊔-⊓-0-isSemiringWithoutOne"
d3522 :: MAlonzo.Code.Algebra.Structures.T476
d3522 = coe d2360
name3524
  = "Data.Nat.Properties.⊔-⊓-0-isCommutativeSemiringWithoutOne"
d3524 :: MAlonzo.Code.Algebra.Structures.T724
d3524 = coe d2362
name3526
  = "Data.Nat.Properties.⊔-⊓-0-commutativeSemiringWithoutOne"
d3526 :: MAlonzo.Code.Algebra.T1024
d3526 = coe d2364
name3528 = "Data.Nat.Properties.¬i+1+j≤i"
d3528 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d3528 = erased
name3530 = "Data.Nat.Properties.≤-steps"
d3530 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3530 v0 v1 v2 v3 = du3530 v3
du3530 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3530 v0 = coe v0
name3538 = "Data.Nat.Properties.i∸k∸j+j∸k≡i+j∸k"
d3538 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3538 = erased
name3574 = "Data.Nat.Properties.im≡jm+n⇒[i∸j]m≡n"
d3574 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3574 = erased
name3590 = "Data.Nat.Properties.≤+≢⇒<"
d3590 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d3590 = coe d1360
name3873 = "Data.Nat.Properties..absurdlambda"
d3873 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d3873 = erased
name3917 = "Data.Nat.Properties..absurdlambda"
d3917 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d3917 = erased
name7345 = "Data.Nat.Properties..absurdlambda"
d7345 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d7345 = erased
name13827 = "Data.Nat.Properties..absurdlambda"
d13827 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d13827 = erased
name13851 = "Data.Nat.Properties..absurdlambda"
d13851 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d13851 = erased
name13885 = "Data.Nat.Properties..absurdlambda"
d13885 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d13885 = erased
name13927 = "Data.Nat.Properties..absurdlambda"
d13927 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d13927 = erased
name14003 = "Data.Nat.Properties..absurdlambda"
d14003 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d14003 = erased
name14013 = "Data.Nat.Properties..absurdlambda"
d14013 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d14013 = erased
name31517 = "Data.Nat.Properties..absurdlambda"
d31517 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d31517 = erased
