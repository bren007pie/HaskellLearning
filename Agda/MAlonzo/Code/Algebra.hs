{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

name6 = "Algebra.RawSemigroup"
d6 a0 a1 = ()
newtype T6 = C3 (AgdaAny -> AgdaAny -> AgdaAny)
name18 = "Algebra.RawSemigroup.Carrier"
d18 :: T6 -> ()
d18 = erased
name20 = "Algebra.RawSemigroup._≈_"
d20 :: T6 -> AgdaAny -> AgdaAny -> ()
d20 = erased
name22 = "Algebra.RawSemigroup._∙_"
d22 :: T6 -> AgdaAny -> AgdaAny -> AgdaAny
d22 v0
  = case coe v0 of
      C3 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name28 = "Algebra.Semigroup"
d28 a0 a1 = ()
data T28
  = C77 (AgdaAny -> AgdaAny -> AgdaAny)
        MAlonzo.Code.Algebra.Structures.T74
name42 = "Algebra.Semigroup.Carrier"
d42 :: T28 -> ()
d42 = erased
name44 = "Algebra.Semigroup._≈_"
d44 :: T28 -> AgdaAny -> AgdaAny -> ()
d44 = erased
name46 = "Algebra.Semigroup._∙_"
d46 :: T28 -> AgdaAny -> AgdaAny -> AgdaAny
d46 v0
  = case coe v0 of
      C77 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name48 = "Algebra.Semigroup.isSemigroup"
d48 :: T28 -> MAlonzo.Code.Algebra.Structures.T74
d48 v0
  = case coe v0 of
      C77 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name52 = "Algebra.Semigroup._.assoc"
d52 :: T28 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d52 v0
  = coe (MAlonzo.Code.Algebra.Structures.d86 (coe (d48 (coe v0))))
name54 = "Algebra.Semigroup._.isEquivalence"
d54 :: T28 -> MAlonzo.Code.Relation.Binary.Core.T578
d54 v0
  = coe (MAlonzo.Code.Algebra.Structures.d84 (coe (d48 (coe v0))))
name56 = "Algebra.Semigroup._.refl"
d56 :: T28 -> AgdaAny -> AgdaAny
d56 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe (MAlonzo.Code.Algebra.Structures.d84 (coe (d48 (coe v0))))))
name58 = "Algebra.Semigroup._.reflexive"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T28 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d58 v0 v1 v2 = du58 v2
du58 ::
  T28 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du58 v0
  = let v1 = d48 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d84 (coe v1))) v2)
name60 = "Algebra.Semigroup._.setoid"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T28 -> MAlonzo.Code.Relation.Binary.T128
d60 v0 v1 v2 = du60 v2
du60 :: T28 -> MAlonzo.Code.Relation.Binary.T128
du60 v0
  = coe (MAlonzo.Code.Algebra.Structures.du90 (coe (d48 (coe v0))))
name62 = "Algebra.Semigroup._.sym"
d62 :: T28 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d62 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe (MAlonzo.Code.Algebra.Structures.d84 (coe (d48 (coe v0))))))
name64 = "Algebra.Semigroup._.trans"
d64 ::
  T28 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d64 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe (MAlonzo.Code.Algebra.Structures.d84 (coe (d48 (coe v0))))))
name66 = "Algebra.Semigroup._.∙-cong"
d66 ::
  T28 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d66 v0
  = coe (MAlonzo.Code.Algebra.Structures.d88 (coe (d48 (coe v0))))
name68 = "Algebra.Semigroup.rawSemigroup"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T28 -> T6
d68 v0 v1 v2 = du68 v2
du68 :: T28 -> T6
du68 v0 = coe (\ v1 v2 v3 -> C3 v3) erased erased (d46 (coe v0))
name74 = "Algebra.Band"
d74 a0 a1 = ()
data T74
  = C283 (AgdaAny -> AgdaAny -> AgdaAny)
         MAlonzo.Code.Algebra.Structures.T104
name88 = "Algebra.Band.Carrier"
d88 :: T74 -> ()
d88 = erased
name90 = "Algebra.Band._≈_"
d90 :: T74 -> AgdaAny -> AgdaAny -> ()
d90 = erased
name92 = "Algebra.Band._∙_"
d92 :: T74 -> AgdaAny -> AgdaAny -> AgdaAny
d92 v0
  = case coe v0 of
      C283 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name94 = "Algebra.Band.isBand"
d94 :: T74 -> MAlonzo.Code.Algebra.Structures.T104
d94 v0
  = case coe v0 of
      C283 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name98 = "Algebra.Band._.assoc"
d98 :: T74 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d98 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe (MAlonzo.Code.Algebra.Structures.d112 (coe (d94 (coe v0))))))
name100 = "Algebra.Band._.idem"
d100 :: T74 -> AgdaAny -> AgdaAny
d100 v0
  = coe (MAlonzo.Code.Algebra.Structures.d114 (coe (d94 (coe v0))))
name102 = "Algebra.Band._.isEquivalence"
d102 :: T74 -> MAlonzo.Code.Relation.Binary.Core.T578
d102 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d84
         (coe (MAlonzo.Code.Algebra.Structures.d112 (coe (d94 (coe v0))))))
name104 = "Algebra.Band._.isSemigroup"
d104 :: T74 -> MAlonzo.Code.Algebra.Structures.T74
d104 v0
  = coe (MAlonzo.Code.Algebra.Structures.d112 (coe (d94 (coe v0))))
name106 = "Algebra.Band._.refl"
d106 :: T74 -> AgdaAny -> AgdaAny
d106 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d112 (coe (d94 (coe v0))))))))
name108 = "Algebra.Band._.reflexive"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T74 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d108 v0 v1 v2 = du108 v2
du108 ::
  T74 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du108 v0
  = let v1 = d94 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d112 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d84 (coe v2))) v3)
name110 = "Algebra.Band._.setoid"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T74 -> MAlonzo.Code.Relation.Binary.T128
d110 v0 v1 v2 = du110 v2
du110 :: T74 -> MAlonzo.Code.Relation.Binary.T128
du110 v0
  = let v1 = d94 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du90
         (coe (MAlonzo.Code.Algebra.Structures.d112 (coe v1))))
name112 = "Algebra.Band._.sym"
d112 :: T74 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d112 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d112 (coe (d94 (coe v0))))))))
name114 = "Algebra.Band._.trans"
d114 ::
  T74 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d114 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d112 (coe (d94 (coe v0))))))))
name116 = "Algebra.Band._.∙-cong"
d116 ::
  T74 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d116 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe (MAlonzo.Code.Algebra.Structures.d112 (coe (d94 (coe v0))))))
name118 = "Algebra.Band.semigroup"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T74 -> T28
d118 v0 v1 v2 = du118 v2
du118 :: T74 -> T28
du118 v0
  = coe
      (\ v1 v2 v3 v4 -> C77 v3 v4) erased erased (d92 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d112 (coe (d94 (coe v0))))
name122 = "Algebra.Band._.rawSemigroup"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T74 -> T6
d122 v0 v1 v2 = du122 v2
du122 :: T74 -> T6
du122 v0 = coe (du68 (coe (du118 (coe v0))))
name128 = "Algebra.RawMonoid"
d128 a0 a1 = ()
data T128 = C503 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
name142 = "Algebra.RawMonoid.Carrier"
d142 :: T128 -> ()
d142 = erased
name144 = "Algebra.RawMonoid._≈_"
d144 :: T128 -> AgdaAny -> AgdaAny -> ()
d144 = erased
name146 = "Algebra.RawMonoid._∙_"
d146 :: T128 -> AgdaAny -> AgdaAny -> AgdaAny
d146 v0
  = case coe v0 of
      C503 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name148 = "Algebra.RawMonoid.ε"
d148 :: T128 -> AgdaAny
d148 v0
  = case coe v0 of
      C503 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name154 = "Algebra.Monoid"
d154 a0 a1 = ()
data T154
  = C593 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
         MAlonzo.Code.Algebra.Structures.T138
name170 = "Algebra.Monoid.Carrier"
d170 :: T154 -> ()
d170 = erased
name172 = "Algebra.Monoid._≈_"
d172 :: T154 -> AgdaAny -> AgdaAny -> ()
d172 = erased
name174 = "Algebra.Monoid._∙_"
d174 :: T154 -> AgdaAny -> AgdaAny -> AgdaAny
d174 v0
  = case coe v0 of
      C593 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name176 = "Algebra.Monoid.ε"
d176 :: T154 -> AgdaAny
d176 v0
  = case coe v0 of
      C593 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name178 = "Algebra.Monoid.isMonoid"
d178 :: T154 -> MAlonzo.Code.Algebra.Structures.T138
d178 v0
  = case coe v0 of
      C593 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name182 = "Algebra.Monoid._.assoc"
d182 :: T154 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d182 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe (MAlonzo.Code.Algebra.Structures.d148 (coe (d178 (coe v0))))))
name184 = "Algebra.Monoid._.identity"
d184 :: T154 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d184 v0
  = coe (MAlonzo.Code.Algebra.Structures.d150 (coe (d178 (coe v0))))
name186 = "Algebra.Monoid._.identityʳ"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T154 -> AgdaAny -> AgdaAny
d186 v0 v1 v2 = du186 v2
du186 :: T154 -> AgdaAny -> AgdaAny
du186 v0
  = let v1 = d178 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v1))))
name188 = "Algebra.Monoid._.identityˡ"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T154 -> AgdaAny -> AgdaAny
d188 v0 v1 v2 = du188 v2
du188 :: T154 -> AgdaAny -> AgdaAny
du188 v0
  = let v1 = d178 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v1))))
name190 = "Algebra.Monoid._.isEquivalence"
d190 :: T154 -> MAlonzo.Code.Relation.Binary.Core.T578
d190 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d84
         (coe (MAlonzo.Code.Algebra.Structures.d148 (coe (d178 (coe v0))))))
name192 = "Algebra.Monoid._.isSemigroup"
d192 :: T154 -> MAlonzo.Code.Algebra.Structures.T74
d192 v0
  = coe (MAlonzo.Code.Algebra.Structures.d148 (coe (d178 (coe v0))))
name194 = "Algebra.Monoid._.refl"
d194 :: T154 -> AgdaAny -> AgdaAny
d194 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148 (coe (d178 (coe v0))))))))
name196 = "Algebra.Monoid._.reflexive"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T154 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d196 v0 v1 v2 = du196 v2
du196 ::
  T154 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du196 v0
  = let v1 = d178 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d148 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d84 (coe v2))) v3)
name198 = "Algebra.Monoid._.setoid"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T154 -> MAlonzo.Code.Relation.Binary.T128
d198 v0 v1 v2 = du198 v2
du198 :: T154 -> MAlonzo.Code.Relation.Binary.T128
du198 v0
  = let v1 = d178 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du90
         (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v1))))
name200 = "Algebra.Monoid._.sym"
d200 :: T154 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d200 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148 (coe (d178 (coe v0))))))))
name202 = "Algebra.Monoid._.trans"
d202 ::
  T154 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d202 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148 (coe (d178 (coe v0))))))))
name204 = "Algebra.Monoid._.∙-cong"
d204 ::
  T154 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d204 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe (MAlonzo.Code.Algebra.Structures.d148 (coe (d178 (coe v0))))))
name206 = "Algebra.Monoid.semigroup"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T154 -> T28
d206 v0 v1 v2 = du206 v2
du206 :: T154 -> T28
du206 v0
  = coe
      (\ v1 v2 v3 v4 -> C77 v3 v4) erased erased (d174 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d148 (coe (d178 (coe v0))))
name208 = "Algebra.Monoid.rawMonoid"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T154 -> T128
d208 v0 v1 v2 = du208 v2
du208 :: T154 -> T128
du208 v0
  = coe
      (\ v1 v2 v3 v4 -> C503 v3 v4) erased erased (d174 (coe v0))
      (d176 (coe v0))
name214 = "Algebra.CommutativeMonoid"
d214 a0 a1 = ()
data T214
  = C889 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
         MAlonzo.Code.Algebra.Structures.T178
name230 = "Algebra.CommutativeMonoid.Carrier"
d230 :: T214 -> ()
d230 = erased
name232 = "Algebra.CommutativeMonoid._≈_"
d232 :: T214 -> AgdaAny -> AgdaAny -> ()
d232 = erased
name234 = "Algebra.CommutativeMonoid._∙_"
d234 :: T214 -> AgdaAny -> AgdaAny -> AgdaAny
d234 v0
  = case coe v0 of
      C889 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name236 = "Algebra.CommutativeMonoid.ε"
d236 :: T214 -> AgdaAny
d236 v0
  = case coe v0 of
      C889 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name238 = "Algebra.CommutativeMonoid.isCommutativeMonoid"
d238 :: T214 -> MAlonzo.Code.Algebra.Structures.T178
d238 v0
  = case coe v0 of
      C889 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name242 = "Algebra.CommutativeMonoid._.assoc"
d242 :: T214 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d242 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe (MAlonzo.Code.Algebra.Structures.d190 (coe (d238 (coe v0))))))
name244 = "Algebra.CommutativeMonoid._.comm"
d244 :: T214 -> AgdaAny -> AgdaAny -> AgdaAny
d244 v0
  = coe (MAlonzo.Code.Algebra.Structures.d194 (coe (d238 (coe v0))))
name246 = "Algebra.CommutativeMonoid._.identity"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T214 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d246 v0 v1 v2 = du246 v2
du246 :: T214 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du246 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du216
         (coe (d234 (coe v0))) (coe (d236 (coe v0))) (coe (d238 (coe v0))))
name248 = "Algebra.CommutativeMonoid._.identityʳ"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T214 -> AgdaAny -> AgdaAny
d248 v0 v1 v2 = du248 v2
du248 :: T214 -> AgdaAny -> AgdaAny
du248 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du214
         (coe (d234 (coe v0))) (coe (d236 (coe v0))) (coe (d238 (coe v0))))
name250 = "Algebra.CommutativeMonoid._.identityˡ"
d250 :: T214 -> AgdaAny -> AgdaAny
d250 v0
  = coe (MAlonzo.Code.Algebra.Structures.d192 (coe (d238 (coe v0))))
name252 = "Algebra.CommutativeMonoid._.isEquivalence"
d252 :: T214 -> MAlonzo.Code.Relation.Binary.Core.T578
d252 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d84
         (coe (MAlonzo.Code.Algebra.Structures.d190 (coe (d238 (coe v0))))))
name254 = "Algebra.CommutativeMonoid._.isMonoid"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T214 -> MAlonzo.Code.Algebra.Structures.T138
d254 v0 v1 v2 = du254 v2
du254 :: T214 -> MAlonzo.Code.Algebra.Structures.T138
du254 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du218
         (coe (d234 (coe v0))) (coe (d236 (coe v0))) (coe (d238 (coe v0))))
name256 = "Algebra.CommutativeMonoid._.isSemigroup"
d256 :: T214 -> MAlonzo.Code.Algebra.Structures.T74
d256 v0
  = coe (MAlonzo.Code.Algebra.Structures.d190 (coe (d238 (coe v0))))
name258 = "Algebra.CommutativeMonoid._.refl"
d258 :: T214 -> AgdaAny -> AgdaAny
d258 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190 (coe (d238 (coe v0))))))))
name260 = "Algebra.CommutativeMonoid._.reflexive"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T214 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d260 v0 v1 v2 = du260 v2
du260 ::
  T214 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du260 v0
  = let v1 = d238 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d190 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d84 (coe v2))) v3)
name262 = "Algebra.CommutativeMonoid._.setoid"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T214 -> MAlonzo.Code.Relation.Binary.T128
d262 v0 v1 v2 = du262 v2
du262 :: T214 -> MAlonzo.Code.Relation.Binary.T128
du262 v0
  = let v1 = d238 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du90
         (coe (MAlonzo.Code.Algebra.Structures.d190 (coe v1))))
name264 = "Algebra.CommutativeMonoid._.sym"
d264 :: T214 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d264 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190 (coe (d238 (coe v0))))))))
name266 = "Algebra.CommutativeMonoid._.trans"
d266 ::
  T214 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d266 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190 (coe (d238 (coe v0))))))))
name268 = "Algebra.CommutativeMonoid._.∙-cong"
d268 ::
  T214 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d268 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe (MAlonzo.Code.Algebra.Structures.d190 (coe (d238 (coe v0))))))
name270 = "Algebra.CommutativeMonoid.monoid"
d270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T214 -> T154
d270 v0 v1 v2 = du270 v2
du270 :: T214 -> T154
du270 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C593 v3 v4 v5) erased erased (d234 (coe v0))
      (d236 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du218
         (coe (d234 (coe v0))) (coe (d236 (coe v0))) (coe (d238 (coe v0))))
name274 = "Algebra.CommutativeMonoid._.rawMonoid"
d274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T214 -> T128
d274 v0 v1 v2 = du274 v2
du274 :: T214 -> T128
du274 v0 = coe (du208 (coe (du270 (coe v0))))
name276 = "Algebra.CommutativeMonoid._.semigroup"
d276 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T214 -> T28
d276 v0 v1 v2 = du276 v2
du276 :: T214 -> T28
du276 v0 = coe (du206 (coe (du270 (coe v0))))
name282 = "Algebra.IdempotentCommutativeMonoid"
d282 a0 a1 = ()
data T282
  = C1167 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T224
name298 = "Algebra.IdempotentCommutativeMonoid.Carrier"
d298 :: T282 -> ()
d298 = erased
name300 = "Algebra.IdempotentCommutativeMonoid._≈_"
d300 :: T282 -> AgdaAny -> AgdaAny -> ()
d300 = erased
name302 = "Algebra.IdempotentCommutativeMonoid._∙_"
d302 :: T282 -> AgdaAny -> AgdaAny -> AgdaAny
d302 v0
  = case coe v0 of
      C1167 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name304 = "Algebra.IdempotentCommutativeMonoid.ε"
d304 :: T282 -> AgdaAny
d304 v0
  = case coe v0 of
      C1167 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name306
  = "Algebra.IdempotentCommutativeMonoid.isIdempotentCommutativeMonoid"
d306 :: T282 -> MAlonzo.Code.Algebra.Structures.T224
d306 v0
  = case coe v0 of
      C1167 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name310 = "Algebra.IdempotentCommutativeMonoid._.assoc"
d310 :: T282 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d310 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe
                  (MAlonzo.Code.Algebra.Structures.d234 (coe (d306 (coe v0))))))))
name312 = "Algebra.IdempotentCommutativeMonoid._.comm"
d312 :: T282 -> AgdaAny -> AgdaAny -> AgdaAny
d312 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d194
         (coe (MAlonzo.Code.Algebra.Structures.d234 (coe (d306 (coe v0))))))
name314 = "Algebra.IdempotentCommutativeMonoid._.idem"
d314 :: T282 -> AgdaAny -> AgdaAny
d314 v0
  = coe (MAlonzo.Code.Algebra.Structures.d236 (coe (d306 (coe v0))))
name316 = "Algebra.IdempotentCommutativeMonoid._.identity"
d316 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T282 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d316 v0 v1 v2 = du316 v2
du316 :: T282 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du316 v0
  = let v1 = d302 (coe v0) in
    let v2 = d304 (coe v0) in
    let v3 = d306 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du216
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d234 (coe v3))))
name318 = "Algebra.IdempotentCommutativeMonoid._.identityʳ"
d318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T282 -> AgdaAny -> AgdaAny
d318 v0 v1 v2 = du318 v2
du318 :: T282 -> AgdaAny -> AgdaAny
du318 v0
  = let v1 = d302 (coe v0) in
    let v2 = d304 (coe v0) in
    let v3 = d306 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du214
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d234 (coe v3))))
name320 = "Algebra.IdempotentCommutativeMonoid._.identityˡ"
d320 :: T282 -> AgdaAny -> AgdaAny
d320 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d192
         (coe (MAlonzo.Code.Algebra.Structures.d234 (coe (d306 (coe v0))))))
name322
  = "Algebra.IdempotentCommutativeMonoid._.isCommutativeMonoid"
d322 :: T282 -> MAlonzo.Code.Algebra.Structures.T178
d322 v0
  = coe (MAlonzo.Code.Algebra.Structures.d234 (coe (d306 (coe v0))))
name324 = "Algebra.IdempotentCommutativeMonoid._.isEquivalence"
d324 :: T282 -> MAlonzo.Code.Relation.Binary.Core.T578
d324 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d84
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe
                  (MAlonzo.Code.Algebra.Structures.d234 (coe (d306 (coe v0))))))))
name326 = "Algebra.IdempotentCommutativeMonoid._.isMonoid"
d326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T282 -> MAlonzo.Code.Algebra.Structures.T138
d326 v0 v1 v2 = du326 v2
du326 :: T282 -> MAlonzo.Code.Algebra.Structures.T138
du326 v0
  = let v1 = d302 (coe v0) in
    let v2 = d304 (coe v0) in
    let v3 = d306 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du218
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d234 (coe v3))))
name328 = "Algebra.IdempotentCommutativeMonoid._.isSemigroup"
d328 :: T282 -> MAlonzo.Code.Algebra.Structures.T74
d328 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d190
         (coe (MAlonzo.Code.Algebra.Structures.d234 (coe (d306 (coe v0))))))
name330 = "Algebra.IdempotentCommutativeMonoid._.refl"
d330 :: T282 -> AgdaAny -> AgdaAny
d330 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d234 (coe (d306 (coe v0))))))))))
name332 = "Algebra.IdempotentCommutativeMonoid._.reflexive"
d332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T282 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d332 v0 v1 v2 = du332 v2
du332 ::
  T282 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du332 v0
  = let v1 = d306 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d234 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d190 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d84 (coe v3))) v4)
name334 = "Algebra.IdempotentCommutativeMonoid._.setoid"
d334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T282 -> MAlonzo.Code.Relation.Binary.T128
d334 v0 v1 v2 = du334 v2
du334 :: T282 -> MAlonzo.Code.Relation.Binary.T128
du334 v0
  = let v1 = d306 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d234 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du90
         (coe (MAlonzo.Code.Algebra.Structures.d190 (coe v2))))
name336 = "Algebra.IdempotentCommutativeMonoid._.sym"
d336 :: T282 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d336 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d234 (coe (d306 (coe v0))))))))))
name338 = "Algebra.IdempotentCommutativeMonoid._.trans"
d338 ::
  T282 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d338 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d234 (coe (d306 (coe v0))))))))))
name340 = "Algebra.IdempotentCommutativeMonoid._.∙-cong"
d340 ::
  T282 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d340 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe
                  (MAlonzo.Code.Algebra.Structures.d234 (coe (d306 (coe v0))))))))
name342 = "Algebra.IdempotentCommutativeMonoid.commutativeMonoid"
d342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T282 -> T214
d342 v0 v1 v2 = du342 v2
du342 :: T282 -> T214
du342 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C889 v3 v4 v5) erased erased (d302 (coe v0))
      (d304 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d234 (coe (d306 (coe v0))))
name346 = "Algebra.IdempotentCommutativeMonoid._.monoid"
d346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T282 -> T154
d346 v0 v1 v2 = du346 v2
du346 :: T282 -> T154
du346 v0 = coe (du270 (coe (du342 (coe v0))))
name348 = "Algebra.IdempotentCommutativeMonoid._.rawMonoid"
d348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T282 -> T128
d348 v0 v1 v2 = du348 v2
du348 :: T282 -> T128
du348 v0
  = let v1 = du342 (coe v0) in coe (du208 (coe (du270 (coe v1))))
name350 = "Algebra.IdempotentCommutativeMonoid._.semigroup"
d350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T282 -> T28
d350 v0 v1 v2 = du350 v2
du350 :: T282 -> T28
du350 v0
  = let v1 = du342 (coe v0) in coe (du206 (coe (du270 (coe v1))))
name356 = "Algebra.RawGroup"
d356 a0 a1 = ()
data T356
  = C1461 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          (AgdaAny -> AgdaAny)
name372 = "Algebra.RawGroup.Carrier"
d372 :: T356 -> ()
d372 = erased
name374 = "Algebra.RawGroup._≈_"
d374 :: T356 -> AgdaAny -> AgdaAny -> ()
d374 = erased
name376 = "Algebra.RawGroup._∙_"
d376 :: T356 -> AgdaAny -> AgdaAny -> AgdaAny
d376 v0
  = case coe v0 of
      C1461 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name378 = "Algebra.RawGroup.ε"
d378 :: T356 -> AgdaAny
d378 v0
  = case coe v0 of
      C1461 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name380 = "Algebra.RawGroup._⁻¹"
d380 :: T356 -> AgdaAny -> AgdaAny
d380 v0
  = case coe v0 of
      C1461 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name386 = "Algebra.Group"
d386 a0 a1 = ()
data T386
  = C1567 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          (AgdaAny -> AgdaAny) MAlonzo.Code.Algebra.Structures.T274
name404 = "Algebra.Group.Carrier"
d404 :: T386 -> ()
d404 = erased
name406 = "Algebra.Group._≈_"
d406 :: T386 -> AgdaAny -> AgdaAny -> ()
d406 = erased
name408 = "Algebra.Group._∙_"
d408 :: T386 -> AgdaAny -> AgdaAny -> AgdaAny
d408 v0
  = case coe v0 of
      C1567 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name410 = "Algebra.Group.ε"
d410 :: T386 -> AgdaAny
d410 v0
  = case coe v0 of
      C1567 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name412 = "Algebra.Group._⁻¹"
d412 :: T386 -> AgdaAny -> AgdaAny
d412 v0
  = case coe v0 of
      C1567 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name414 = "Algebra.Group.isGroup"
d414 :: T386 -> MAlonzo.Code.Algebra.Structures.T274
d414 v0
  = case coe v0 of
      C1567 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name418 = "Algebra.Group._._-_"
d418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T386 -> AgdaAny -> AgdaAny -> AgdaAny
d418 v0 v1 v2 = du418 v2
du418 :: T386 -> AgdaAny -> AgdaAny -> AgdaAny
du418 v0
  = let v1 = d408 (coe v0) in
    let v2 = d412 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name420 = "Algebra.Group._.assoc"
d420 :: T386 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d420 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d288 (coe (d414 (coe v0))))))))
name422 = "Algebra.Group._.identity"
d422 :: T386 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d422 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d150
         (coe (MAlonzo.Code.Algebra.Structures.d288 (coe (d414 (coe v0))))))
name424 = "Algebra.Group._.identityʳ"
d424 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T386 -> AgdaAny -> AgdaAny
d424 v0 v1 v2 = du424 v2
du424 :: T386 -> AgdaAny -> AgdaAny
du424 v0
  = let v1 = d414 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d288 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v2))))
name426 = "Algebra.Group._.identityˡ"
d426 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T386 -> AgdaAny -> AgdaAny
d426 v0 v1 v2 = du426 v2
du426 :: T386 -> AgdaAny -> AgdaAny
du426 v0
  = let v1 = d414 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d288 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v2))))
name428 = "Algebra.Group._.inverse"
d428 :: T386 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d428 v0
  = coe (MAlonzo.Code.Algebra.Structures.d290 (coe (d414 (coe v0))))
name430 = "Algebra.Group._.inverseʳ"
d430 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T386 -> AgdaAny -> AgdaAny
d430 v0 v1 v2 = du430 v2
du430 :: T386 -> AgdaAny -> AgdaAny
du430 v0
  = let v1 = d414 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d290 (coe v1))))
name432 = "Algebra.Group._.inverseˡ"
d432 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T386 -> AgdaAny -> AgdaAny
d432 v0 v1 v2 = du432 v2
du432 :: T386 -> AgdaAny -> AgdaAny
du432 v0
  = let v1 = d414 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d290 (coe v1))))
name434 = "Algebra.Group._.isEquivalence"
d434 :: T386 -> MAlonzo.Code.Relation.Binary.Core.T578
d434 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d84
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d288 (coe (d414 (coe v0))))))))
name436 = "Algebra.Group._.isMonoid"
d436 :: T386 -> MAlonzo.Code.Algebra.Structures.T138
d436 v0
  = coe (MAlonzo.Code.Algebra.Structures.d288 (coe (d414 (coe v0))))
name438 = "Algebra.Group._.isSemigroup"
d438 :: T386 -> MAlonzo.Code.Algebra.Structures.T74
d438 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d148
         (coe (MAlonzo.Code.Algebra.Structures.d288 (coe (d414 (coe v0))))))
name440 = "Algebra.Group._.refl"
d440 :: T386 -> AgdaAny -> AgdaAny
d440 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d288 (coe (d414 (coe v0))))))))))
name442 = "Algebra.Group._.reflexive"
d442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T386 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d442 v0 v1 v2 = du442 v2
du442 ::
  T386 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du442 v0
  = let v1 = d414 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d288 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d148 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d84 (coe v3))) v4)
name444 = "Algebra.Group._.setoid"
d444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T386 -> MAlonzo.Code.Relation.Binary.T128
d444 v0 v1 v2 = du444 v2
du444 :: T386 -> MAlonzo.Code.Relation.Binary.T128
du444 v0
  = let v1 = d414 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d288 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du90
         (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v2))))
name446 = "Algebra.Group._.sym"
d446 :: T386 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d446 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d288 (coe (d414 (coe v0))))))))))
name448 = "Algebra.Group._.trans"
d448 ::
  T386 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d448 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d288 (coe (d414 (coe v0))))))))))
name450 = "Algebra.Group._.uniqueʳ-⁻¹"
d450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T386 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d450 v0 v1 v2 = du450 v2
du450 :: T386 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du450 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du340
         (coe (d408 (coe v0))) (coe (d410 (coe v0))) (coe (d412 (coe v0)))
         (coe (d414 (coe v0))))
name452 = "Algebra.Group._.uniqueˡ-⁻¹"
d452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T386 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d452 v0 v1 v2 = du452 v2
du452 :: T386 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du452 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du334
         (coe (d408 (coe v0))) (coe (d410 (coe v0))) (coe (d412 (coe v0)))
         (coe (d414 (coe v0))))
name454 = "Algebra.Group._.⁻¹-cong"
d454 :: T386 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d454 v0
  = coe (MAlonzo.Code.Algebra.Structures.d292 (coe (d414 (coe v0))))
name456 = "Algebra.Group._.∙-cong"
d456 ::
  T386 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d456 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d288 (coe (d414 (coe v0))))))))
name458 = "Algebra.Group.rawGroup"
d458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T386 -> T356
d458 v0 v1 v2 = du458 v2
du458 :: T386 -> T356
du458 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C1461 v3 v4 v5) erased erased (d408 (coe v0))
      (d410 (coe v0)) (d412 (coe v0))
name460 = "Algebra.Group.monoid"
d460 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T386 -> T154
d460 v0 v1 v2 = du460 v2
du460 :: T386 -> T154
du460 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C593 v3 v4 v5) erased erased (d408 (coe v0))
      (d410 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d288 (coe (d414 (coe v0))))
name464 = "Algebra.Group._.rawMonoid"
d464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T386 -> T128
d464 v0 v1 v2 = du464 v2
du464 :: T386 -> T128
du464 v0 = coe (du208 (coe (du460 (coe v0))))
name466 = "Algebra.Group._.semigroup"
d466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T386 -> T28
d466 v0 v1 v2 = du466 v2
du466 :: T386 -> T28
du466 v0 = coe (du206 (coe (du460 (coe v0))))
name472 = "Algebra.AbelianGroup"
d472 a0 a1 = ()
data T472
  = C1979 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          (AgdaAny -> AgdaAny) MAlonzo.Code.Algebra.Structures.T348
name490 = "Algebra.AbelianGroup.Carrier"
d490 :: T472 -> ()
d490 = erased
name492 = "Algebra.AbelianGroup._≈_"
d492 :: T472 -> AgdaAny -> AgdaAny -> ()
d492 = erased
name494 = "Algebra.AbelianGroup._∙_"
d494 :: T472 -> AgdaAny -> AgdaAny -> AgdaAny
d494 v0
  = case coe v0 of
      C1979 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name496 = "Algebra.AbelianGroup.ε"
d496 :: T472 -> AgdaAny
d496 v0
  = case coe v0 of
      C1979 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name498 = "Algebra.AbelianGroup._⁻¹"
d498 :: T472 -> AgdaAny -> AgdaAny
d498 v0
  = case coe v0 of
      C1979 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name500 = "Algebra.AbelianGroup.isAbelianGroup"
d500 :: T472 -> MAlonzo.Code.Algebra.Structures.T348
d500 v0
  = case coe v0 of
      C1979 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name504 = "Algebra.AbelianGroup._._-_"
d504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T472 -> AgdaAny -> AgdaAny -> AgdaAny
d504 v0 v1 v2 = du504 v2
du504 :: T472 -> AgdaAny -> AgdaAny -> AgdaAny
du504 v0
  = let v1 = d494 (coe v0) in
    let v2 = d498 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name506 = "Algebra.AbelianGroup._.assoc"
d506 :: T472 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d506 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d288
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d360 (coe (d500 (coe v0))))))))))
name508 = "Algebra.AbelianGroup._.comm"
d508 :: T472 -> AgdaAny -> AgdaAny -> AgdaAny
d508 v0
  = coe (MAlonzo.Code.Algebra.Structures.d362 (coe (d500 (coe v0))))
name510 = "Algebra.AbelianGroup._.identity"
d510 :: T472 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d510 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d150
         (coe
            (MAlonzo.Code.Algebra.Structures.d288
               (coe
                  (MAlonzo.Code.Algebra.Structures.d360 (coe (d500 (coe v0))))))))
name512 = "Algebra.AbelianGroup._.identityʳ"
d512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T472 -> AgdaAny -> AgdaAny
d512 v0 v1 v2 = du512 v2
du512 :: T472 -> AgdaAny -> AgdaAny
du512 v0
  = let v1 = d500 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d360 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d288 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v3))))
name514 = "Algebra.AbelianGroup._.identityˡ"
d514 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T472 -> AgdaAny -> AgdaAny
d514 v0 v1 v2 = du514 v2
du514 :: T472 -> AgdaAny -> AgdaAny
du514 v0
  = let v1 = d500 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d360 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d288 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v3))))
name516 = "Algebra.AbelianGroup._.inverse"
d516 :: T472 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d516 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d290
         (coe (MAlonzo.Code.Algebra.Structures.d360 (coe (d500 (coe v0))))))
name518 = "Algebra.AbelianGroup._.inverseʳ"
d518 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T472 -> AgdaAny -> AgdaAny
d518 v0 v1 v2 = du518 v2
du518 :: T472 -> AgdaAny -> AgdaAny
du518 v0
  = let v1 = d500 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d360 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d290 (coe v2))))
name520 = "Algebra.AbelianGroup._.inverseˡ"
d520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T472 -> AgdaAny -> AgdaAny
d520 v0 v1 v2 = du520 v2
du520 :: T472 -> AgdaAny -> AgdaAny
du520 v0
  = let v1 = d500 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d360 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d290 (coe v2))))
name522 = "Algebra.AbelianGroup._.isCommutativeMonoid"
d522 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T472 -> MAlonzo.Code.Algebra.Structures.T178
d522 v0 v1 v2 = du522 v2
du522 :: T472 -> MAlonzo.Code.Algebra.Structures.T178
du522 v0
  = coe (MAlonzo.Code.Algebra.Structures.du406 (coe (d500 (coe v0))))
name524 = "Algebra.AbelianGroup._.isEquivalence"
d524 :: T472 -> MAlonzo.Code.Relation.Binary.Core.T578
d524 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d84
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d288
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d360 (coe (d500 (coe v0))))))))))
name526 = "Algebra.AbelianGroup._.isGroup"
d526 :: T472 -> MAlonzo.Code.Algebra.Structures.T274
d526 v0
  = coe (MAlonzo.Code.Algebra.Structures.d360 (coe (d500 (coe v0))))
name528 = "Algebra.AbelianGroup._.isMonoid"
d528 :: T472 -> MAlonzo.Code.Algebra.Structures.T138
d528 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d288
         (coe (MAlonzo.Code.Algebra.Structures.d360 (coe (d500 (coe v0))))))
name530 = "Algebra.AbelianGroup._.isSemigroup"
d530 :: T472 -> MAlonzo.Code.Algebra.Structures.T74
d530 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d148
         (coe
            (MAlonzo.Code.Algebra.Structures.d288
               (coe
                  (MAlonzo.Code.Algebra.Structures.d360 (coe (d500 (coe v0))))))))
name532 = "Algebra.AbelianGroup._.refl"
d532 :: T472 -> AgdaAny -> AgdaAny
d532 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d288
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d360
                                 (coe (d500 (coe v0))))))))))))
name534 = "Algebra.AbelianGroup._.reflexive"
d534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T472 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d534 v0 v1 v2 = du534 v2
du534 ::
  T472 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du534 v0
  = let v1 = d500 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d360 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d288 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d148 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d84 (coe v4))) v5)
name536 = "Algebra.AbelianGroup._.setoid"
d536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T472 -> MAlonzo.Code.Relation.Binary.T128
d536 v0 v1 v2 = du536 v2
du536 :: T472 -> MAlonzo.Code.Relation.Binary.T128
du536 v0
  = let v1 = d500 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d360 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d288 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du90
         (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v3))))
name538 = "Algebra.AbelianGroup._.sym"
d538 :: T472 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d538 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d288
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d360
                                 (coe (d500 (coe v0))))))))))))
name540 = "Algebra.AbelianGroup._.trans"
d540 ::
  T472 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d540 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d288
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d360
                                 (coe (d500 (coe v0))))))))))))
name542 = "Algebra.AbelianGroup._.uniqueʳ-⁻¹"
d542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T472 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d542 v0 v1 v2 = du542 v2
du542 :: T472 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du542 v0
  = let v1 = d494 (coe v0) in
    let v2 = d496 (coe v0) in
    let v3 = d498 (coe v0) in
    let v4 = d500 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du340
         (coe v1) (coe v2) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d360 (coe v4))))
name544 = "Algebra.AbelianGroup._.uniqueˡ-⁻¹"
d544 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T472 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d544 v0 v1 v2 = du544 v2
du544 :: T472 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du544 v0
  = let v1 = d494 (coe v0) in
    let v2 = d496 (coe v0) in
    let v3 = d498 (coe v0) in
    let v4 = d500 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du334
         (coe v1) (coe v2) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d360 (coe v4))))
name546 = "Algebra.AbelianGroup._.⁻¹-cong"
d546 :: T472 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d546 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d292
         (coe (MAlonzo.Code.Algebra.Structures.d360 (coe (d500 (coe v0))))))
name548 = "Algebra.AbelianGroup._.∙-cong"
d548 ::
  T472 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d548 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d288
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d360 (coe (d500 (coe v0))))))))))
name550 = "Algebra.AbelianGroup.group"
d550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T472 -> T386
d550 v0 v1 v2 = du550 v2
du550 :: T472 -> T386
du550 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C1567 v3 v4 v5 v6) erased erased
      (d494 (coe v0)) (d496 (coe v0)) (d498 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d360 (coe (d500 (coe v0))))
name554 = "Algebra.AbelianGroup._.monoid"
d554 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T472 -> T154
d554 v0 v1 v2 = du554 v2
du554 :: T472 -> T154
du554 v0 = coe (du460 (coe (du550 (coe v0))))
name556 = "Algebra.AbelianGroup._.rawGroup"
d556 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T472 -> T356
d556 v0 v1 v2 = du556 v2
du556 :: T472 -> T356
du556 v0 = coe (du458 (coe (du550 (coe v0))))
name558 = "Algebra.AbelianGroup._.rawMonoid"
d558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T472 -> T128
d558 v0 v1 v2 = du558 v2
du558 :: T472 -> T128
du558 v0
  = let v1 = du550 (coe v0) in coe (du208 (coe (du460 (coe v1))))
name560 = "Algebra.AbelianGroup._.semigroup"
d560 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T472 -> T28
d560 v0 v1 v2 = du560 v2
du560 :: T472 -> T28
du560 v0
  = let v1 = du550 (coe v0) in coe (du206 (coe (du460 (coe v1))))
name562 = "Algebra.AbelianGroup.commutativeMonoid"
d562 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T472 -> T214
d562 v0 v1 v2 = du562 v2
du562 :: T472 -> T214
du562 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C889 v3 v4 v5) erased erased (d494 (coe v0))
      (d496 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du406 (coe (d500 (coe v0))))
name568 = "Algebra.RawSemiring"
d568 a0 a1 = ()
data T568
  = C2413 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
name586 = "Algebra.RawSemiring.Carrier"
d586 :: T568 -> ()
d586 = erased
name588 = "Algebra.RawSemiring._≈_"
d588 :: T568 -> AgdaAny -> AgdaAny -> ()
d588 = erased
name590 = "Algebra.RawSemiring._+_"
d590 :: T568 -> AgdaAny -> AgdaAny -> AgdaAny
d590 v0
  = case coe v0 of
      C2413 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name592 = "Algebra.RawSemiring._*_"
d592 :: T568 -> AgdaAny -> AgdaAny -> AgdaAny
d592 v0
  = case coe v0 of
      C2413 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name594 = "Algebra.RawSemiring.0#"
d594 :: T568 -> AgdaAny
d594 v0
  = case coe v0 of
      C2413 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name596 = "Algebra.RawSemiring.1#"
d596 :: T568 -> AgdaAny
d596 v0
  = case coe v0 of
      C2413 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name602 = "Algebra.NearSemiring"
d602 a0 a1 = ()
data T602
  = C2533 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T414
name620 = "Algebra.NearSemiring.Carrier"
d620 :: T602 -> ()
d620 = erased
name622 = "Algebra.NearSemiring._≈_"
d622 :: T602 -> AgdaAny -> AgdaAny -> ()
d622 = erased
name624 = "Algebra.NearSemiring._+_"
d624 :: T602 -> AgdaAny -> AgdaAny -> AgdaAny
d624 v0
  = case coe v0 of
      C2533 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name626 = "Algebra.NearSemiring._*_"
d626 :: T602 -> AgdaAny -> AgdaAny -> AgdaAny
d626 v0
  = case coe v0 of
      C2533 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name628 = "Algebra.NearSemiring.0#"
d628 :: T602 -> AgdaAny
d628 v0
  = case coe v0 of
      C2533 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name630 = "Algebra.NearSemiring.isNearSemiring"
d630 :: T602 -> MAlonzo.Code.Algebra.Structures.T414
d630 v0
  = case coe v0 of
      C2533 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name634 = "Algebra.NearSemiring._.assoc"
d634 :: T602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d634 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe (MAlonzo.Code.Algebra.Structures.d432 (coe (d630 (coe v0))))))
name636 = "Algebra.NearSemiring._.∙-cong"
d636 ::
  T602 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d636 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe (MAlonzo.Code.Algebra.Structures.d432 (coe (d630 (coe v0))))))
name638 = "Algebra.NearSemiring._.*-isSemigroup"
d638 :: T602 -> MAlonzo.Code.Algebra.Structures.T74
d638 v0
  = coe (MAlonzo.Code.Algebra.Structures.d432 (coe (d630 (coe v0))))
name640 = "Algebra.NearSemiring._.assoc"
d640 :: T602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d640 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d430 (coe (d630 (coe v0))))))))
name642 = "Algebra.NearSemiring._.∙-cong"
d642 ::
  T602 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d642 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d430 (coe (d630 (coe v0))))))))
name644 = "Algebra.NearSemiring._.identity"
d644 :: T602 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d644 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d150
         (coe (MAlonzo.Code.Algebra.Structures.d430 (coe (d630 (coe v0))))))
name646 = "Algebra.NearSemiring._.identityʳ"
d646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T602 -> AgdaAny -> AgdaAny
d646 v0 v1 v2 = du646 v2
du646 :: T602 -> AgdaAny -> AgdaAny
du646 v0
  = let v1 = d630 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d430 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v2))))
name648 = "Algebra.NearSemiring._.identityˡ"
d648 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T602 -> AgdaAny -> AgdaAny
d648 v0 v1 v2 = du648 v2
du648 :: T602 -> AgdaAny -> AgdaAny
du648 v0
  = let v1 = d630 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d430 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v2))))
name650 = "Algebra.NearSemiring._.+-isMonoid"
d650 :: T602 -> MAlonzo.Code.Algebra.Structures.T138
d650 v0
  = coe (MAlonzo.Code.Algebra.Structures.d430 (coe (d630 (coe v0))))
name652 = "Algebra.NearSemiring._.isSemigroup"
d652 :: T602 -> MAlonzo.Code.Algebra.Structures.T74
d652 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d148
         (coe (MAlonzo.Code.Algebra.Structures.d430 (coe (d630 (coe v0))))))
name654 = "Algebra.NearSemiring._.distribʳ"
d654 :: T602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d654 v0
  = coe (MAlonzo.Code.Algebra.Structures.d434 (coe (d630 (coe v0))))
name656 = "Algebra.NearSemiring._.isEquivalence"
d656 :: T602 -> MAlonzo.Code.Relation.Binary.Core.T578
d656 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d84
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d430 (coe (d630 (coe v0))))))))
name658 = "Algebra.NearSemiring._.refl"
d658 :: T602 -> AgdaAny -> AgdaAny
d658 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d430 (coe (d630 (coe v0))))))))))
name660 = "Algebra.NearSemiring._.reflexive"
d660 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T602 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d660 v0 v1 v2 = du660 v2
du660 ::
  T602 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du660 v0
  = let v1 = d630 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d430 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d148 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d84 (coe v3))) v4)
name662 = "Algebra.NearSemiring._.setoid"
d662 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T602 -> MAlonzo.Code.Relation.Binary.T128
d662 v0 v1 v2 = du662 v2
du662 :: T602 -> MAlonzo.Code.Relation.Binary.T128
du662 v0
  = let v1 = d630 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d430 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du90
         (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v2))))
name664 = "Algebra.NearSemiring._.sym"
d664 :: T602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d664 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d430 (coe (d630 (coe v0))))))))))
name666 = "Algebra.NearSemiring._.trans"
d666 ::
  T602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d666 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d430 (coe (d630 (coe v0))))))))))
name668 = "Algebra.NearSemiring._.zeroˡ"
d668 :: T602 -> AgdaAny -> AgdaAny
d668 v0
  = coe (MAlonzo.Code.Algebra.Structures.d436 (coe (d630 (coe v0))))
name670 = "Algebra.NearSemiring.+-monoid"
d670 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T602 -> T154
d670 v0 v1 v2 = du670 v2
du670 :: T602 -> T154
du670 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C593 v3 v4 v5) erased erased (d624 (coe v0))
      (d628 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d430 (coe (d630 (coe v0))))
name674 = "Algebra.NearSemiring._.rawMonoid"
d674 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T602 -> T128
d674 v0 v1 v2 = du674 v2
du674 :: T602 -> T128
du674 v0 = coe (du208 (coe (du670 (coe v0))))
name676 = "Algebra.NearSemiring._.semigroup"
d676 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T602 -> T28
d676 v0 v1 v2 = du676 v2
du676 :: T602 -> T28
du676 v0 = coe (du206 (coe (du670 (coe v0))))
name678 = "Algebra.NearSemiring.*-semigroup"
d678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T602 -> T28
d678 v0 v1 v2 = du678 v2
du678 :: T602 -> T28
du678 v0
  = coe
      (\ v1 v2 v3 v4 -> C77 v3 v4) erased erased (d626 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d432 (coe (d630 (coe v0))))
name684 = "Algebra.SemiringWithoutOne"
d684 a0 a1 = ()
data T684
  = C2913 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T476
name702 = "Algebra.SemiringWithoutOne.Carrier"
d702 :: T684 -> ()
d702 = erased
name704 = "Algebra.SemiringWithoutOne._≈_"
d704 :: T684 -> AgdaAny -> AgdaAny -> ()
d704 = erased
name706 = "Algebra.SemiringWithoutOne._+_"
d706 :: T684 -> AgdaAny -> AgdaAny -> AgdaAny
d706 v0
  = case coe v0 of
      C2913 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name708 = "Algebra.SemiringWithoutOne._*_"
d708 :: T684 -> AgdaAny -> AgdaAny -> AgdaAny
d708 v0
  = case coe v0 of
      C2913 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name710 = "Algebra.SemiringWithoutOne.0#"
d710 :: T684 -> AgdaAny
d710 v0
  = case coe v0 of
      C2913 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name712 = "Algebra.SemiringWithoutOne.isSemiringWithoutOne"
d712 :: T684 -> MAlonzo.Code.Algebra.Structures.T476
d712 v0
  = case coe v0 of
      C2913 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name716 = "Algebra.SemiringWithoutOne._.assoc"
d716 :: T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d716 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe (MAlonzo.Code.Algebra.Structures.d494 (coe (d712 (coe v0))))))
name718 = "Algebra.SemiringWithoutOne._.assoc"
d718 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d718 v0 v1 v2 = du718 v2
du718 :: T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du718 v0
  = let v1 = d712 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe (MAlonzo.Code.Algebra.Structures.d494 (coe v1))))
name720 = "Algebra.SemiringWithoutOne._.∙-cong"
d720 ::
  T684 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d720 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe (MAlonzo.Code.Algebra.Structures.d494 (coe (d712 (coe v0))))))
name722 = "Algebra.SemiringWithoutOne._.∙-cong"
d722 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T684 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d722 v0 v1 v2 = du722 v2
du722 ::
  T684 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du722 v0
  = let v1 = d712 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe (MAlonzo.Code.Algebra.Structures.d494 (coe v1))))
name724 = "Algebra.SemiringWithoutOne._.*-isSemigroup"
d724 :: T684 -> MAlonzo.Code.Algebra.Structures.T74
d724 v0
  = coe (MAlonzo.Code.Algebra.Structures.d494 (coe (d712 (coe v0))))
name726 = "Algebra.SemiringWithoutOne._.*-isSemigroup"
d726 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T684 -> MAlonzo.Code.Algebra.Structures.T74
d726 v0 v1 v2 = du726 v2
du726 :: T684 -> MAlonzo.Code.Algebra.Structures.T74
du726 v0
  = let v1 = d712 (coe v0) in
    coe (MAlonzo.Code.Algebra.Structures.d494 (coe v1))
name728 = "Algebra.SemiringWithoutOne._.assoc"
d728 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d728 v0 v1 v2 = du728 v2
du728 :: T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du728 v0
  = let v1 = d712 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v1))))))
name730 = "Algebra.SemiringWithoutOne._.comm"
d730 :: T684 -> AgdaAny -> AgdaAny -> AgdaAny
d730 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d194
         (coe (MAlonzo.Code.Algebra.Structures.d492 (coe (d712 (coe v0))))))
name732 = "Algebra.SemiringWithoutOne._.∙-cong"
d732 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T684 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d732 v0 v1 v2 = du732 v2
du732 ::
  T684 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du732 v0
  = let v1 = d712 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v1))))))
name734 = "Algebra.SemiringWithoutOne._.identity"
d734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T684 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d734 v0 v1 v2 = du734 v2
du734 :: T684 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du734 v0
  = let v1 = d706 (coe v0) in
    let v2 = d710 (coe v0) in
    let v3 = d712 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du216
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v3))))
name736 = "Algebra.SemiringWithoutOne._.identityʳ"
d736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T684 -> AgdaAny -> AgdaAny
d736 v0 v1 v2 = du736 v2
du736 :: T684 -> AgdaAny -> AgdaAny
du736 v0
  = let v1 = d706 (coe v0) in
    let v2 = d710 (coe v0) in
    let v3 = d712 (coe v0) in
    let v4
          = MAlonzo.Code.Algebra.Structures.du516
              (coe v1) (coe v2) (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d430 (coe v4) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v5))))
name738 = "Algebra.SemiringWithoutOne._.identityˡ"
d738 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T684 -> AgdaAny -> AgdaAny
d738 v0 v1 v2 = du738 v2
du738 :: T684 -> AgdaAny -> AgdaAny
du738 v0
  = let v1 = d706 (coe v0) in
    let v2 = d710 (coe v0) in
    let v3 = d712 (coe v0) in
    let v4
          = MAlonzo.Code.Algebra.Structures.du516
              (coe v1) (coe v2) (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d430 (coe v4) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v5))))
name740 = "Algebra.SemiringWithoutOne._.+-isCommutativeMonoid"
d740 :: T684 -> MAlonzo.Code.Algebra.Structures.T178
d740 v0
  = coe (MAlonzo.Code.Algebra.Structures.d492 (coe (d712 (coe v0))))
name742 = "Algebra.SemiringWithoutOne._.isMonoid"
d742 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T684 -> MAlonzo.Code.Algebra.Structures.T138
d742 v0 v1 v2 = du742 v2
du742 :: T684 -> MAlonzo.Code.Algebra.Structures.T138
du742 v0
  = let v1 = d706 (coe v0) in
    let v2 = d710 (coe v0) in
    let v3 = d712 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du218
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v3))))
name744 = "Algebra.SemiringWithoutOne._.isSemigroup"
d744 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T684 -> MAlonzo.Code.Algebra.Structures.T74
d744 v0 v1 v2 = du744 v2
du744 :: T684 -> MAlonzo.Code.Algebra.Structures.T74
du744 v0
  = let v1 = d712 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d190
         (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v1))))
name746 = "Algebra.SemiringWithoutOne._.distrib"
d746 :: T684 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d746 v0
  = coe (MAlonzo.Code.Algebra.Structures.d496 (coe (d712 (coe v0))))
name748 = "Algebra.SemiringWithoutOne._.distribʳ"
d748 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d748 v0 v1 v2 = du748 v2
du748 :: T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du748 v0
  = let v1 = d712 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d496 (coe v1))))
name750 = "Algebra.SemiringWithoutOne._.isEquivalence"
d750 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T684 -> MAlonzo.Code.Relation.Binary.Core.T578
d750 v0 v1 v2 = du750 v2
du750 :: T684 -> MAlonzo.Code.Relation.Binary.Core.T578
du750 v0
  = let v1 = d712 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d84
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v1))))))
name752 = "Algebra.SemiringWithoutOne._.isNearSemiring"
d752 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T684 -> MAlonzo.Code.Algebra.Structures.T414
d752 v0 v1 v2 = du752 v2
du752 :: T684 -> MAlonzo.Code.Algebra.Structures.T414
du752 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du516
         (coe (d706 (coe v0))) (coe (d710 (coe v0))) (coe (d712 (coe v0))))
name754 = "Algebra.SemiringWithoutOne._.refl"
d754 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T684 -> AgdaAny -> AgdaAny
d754 v0 v1 v2 = du754 v2
du754 :: T684 -> AgdaAny -> AgdaAny
du754 v0
  = let v1 = d712 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v1))))))))
name756 = "Algebra.SemiringWithoutOne._.reflexive"
d756 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T684 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d756 v0 v1 v2 = du756 v2
du756 ::
  T684 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du756 v0
  = let v1 = d706 (coe v0) in
    let v2 = d710 (coe v0) in
    let v3 = d712 (coe v0) in
    let v4
          = MAlonzo.Code.Algebra.Structures.du516
              (coe v1) (coe v2) (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d430 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d148 (coe v5) in
    coe
      (\ v7 v8 v9 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d84 (coe v6))) v7)
name758 = "Algebra.SemiringWithoutOne._.setoid"
d758 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T684 -> MAlonzo.Code.Relation.Binary.T128
d758 v0 v1 v2 = du758 v2
du758 :: T684 -> MAlonzo.Code.Relation.Binary.T128
du758 v0
  = let v1 = d706 (coe v0) in
    let v2 = d710 (coe v0) in
    let v3 = d712 (coe v0) in
    let v4
          = MAlonzo.Code.Algebra.Structures.du516
              (coe v1) (coe v2) (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d430 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du90
         (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v5))))
name760 = "Algebra.SemiringWithoutOne._.sym"
d760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d760 v0 v1 v2 = du760 v2
du760 :: T684 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du760 v0
  = let v1 = d712 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v1))))))))
name762 = "Algebra.SemiringWithoutOne._.trans"
d762 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T684 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d762 v0 v1 v2 = du762 v2
du762 ::
  T684 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du762 v0
  = let v1 = d712 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v1))))))))
name764 = "Algebra.SemiringWithoutOne._.zero"
d764 :: T684 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d764 v0
  = coe (MAlonzo.Code.Algebra.Structures.d498 (coe (d712 (coe v0))))
name766 = "Algebra.SemiringWithoutOne._.zeroʳ"
d766 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T684 -> AgdaAny -> AgdaAny
d766 v0 v1 v2 = du766 v2
du766 :: T684 -> AgdaAny -> AgdaAny
du766 v0
  = let v1 = d712 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d498 (coe v1))))
name768 = "Algebra.SemiringWithoutOne._.zeroˡ"
d768 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T684 -> AgdaAny -> AgdaAny
d768 v0 v1 v2 = du768 v2
du768 :: T684 -> AgdaAny -> AgdaAny
du768 v0
  = let v1 = d712 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d498 (coe v1))))
name770 = "Algebra.SemiringWithoutOne.nearSemiring"
d770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T684 -> T602
d770 v0 v1 v2 = du770 v2
du770 :: T684 -> T602
du770 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C2533 v3 v4 v5 v6) erased erased
      (d706 (coe v0)) (d708 (coe v0)) (d710 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du516
         (coe (d706 (coe v0))) (coe (d710 (coe v0))) (coe (d712 (coe v0))))
name774 = "Algebra.SemiringWithoutOne._.*-semigroup"
d774 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T684 -> T28
d774 v0 v1 v2 = du774 v2
du774 :: T684 -> T28
du774 v0 = coe (du678 (coe (du770 (coe v0))))
name776 = "Algebra.SemiringWithoutOne._.+-monoid"
d776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T684 -> T154
d776 v0 v1 v2 = du776 v2
du776 :: T684 -> T154
du776 v0 = coe (du670 (coe (du770 (coe v0))))
name778 = "Algebra.SemiringWithoutOne._.rawMonoid"
d778 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T684 -> T128
d778 v0 v1 v2 = du778 v2
du778 :: T684 -> T128
du778 v0
  = let v1 = du770 (coe v0) in coe (du208 (coe (du670 (coe v1))))
name780 = "Algebra.SemiringWithoutOne._.semigroup"
d780 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T684 -> T28
d780 v0 v1 v2 = du780 v2
du780 :: T684 -> T28
du780 v0
  = let v1 = du770 (coe v0) in coe (du206 (coe (du670 (coe v1))))
name782 = "Algebra.SemiringWithoutOne.+-commutativeMonoid"
d782 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T684 -> T214
d782 v0 v1 v2 = du782 v2
du782 :: T684 -> T214
du782 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C889 v3 v4 v5) erased erased (d706 (coe v0))
      (d710 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d492 (coe (d712 (coe v0))))
name788 = "Algebra.SemiringWithoutAnnihilatingZero"
d788 a0 a1 = ()
data T788
  = C3333 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
          MAlonzo.Code.Algebra.Structures.T560
name808 = "Algebra.SemiringWithoutAnnihilatingZero.Carrier"
d808 :: T788 -> ()
d808 = erased
name810 = "Algebra.SemiringWithoutAnnihilatingZero._≈_"
d810 :: T788 -> AgdaAny -> AgdaAny -> ()
d810 = erased
name812 = "Algebra.SemiringWithoutAnnihilatingZero._+_"
d812 :: T788 -> AgdaAny -> AgdaAny -> AgdaAny
d812 v0
  = case coe v0 of
      C3333 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name814 = "Algebra.SemiringWithoutAnnihilatingZero._*_"
d814 :: T788 -> AgdaAny -> AgdaAny -> AgdaAny
d814 v0
  = case coe v0 of
      C3333 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name816 = "Algebra.SemiringWithoutAnnihilatingZero.0#"
d816 :: T788 -> AgdaAny
d816 v0
  = case coe v0 of
      C3333 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name818 = "Algebra.SemiringWithoutAnnihilatingZero.1#"
d818 :: T788 -> AgdaAny
d818 v0
  = case coe v0 of
      C3333 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name820
  = "Algebra.SemiringWithoutAnnihilatingZero.isSemiringWithoutAnnihilatingZero"
d820 :: T788 -> MAlonzo.Code.Algebra.Structures.T560
d820 v0
  = case coe v0 of
      C3333 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name824 = "Algebra.SemiringWithoutAnnihilatingZero._.assoc"
d824 :: T788 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d824 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d578 (coe (d820 (coe v0))))))))
name826 = "Algebra.SemiringWithoutAnnihilatingZero._.∙-cong"
d826 ::
  T788 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d826 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d578 (coe (d820 (coe v0))))))))
name828 = "Algebra.SemiringWithoutAnnihilatingZero._.identity"
d828 :: T788 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d828 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d150
         (coe (MAlonzo.Code.Algebra.Structures.d578 (coe (d820 (coe v0))))))
name830 = "Algebra.SemiringWithoutAnnihilatingZero._.identityʳ"
d830 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T788 -> AgdaAny -> AgdaAny
d830 v0 v1 v2 = du830 v2
du830 :: T788 -> AgdaAny -> AgdaAny
du830 v0
  = let v1 = d820 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d578 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v2))))
name832 = "Algebra.SemiringWithoutAnnihilatingZero._.identityˡ"
d832 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T788 -> AgdaAny -> AgdaAny
d832 v0 v1 v2 = du832 v2
du832 :: T788 -> AgdaAny -> AgdaAny
du832 v0
  = let v1 = d820 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d578 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v2))))
name834 = "Algebra.SemiringWithoutAnnihilatingZero._.*-isMonoid"
d834 :: T788 -> MAlonzo.Code.Algebra.Structures.T138
d834 v0
  = coe (MAlonzo.Code.Algebra.Structures.d578 (coe (d820 (coe v0))))
name836 = "Algebra.SemiringWithoutAnnihilatingZero._.isSemigroup"
d836 :: T788 -> MAlonzo.Code.Algebra.Structures.T74
d836 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d148
         (coe (MAlonzo.Code.Algebra.Structures.d578 (coe (d820 (coe v0))))))
name838 = "Algebra.SemiringWithoutAnnihilatingZero._.assoc"
d838 :: T788 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d838 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe
                  (MAlonzo.Code.Algebra.Structures.d576 (coe (d820 (coe v0))))))))
name840 = "Algebra.SemiringWithoutAnnihilatingZero._.comm"
d840 :: T788 -> AgdaAny -> AgdaAny -> AgdaAny
d840 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d194
         (coe (MAlonzo.Code.Algebra.Structures.d576 (coe (d820 (coe v0))))))
name842 = "Algebra.SemiringWithoutAnnihilatingZero._.∙-cong"
d842 ::
  T788 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d842 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe
                  (MAlonzo.Code.Algebra.Structures.d576 (coe (d820 (coe v0))))))))
name844 = "Algebra.SemiringWithoutAnnihilatingZero._.identity"
d844 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T788 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d844 v0 v1 v2 = du844 v2
du844 :: T788 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du844 v0
  = let v1 = d812 (coe v0) in
    let v2 = d816 (coe v0) in
    let v3 = d820 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du216
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d576 (coe v3))))
name846 = "Algebra.SemiringWithoutAnnihilatingZero._.identityʳ"
d846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T788 -> AgdaAny -> AgdaAny
d846 v0 v1 v2 = du846 v2
du846 :: T788 -> AgdaAny -> AgdaAny
du846 v0
  = let v1 = d812 (coe v0) in
    let v2 = d816 (coe v0) in
    let v3 = d820 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du214
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d576 (coe v3))))
name848 = "Algebra.SemiringWithoutAnnihilatingZero._.identityˡ"
d848 :: T788 -> AgdaAny -> AgdaAny
d848 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d192
         (coe (MAlonzo.Code.Algebra.Structures.d576 (coe (d820 (coe v0))))))
name850
  = "Algebra.SemiringWithoutAnnihilatingZero._.+-isCommutativeMonoid"
d850 :: T788 -> MAlonzo.Code.Algebra.Structures.T178
d850 v0
  = coe (MAlonzo.Code.Algebra.Structures.d576 (coe (d820 (coe v0))))
name852 = "Algebra.SemiringWithoutAnnihilatingZero._.isMonoid"
d852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T788 -> MAlonzo.Code.Algebra.Structures.T138
d852 v0 v1 v2 = du852 v2
du852 :: T788 -> MAlonzo.Code.Algebra.Structures.T138
du852 v0
  = let v1 = d812 (coe v0) in
    let v2 = d816 (coe v0) in
    let v3 = d820 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du218
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d576 (coe v3))))
name854 = "Algebra.SemiringWithoutAnnihilatingZero._.isSemigroup"
d854 :: T788 -> MAlonzo.Code.Algebra.Structures.T74
d854 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d190
         (coe (MAlonzo.Code.Algebra.Structures.d576 (coe (d820 (coe v0))))))
name856 = "Algebra.SemiringWithoutAnnihilatingZero._.distrib"
d856 :: T788 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d856 v0
  = coe (MAlonzo.Code.Algebra.Structures.d580 (coe (d820 (coe v0))))
name858 = "Algebra.SemiringWithoutAnnihilatingZero._.distribʳ"
d858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T788 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d858 v0 v1 v2 = du858 v2
du858 :: T788 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du858 v0
  = let v1 = d820 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d580 (coe v1))))
name860 = "Algebra.SemiringWithoutAnnihilatingZero._.distribˡ"
d860 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T788 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d860 v0 v1 v2 = du860 v2
du860 :: T788 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du860 v0
  = let v1 = d820 (coe v0) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d580 (coe v1))))
name862 = "Algebra.SemiringWithoutAnnihilatingZero._.isEquivalence"
d862 :: T788 -> MAlonzo.Code.Relation.Binary.Core.T578
d862 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d84
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe
                  (MAlonzo.Code.Algebra.Structures.d576 (coe (d820 (coe v0))))))))
name864 = "Algebra.SemiringWithoutAnnihilatingZero._.refl"
d864 :: T788 -> AgdaAny -> AgdaAny
d864 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d576 (coe (d820 (coe v0))))))))))
name866 = "Algebra.SemiringWithoutAnnihilatingZero._.reflexive"
d866 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T788 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d866 v0 v1 v2 = du866 v2
du866 ::
  T788 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du866 v0
  = let v1 = d820 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d576 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d190 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d84 (coe v3))) v4)
name868 = "Algebra.SemiringWithoutAnnihilatingZero._.setoid"
d868 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T788 -> MAlonzo.Code.Relation.Binary.T128
d868 v0 v1 v2 = du868 v2
du868 :: T788 -> MAlonzo.Code.Relation.Binary.T128
du868 v0
  = let v1 = d820 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d576 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du90
         (coe (MAlonzo.Code.Algebra.Structures.d190 (coe v2))))
name870 = "Algebra.SemiringWithoutAnnihilatingZero._.sym"
d870 :: T788 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d870 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d576 (coe (d820 (coe v0))))))))))
name872 = "Algebra.SemiringWithoutAnnihilatingZero._.trans"
d872 ::
  T788 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d872 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d576 (coe (d820 (coe v0))))))))))
name874
  = "Algebra.SemiringWithoutAnnihilatingZero.+-commutativeMonoid"
d874 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T788 -> T214
d874 v0 v1 v2 = du874 v2
du874 :: T788 -> T214
du874 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C889 v3 v4 v5) erased erased (d812 (coe v0))
      (d816 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d576 (coe (d820 (coe v0))))
name878 = "Algebra.SemiringWithoutAnnihilatingZero._.monoid"
d878 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T788 -> T154
d878 v0 v1 v2 = du878 v2
du878 :: T788 -> T154
du878 v0 = coe (du270 (coe (du874 (coe v0))))
name880 = "Algebra.SemiringWithoutAnnihilatingZero._.rawMonoid"
d880 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T788 -> T128
d880 v0 v1 v2 = du880 v2
du880 :: T788 -> T128
du880 v0
  = let v1 = du874 (coe v0) in coe (du208 (coe (du270 (coe v1))))
name882 = "Algebra.SemiringWithoutAnnihilatingZero._.semigroup"
d882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T788 -> T28
d882 v0 v1 v2 = du882 v2
du882 :: T788 -> T28
du882 v0
  = let v1 = du874 (coe v0) in coe (du206 (coe (du270 (coe v1))))
name884 = "Algebra.SemiringWithoutAnnihilatingZero.*-monoid"
d884 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T788 -> T154
d884 v0 v1 v2 = du884 v2
du884 :: T788 -> T154
du884 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C593 v3 v4 v5) erased erased (d814 (coe v0))
      (d818 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d578 (coe (d820 (coe v0))))
name888 = "Algebra.SemiringWithoutAnnihilatingZero._.rawMonoid"
d888 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T788 -> T128
d888 v0 v1 v2 = du888 v2
du888 :: T788 -> T128
du888 v0 = coe (du208 (coe (du884 (coe v0))))
name890 = "Algebra.SemiringWithoutAnnihilatingZero._.semigroup"
d890 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T788 -> T28
d890 v0 v1 v2 = du890 v2
du890 :: T788 -> T28
du890 v0 = coe (du206 (coe (du884 (coe v0))))
name896 = "Algebra.Semiring"
d896 a0 a1 = ()
data T896
  = C3797 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
          MAlonzo.Code.Algebra.Structures.T638
name916 = "Algebra.Semiring.Carrier"
d916 :: T896 -> ()
d916 = erased
name918 = "Algebra.Semiring._≈_"
d918 :: T896 -> AgdaAny -> AgdaAny -> ()
d918 = erased
name920 = "Algebra.Semiring._+_"
d920 :: T896 -> AgdaAny -> AgdaAny -> AgdaAny
d920 v0
  = case coe v0 of
      C3797 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name922 = "Algebra.Semiring._*_"
d922 :: T896 -> AgdaAny -> AgdaAny -> AgdaAny
d922 v0
  = case coe v0 of
      C3797 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name924 = "Algebra.Semiring.0#"
d924 :: T896 -> AgdaAny
d924 v0
  = case coe v0 of
      C3797 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name926 = "Algebra.Semiring.1#"
d926 :: T896 -> AgdaAny
d926 v0
  = case coe v0 of
      C3797 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name928 = "Algebra.Semiring.isSemiring"
d928 :: T896 -> MAlonzo.Code.Algebra.Structures.T638
d928 v0
  = case coe v0 of
      C3797 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name932 = "Algebra.Semiring._.assoc"
d932 :: T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d932 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d578
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d652 (coe (d928 (coe v0))))))))))
name934 = "Algebra.Semiring._.∙-cong"
d934 ::
  T896 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d934 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d578
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d652 (coe (d928 (coe v0))))))))))
name936 = "Algebra.Semiring._.identity"
d936 :: T896 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d936 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d150
         (coe
            (MAlonzo.Code.Algebra.Structures.d578
               (coe
                  (MAlonzo.Code.Algebra.Structures.d652 (coe (d928 (coe v0))))))))
name938 = "Algebra.Semiring._.identityʳ"
d938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T896 -> AgdaAny -> AgdaAny
d938 v0 v1 v2 = du938 v2
du938 :: T896 -> AgdaAny -> AgdaAny
du938 v0
  = let v1 = d928 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d652 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d578 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v3))))
name940 = "Algebra.Semiring._.identityˡ"
d940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T896 -> AgdaAny -> AgdaAny
d940 v0 v1 v2 = du940 v2
du940 :: T896 -> AgdaAny -> AgdaAny
du940 v0
  = let v1 = d928 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d652 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d578 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v3))))
name942 = "Algebra.Semiring._.*-isMonoid"
d942 :: T896 -> MAlonzo.Code.Algebra.Structures.T138
d942 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d578
         (coe (MAlonzo.Code.Algebra.Structures.d652 (coe (d928 (coe v0))))))
name944 = "Algebra.Semiring._.isSemigroup"
d944 :: T896 -> MAlonzo.Code.Algebra.Structures.T74
d944 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d148
         (coe
            (MAlonzo.Code.Algebra.Structures.d578
               (coe
                  (MAlonzo.Code.Algebra.Structures.d652 (coe (d928 (coe v0))))))))
name946 = "Algebra.Semiring._.assoc"
d946 :: T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d946 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe
                  (MAlonzo.Code.Algebra.Structures.d576
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d652 (coe (d928 (coe v0))))))))))
name948 = "Algebra.Semiring._.comm"
d948 :: T896 -> AgdaAny -> AgdaAny -> AgdaAny
d948 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d194
         (coe
            (MAlonzo.Code.Algebra.Structures.d576
               (coe
                  (MAlonzo.Code.Algebra.Structures.d652 (coe (d928 (coe v0))))))))
name950 = "Algebra.Semiring._.∙-cong"
d950 ::
  T896 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d950 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe
                  (MAlonzo.Code.Algebra.Structures.d576
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d652 (coe (d928 (coe v0))))))))))
name952 = "Algebra.Semiring._.identity"
d952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T896 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d952 v0 v1 v2 = du952 v2
du952 :: T896 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du952 v0
  = let v1 = d920 (coe v0) in
    let v2 = d924 (coe v0) in
    let v3 = d928 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d652 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du216
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d576 (coe v4))))
name954 = "Algebra.Semiring._.identityʳ"
d954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T896 -> AgdaAny -> AgdaAny
d954 v0 v1 v2 = du954 v2
du954 :: T896 -> AgdaAny -> AgdaAny
du954 v0
  = let v1 = d920 (coe v0) in
    let v2 = d924 (coe v0) in
    let v3 = d928 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d652 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du214
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d576 (coe v4))))
name956 = "Algebra.Semiring._.identityˡ"
d956 :: T896 -> AgdaAny -> AgdaAny
d956 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d192
         (coe
            (MAlonzo.Code.Algebra.Structures.d576
               (coe
                  (MAlonzo.Code.Algebra.Structures.d652 (coe (d928 (coe v0))))))))
name958 = "Algebra.Semiring._.+-isCommutativeMonoid"
d958 :: T896 -> MAlonzo.Code.Algebra.Structures.T178
d958 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d576
         (coe (MAlonzo.Code.Algebra.Structures.d652 (coe (d928 (coe v0))))))
name960 = "Algebra.Semiring._.isMonoid"
d960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T896 -> MAlonzo.Code.Algebra.Structures.T138
d960 v0 v1 v2 = du960 v2
du960 :: T896 -> MAlonzo.Code.Algebra.Structures.T138
du960 v0
  = let v1 = d920 (coe v0) in
    let v2 = d924 (coe v0) in
    let v3 = d928 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d652 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du218
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d576 (coe v4))))
name962 = "Algebra.Semiring._.isSemigroup"
d962 :: T896 -> MAlonzo.Code.Algebra.Structures.T74
d962 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d190
         (coe
            (MAlonzo.Code.Algebra.Structures.d576
               (coe
                  (MAlonzo.Code.Algebra.Structures.d652 (coe (d928 (coe v0))))))))
name964 = "Algebra.Semiring._.distrib"
d964 :: T896 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d964 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d580
         (coe (MAlonzo.Code.Algebra.Structures.d652 (coe (d928 (coe v0))))))
name966 = "Algebra.Semiring._.distribʳ"
d966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d966 v0 v1 v2 = du966 v2
du966 :: T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du966 v0
  = let v1 = d928 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d652 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d580 (coe v2))))
name968 = "Algebra.Semiring._.distribˡ"
d968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d968 v0 v1 v2 = du968 v2
du968 :: T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du968 v0
  = let v1 = d928 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d652 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d580 (coe v2))))
name970 = "Algebra.Semiring._.isEquivalence"
d970 :: T896 -> MAlonzo.Code.Relation.Binary.Core.T578
d970 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d84
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe
                  (MAlonzo.Code.Algebra.Structures.d576
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d652 (coe (d928 (coe v0))))))))))
name972 = "Algebra.Semiring._.isNearSemiring"
d972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T896 -> MAlonzo.Code.Algebra.Structures.T414
d972 v0 v1 v2 = du972 v2
du972 :: T896 -> MAlonzo.Code.Algebra.Structures.T414
du972 v0
  = let v1 = d920 (coe v0) in
    let v2 = d924 (coe v0) in
    let v3 = d928 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du516
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.du708 (coe v3))))
name974 = "Algebra.Semiring._.isSemiringWithoutAnnihilatingZero"
d974 :: T896 -> MAlonzo.Code.Algebra.Structures.T560
d974 v0
  = coe (MAlonzo.Code.Algebra.Structures.d652 (coe (d928 (coe v0))))
name976 = "Algebra.Semiring._.isSemiringWithoutOne"
d976 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T896 -> MAlonzo.Code.Algebra.Structures.T476
d976 v0 v1 v2 = du976 v2
du976 :: T896 -> MAlonzo.Code.Algebra.Structures.T476
du976 v0
  = coe (MAlonzo.Code.Algebra.Structures.du708 (coe (d928 (coe v0))))
name978 = "Algebra.Semiring._.refl"
d978 :: T896 -> AgdaAny -> AgdaAny
d978 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d576
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d652
                                 (coe (d928 (coe v0))))))))))))
name980 = "Algebra.Semiring._.reflexive"
d980 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T896 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d980 v0 v1 v2 = du980 v2
du980 ::
  T896 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du980 v0
  = let v1 = d928 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d652 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d576 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d190 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d84 (coe v4))) v5)
name982 = "Algebra.Semiring._.setoid"
d982 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T896 -> MAlonzo.Code.Relation.Binary.T128
d982 v0 v1 v2 = du982 v2
du982 :: T896 -> MAlonzo.Code.Relation.Binary.T128
du982 v0
  = let v1 = d928 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d652 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d576 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du90
         (coe (MAlonzo.Code.Algebra.Structures.d190 (coe v3))))
name984 = "Algebra.Semiring._.sym"
d984 :: T896 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d984 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d576
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d652
                                 (coe (d928 (coe v0))))))))))))
name986 = "Algebra.Semiring._.trans"
d986 ::
  T896 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d986 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d576
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d652
                                 (coe (d928 (coe v0))))))))))))
name988 = "Algebra.Semiring._.zero"
d988 :: T896 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d988 v0
  = coe (MAlonzo.Code.Algebra.Structures.d654 (coe (d928 (coe v0))))
name990 = "Algebra.Semiring._.zeroʳ"
d990 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T896 -> AgdaAny -> AgdaAny
d990 v0 v1 v2 = du990 v2
du990 :: T896 -> AgdaAny -> AgdaAny
du990 v0
  = let v1 = d928 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du708 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d498 (coe v2))))
name992 = "Algebra.Semiring._.zeroˡ"
d992 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T896 -> AgdaAny -> AgdaAny
d992 v0 v1 v2 = du992 v2
du992 :: T896 -> AgdaAny -> AgdaAny
du992 v0
  = let v1 = d928 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.du708 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d498 (coe v2))))
name994 = "Algebra.Semiring.rawSemiring"
d994 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T896 -> T568
d994 v0 v1 v2 = du994 v2
du994 :: T896 -> T568
du994 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C2413 v3 v4 v5 v6) erased erased
      (d920 (coe v0)) (d922 (coe v0)) (d924 (coe v0)) (d926 (coe v0))
name996 = "Algebra.Semiring.semiringWithoutAnnihilatingZero"
d996 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T896 -> T788
d996 v0 v1 v2 = du996 v2
du996 :: T896 -> T788
du996 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 -> C3333 v3 v4 v5 v6 v7) erased erased
      (d920 (coe v0)) (d922 (coe v0)) (d924 (coe v0)) (d926 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d652 (coe (d928 (coe v0))))
name1000 = "Algebra.Semiring._.*-monoid"
d1000 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T896 -> T154
d1000 v0 v1 v2 = du1000 v2
du1000 :: T896 -> T154
du1000 v0 = coe (du884 (coe (du996 (coe v0))))
name1002 = "Algebra.Semiring._.rawMonoid"
d1002 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T896 -> T128
d1002 v0 v1 v2 = du1002 v2
du1002 :: T896 -> T128
du1002 v0
  = let v1 = du996 (coe v0) in coe (du208 (coe (du884 (coe v1))))
name1004 = "Algebra.Semiring._.semigroup"
d1004 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T896 -> T28
d1004 v0 v1 v2 = du1004 v2
du1004 :: T896 -> T28
du1004 v0
  = let v1 = du996 (coe v0) in coe (du206 (coe (du884 (coe v1))))
name1006 = "Algebra.Semiring._.+-commutativeMonoid"
d1006 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T896 -> T214
d1006 v0 v1 v2 = du1006 v2
du1006 :: T896 -> T214
du1006 v0 = coe (du874 (coe (du996 (coe v0))))
name1008 = "Algebra.Semiring._.monoid"
d1008 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T896 -> T154
d1008 v0 v1 v2 = du1008 v2
du1008 :: T896 -> T154
du1008 v0
  = let v1 = du996 (coe v0) in coe (du270 (coe (du874 (coe v1))))
name1010 = "Algebra.Semiring._.rawMonoid"
d1010 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T896 -> T128
d1010 v0 v1 v2 = du1010 v2
du1010 :: T896 -> T128
du1010 v0
  = let v1 = du996 (coe v0) in
    let v2 = du874 (coe v1) in coe (du208 (coe (du270 (coe v2))))
name1012 = "Algebra.Semiring._.semigroup"
d1012 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T896 -> T28
d1012 v0 v1 v2 = du1012 v2
du1012 :: T896 -> T28
du1012 v0
  = let v1 = du996 (coe v0) in
    let v2 = du874 (coe v1) in coe (du206 (coe (du270 (coe v2))))
name1014 = "Algebra.Semiring.semiringWithoutOne"
d1014 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T896 -> T684
d1014 v0 v1 v2 = du1014 v2
du1014 :: T896 -> T684
du1014 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C2913 v3 v4 v5 v6) erased erased
      (d920 (coe v0)) (d922 (coe v0)) (d924 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du708 (coe (d928 (coe v0))))
name1018 = "Algebra.Semiring._.nearSemiring"
d1018 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T896 -> T602
d1018 v0 v1 v2 = du1018 v2
du1018 :: T896 -> T602
du1018 v0 = coe (du770 (coe (du1014 (coe v0))))
name1024 = "Algebra.CommutativeSemiringWithoutOne"
d1024 a0 a1 = ()
data T1024
  = C4367 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
          MAlonzo.Code.Algebra.Structures.T724
name1042 = "Algebra.CommutativeSemiringWithoutOne.Carrier"
d1042 :: T1024 -> ()
d1042 = erased
name1044 = "Algebra.CommutativeSemiringWithoutOne._≈_"
d1044 :: T1024 -> AgdaAny -> AgdaAny -> ()
d1044 = erased
name1046 = "Algebra.CommutativeSemiringWithoutOne._+_"
d1046 :: T1024 -> AgdaAny -> AgdaAny -> AgdaAny
d1046 v0
  = case coe v0 of
      C4367 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1048 = "Algebra.CommutativeSemiringWithoutOne._*_"
d1048 :: T1024 -> AgdaAny -> AgdaAny -> AgdaAny
d1048 v0
  = case coe v0 of
      C4367 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1050 = "Algebra.CommutativeSemiringWithoutOne.0#"
d1050 :: T1024 -> AgdaAny
d1050 v0
  = case coe v0 of
      C4367 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1052
  = "Algebra.CommutativeSemiringWithoutOne.isCommutativeSemiringWithoutOne"
d1052 :: T1024 -> MAlonzo.Code.Algebra.Structures.T724
d1052 v0
  = case coe v0 of
      C4367 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1056 = "Algebra.CommutativeSemiringWithoutOne._.assoc"
d1056 :: T1024 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1056 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d494
               (coe
                  (MAlonzo.Code.Algebra.Structures.d736 (coe (d1052 (coe v0))))))))
name1058 = "Algebra.CommutativeSemiringWithoutOne._.assoc"
d1058 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1024 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1058 v0 v1 v2 = du1058 v2
du1058 :: T1024 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1058 v0
  = let v1 = d1052 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d736 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe (MAlonzo.Code.Algebra.Structures.d494 (coe v2))))
name1060 = "Algebra.CommutativeSemiringWithoutOne._.*-comm"
d1060 :: T1024 -> AgdaAny -> AgdaAny -> AgdaAny
d1060 v0
  = coe (MAlonzo.Code.Algebra.Structures.d738 (coe (d1052 (coe v0))))
name1062 = "Algebra.CommutativeSemiringWithoutOne._.∙-cong"
d1062 ::
  T1024 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1062 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d494
               (coe
                  (MAlonzo.Code.Algebra.Structures.d736 (coe (d1052 (coe v0))))))))
name1064 = "Algebra.CommutativeSemiringWithoutOne._.∙-cong"
d1064 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1024 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1064 v0 v1 v2 = du1064 v2
du1064 ::
  T1024 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1064 v0
  = let v1 = d1052 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d736 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe (MAlonzo.Code.Algebra.Structures.d494 (coe v2))))
name1066 = "Algebra.CommutativeSemiringWithoutOne._.*-isSemigroup"
d1066 :: T1024 -> MAlonzo.Code.Algebra.Structures.T74
d1066 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d494
         (coe
            (MAlonzo.Code.Algebra.Structures.d736 (coe (d1052 (coe v0))))))
name1068 = "Algebra.CommutativeSemiringWithoutOne._.*-isSemigroup"
d1068 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1024 -> MAlonzo.Code.Algebra.Structures.T74
d1068 v0 v1 v2 = du1068 v2
du1068 :: T1024 -> MAlonzo.Code.Algebra.Structures.T74
du1068 v0
  = let v1 = d1052 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d736 (coe v1) in
    coe (MAlonzo.Code.Algebra.Structures.d494 (coe v2))
name1070 = "Algebra.CommutativeSemiringWithoutOne._.assoc"
d1070 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1024 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1070 v0 v1 v2 = du1070 v2
du1070 :: T1024 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1070 v0
  = let v1 = d1052 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d736 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v2))))))
name1072 = "Algebra.CommutativeSemiringWithoutOne._.comm"
d1072 :: T1024 -> AgdaAny -> AgdaAny -> AgdaAny
d1072 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d194
         (coe
            (MAlonzo.Code.Algebra.Structures.d492
               (coe
                  (MAlonzo.Code.Algebra.Structures.d736 (coe (d1052 (coe v0))))))))
name1074 = "Algebra.CommutativeSemiringWithoutOne._.∙-cong"
d1074 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1024 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1074 v0 v1 v2 = du1074 v2
du1074 ::
  T1024 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1074 v0
  = let v1 = d1052 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d736 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v2))))))
name1076 = "Algebra.CommutativeSemiringWithoutOne._.identity"
d1076 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1024 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1076 v0 v1 v2 = du1076 v2
du1076 :: T1024 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1076 v0
  = let v1 = d1046 (coe v0) in
    let v2 = d1050 (coe v0) in
    let v3 = d1052 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d736 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du216
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v4))))
name1078 = "Algebra.CommutativeSemiringWithoutOne._.identityʳ"
d1078 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1024 -> AgdaAny -> AgdaAny
d1078 v0 v1 v2 = du1078 v2
du1078 :: T1024 -> AgdaAny -> AgdaAny
du1078 v0
  = let v1 = d1046 (coe v0) in
    let v2 = d1050 (coe v0) in
    let v3 = d1052 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d736 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.du516
              (coe v1) (coe v2) (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d430 (coe v5) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v6))))
name1080 = "Algebra.CommutativeSemiringWithoutOne._.identityˡ"
d1080 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1024 -> AgdaAny -> AgdaAny
d1080 v0 v1 v2 = du1080 v2
du1080 :: T1024 -> AgdaAny -> AgdaAny
du1080 v0
  = let v1 = d1046 (coe v0) in
    let v2 = d1050 (coe v0) in
    let v3 = d1052 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d736 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.du516
              (coe v1) (coe v2) (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d430 (coe v5) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v6))))
name1082
  = "Algebra.CommutativeSemiringWithoutOne._.+-isCommutativeMonoid"
d1082 :: T1024 -> MAlonzo.Code.Algebra.Structures.T178
d1082 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d492
         (coe
            (MAlonzo.Code.Algebra.Structures.d736 (coe (d1052 (coe v0))))))
name1084 = "Algebra.CommutativeSemiringWithoutOne._.isMonoid"
d1084 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1024 -> MAlonzo.Code.Algebra.Structures.T138
d1084 v0 v1 v2 = du1084 v2
du1084 :: T1024 -> MAlonzo.Code.Algebra.Structures.T138
du1084 v0
  = let v1 = d1046 (coe v0) in
    let v2 = d1050 (coe v0) in
    let v3 = d1052 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d736 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du218
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v4))))
name1086 = "Algebra.CommutativeSemiringWithoutOne._.isSemigroup"
d1086 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1024 -> MAlonzo.Code.Algebra.Structures.T74
d1086 v0 v1 v2 = du1086 v2
du1086 :: T1024 -> MAlonzo.Code.Algebra.Structures.T74
du1086 v0
  = let v1 = d1052 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d736 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d190
         (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v2))))
name1088 = "Algebra.CommutativeSemiringWithoutOne._.distrib"
d1088 :: T1024 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1088 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d496
         (coe
            (MAlonzo.Code.Algebra.Structures.d736 (coe (d1052 (coe v0))))))
name1090 = "Algebra.CommutativeSemiringWithoutOne._.distribʳ"
d1090 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1024 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1090 v0 v1 v2 = du1090 v2
du1090 :: T1024 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1090 v0
  = let v1 = d1052 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d736 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d496 (coe v2))))
name1092 = "Algebra.CommutativeSemiringWithoutOne._.isEquivalence"
d1092 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1024 -> MAlonzo.Code.Relation.Binary.Core.T578
d1092 v0 v1 v2 = du1092 v2
du1092 :: T1024 -> MAlonzo.Code.Relation.Binary.Core.T578
du1092 v0
  = let v1 = d1052 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d736 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d84
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v2))))))
name1094 = "Algebra.CommutativeSemiringWithoutOne._.isNearSemiring"
d1094 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1024 -> MAlonzo.Code.Algebra.Structures.T414
d1094 v0 v1 v2 = du1094 v2
du1094 :: T1024 -> MAlonzo.Code.Algebra.Structures.T414
du1094 v0
  = let v1 = d1046 (coe v0) in
    let v2 = d1050 (coe v0) in
    let v3 = d1052 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du516
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d736 (coe v3))))
name1096
  = "Algebra.CommutativeSemiringWithoutOne._.isSemiringWithoutOne"
d1096 :: T1024 -> MAlonzo.Code.Algebra.Structures.T476
d1096 v0
  = coe (MAlonzo.Code.Algebra.Structures.d736 (coe (d1052 (coe v0))))
name1098 = "Algebra.CommutativeSemiringWithoutOne._.refl"
d1098 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1024 -> AgdaAny -> AgdaAny
d1098 v0 v1 v2 = du1098 v2
du1098 :: T1024 -> AgdaAny -> AgdaAny
du1098 v0
  = let v1 = d1052 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d736 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v2))))))))
name1100 = "Algebra.CommutativeSemiringWithoutOne._.reflexive"
d1100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1024 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1100 v0 v1 v2 = du1100 v2
du1100 ::
  T1024 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1100 v0
  = let v1 = d1046 (coe v0) in
    let v2 = d1050 (coe v0) in
    let v3 = d1052 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d736 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.du516
              (coe v1) (coe v2) (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d430 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d148 (coe v6) in
    coe
      (\ v8 v9 v10 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d84 (coe v7))) v8)
name1102 = "Algebra.CommutativeSemiringWithoutOne._.setoid"
d1102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1024 -> MAlonzo.Code.Relation.Binary.T128
d1102 v0 v1 v2 = du1102 v2
du1102 :: T1024 -> MAlonzo.Code.Relation.Binary.T128
du1102 v0
  = let v1 = d1046 (coe v0) in
    let v2 = d1050 (coe v0) in
    let v3 = d1052 (coe v0) in
    let v4 = MAlonzo.Code.Algebra.Structures.d736 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.du516
              (coe v1) (coe v2) (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d430 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du90
         (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v6))))
name1104 = "Algebra.CommutativeSemiringWithoutOne._.sym"
d1104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1024 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1104 v0 v1 v2 = du1104 v2
du1104 :: T1024 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1104 v0
  = let v1 = d1052 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d736 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v2))))))))
name1106 = "Algebra.CommutativeSemiringWithoutOne._.trans"
d1106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1024 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1106 v0 v1 v2 = du1106 v2
du1106 ::
  T1024 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1106 v0
  = let v1 = d1052 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d736 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe (MAlonzo.Code.Algebra.Structures.d492 (coe v2))))))))
name1108 = "Algebra.CommutativeSemiringWithoutOne._.zero"
d1108 :: T1024 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1108 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d498
         (coe
            (MAlonzo.Code.Algebra.Structures.d736 (coe (d1052 (coe v0))))))
name1110 = "Algebra.CommutativeSemiringWithoutOne._.zeroʳ"
d1110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1024 -> AgdaAny -> AgdaAny
d1110 v0 v1 v2 = du1110 v2
du1110 :: T1024 -> AgdaAny -> AgdaAny
du1110 v0
  = let v1 = d1052 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d736 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d498 (coe v2))))
name1112 = "Algebra.CommutativeSemiringWithoutOne._.zeroˡ"
d1112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1024 -> AgdaAny -> AgdaAny
d1112 v0 v1 v2 = du1112 v2
du1112 :: T1024 -> AgdaAny -> AgdaAny
du1112 v0
  = let v1 = d1052 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d736 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d498 (coe v2))))
name1114
  = "Algebra.CommutativeSemiringWithoutOne.semiringWithoutOne"
d1114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1024 -> T684
d1114 v0 v1 v2 = du1114 v2
du1114 :: T1024 -> T684
du1114 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C2913 v3 v4 v5 v6) erased erased
      (d1046 (coe v0)) (d1048 (coe v0)) (d1050 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d736 (coe (d1052 (coe v0))))
name1118 = "Algebra.CommutativeSemiringWithoutOne._.*-semigroup"
d1118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1024 -> T28
d1118 v0 v1 v2 = du1118 v2
du1118 :: T1024 -> T28
du1118 v0
  = let v1 = du1114 (coe v0) in coe (du678 (coe (du770 (coe v1))))
name1120
  = "Algebra.CommutativeSemiringWithoutOne._.+-commutativeMonoid"
d1120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1024 -> T214
d1120 v0 v1 v2 = du1120 v2
du1120 :: T1024 -> T214
du1120 v0 = coe (du782 (coe (du1114 (coe v0))))
name1122 = "Algebra.CommutativeSemiringWithoutOne._.+-monoid"
d1122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1024 -> T154
d1122 v0 v1 v2 = du1122 v2
du1122 :: T1024 -> T154
du1122 v0
  = let v1 = du1114 (coe v0) in coe (du670 (coe (du770 (coe v1))))
name1124 = "Algebra.CommutativeSemiringWithoutOne._.rawMonoid"
d1124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1024 -> T128
d1124 v0 v1 v2 = du1124 v2
du1124 :: T1024 -> T128
du1124 v0
  = let v1 = du1114 (coe v0) in
    let v2 = du770 (coe v1) in coe (du208 (coe (du670 (coe v2))))
name1126 = "Algebra.CommutativeSemiringWithoutOne._.semigroup"
d1126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1024 -> T28
d1126 v0 v1 v2 = du1126 v2
du1126 :: T1024 -> T28
du1126 v0
  = let v1 = du1114 (coe v0) in
    let v2 = du770 (coe v1) in coe (du206 (coe (du670 (coe v2))))
name1128 = "Algebra.CommutativeSemiringWithoutOne._.nearSemiring"
d1128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1024 -> T602
d1128 v0 v1 v2 = du1128 v2
du1128 :: T1024 -> T602
du1128 v0 = coe (du770 (coe (du1114 (coe v0))))
name1134 = "Algebra.CommutativeSemiring"
d1134 a0 a1 = ()
data T1134
  = C4777 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
          MAlonzo.Code.Algebra.Structures.T804
name1154 = "Algebra.CommutativeSemiring.Carrier"
d1154 :: T1134 -> ()
d1154 = erased
name1156 = "Algebra.CommutativeSemiring._≈_"
d1156 :: T1134 -> AgdaAny -> AgdaAny -> ()
d1156 = erased
name1158 = "Algebra.CommutativeSemiring._+_"
d1158 :: T1134 -> AgdaAny -> AgdaAny -> AgdaAny
d1158 v0
  = case coe v0 of
      C4777 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1160 = "Algebra.CommutativeSemiring._*_"
d1160 :: T1134 -> AgdaAny -> AgdaAny -> AgdaAny
d1160 v0
  = case coe v0 of
      C4777 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1162 = "Algebra.CommutativeSemiring.0#"
d1162 :: T1134 -> AgdaAny
d1162 v0
  = case coe v0 of
      C4777 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1164 = "Algebra.CommutativeSemiring.1#"
d1164 :: T1134 -> AgdaAny
d1164 v0
  = case coe v0 of
      C4777 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1166 = "Algebra.CommutativeSemiring.isCommutativeSemiring"
d1166 :: T1134 -> MAlonzo.Code.Algebra.Structures.T804
d1166 v0
  = case coe v0 of
      C4777 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1170 = "Algebra.CommutativeSemiring._.assoc"
d1170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1170 v0 v1 v2 = du1170 v2
du1170 :: T1134 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1170 v0
  = let v1 = d1166 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe (MAlonzo.Code.Algebra.Structures.d824 (coe v1))))))
name1172 = "Algebra.CommutativeSemiring._.comm"
d1172 :: T1134 -> AgdaAny -> AgdaAny -> AgdaAny
d1172 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d194
         (coe
            (MAlonzo.Code.Algebra.Structures.d824 (coe (d1166 (coe v0))))))
name1174 = "Algebra.CommutativeSemiring._.∙-cong"
d1174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1174 v0 v1 v2 = du1174 v2
du1174 ::
  T1134 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1174 v0
  = let v1 = d1166 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe (MAlonzo.Code.Algebra.Structures.d824 (coe v1))))))
name1176 = "Algebra.CommutativeSemiring._.identity"
d1176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1176 v0 v1 v2 = du1176 v2
du1176 :: T1134 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1176 v0
  = let v1 = d1160 (coe v0) in
    let v2 = d1164 (coe v0) in
    let v3 = d1166 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du216
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d824 (coe v3))))
name1178 = "Algebra.CommutativeSemiring._.identityʳ"
d1178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> AgdaAny -> AgdaAny
d1178 v0 v1 v2 = du1178 v2
du1178 :: T1134 -> AgdaAny -> AgdaAny
du1178 v0
  = let v1 = d1158 (coe v0) in
    let v2 = d1160 (coe v0) in
    let v3 = d1162 (coe v0) in
    let v4 = d1164 (coe v0) in
    let v5 = d1166 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du898
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d652 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d578 (coe v7) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v8))))
name1180 = "Algebra.CommutativeSemiring._.identityˡ"
d1180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> AgdaAny -> AgdaAny
d1180 v0 v1 v2 = du1180 v2
du1180 :: T1134 -> AgdaAny -> AgdaAny
du1180 v0
  = let v1 = d1158 (coe v0) in
    let v2 = d1160 (coe v0) in
    let v3 = d1162 (coe v0) in
    let v4 = d1164 (coe v0) in
    let v5 = d1166 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du898
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d652 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d578 (coe v7) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v8))))
name1182 = "Algebra.CommutativeSemiring._.*-isCommutativeMonoid"
d1182 :: T1134 -> MAlonzo.Code.Algebra.Structures.T178
d1182 v0
  = coe (MAlonzo.Code.Algebra.Structures.d824 (coe (d1166 (coe v0))))
name1184 = "Algebra.CommutativeSemiring._.*-isMonoid"
d1184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> MAlonzo.Code.Algebra.Structures.T138
d1184 v0 v1 v2 = du1184 v2
du1184 :: T1134 -> MAlonzo.Code.Algebra.Structures.T138
du1184 v0
  = let v1 = d1160 (coe v0) in
    let v2 = d1164 (coe v0) in
    let v3 = d1166 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du218
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d824 (coe v3))))
name1186 = "Algebra.CommutativeSemiring._.isSemigroup"
d1186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> MAlonzo.Code.Algebra.Structures.T74
d1186 v0 v1 v2 = du1186 v2
du1186 :: T1134 -> MAlonzo.Code.Algebra.Structures.T74
du1186 v0
  = let v1 = d1166 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d190
         (coe (MAlonzo.Code.Algebra.Structures.d824 (coe v1))))
name1188 = "Algebra.CommutativeSemiring._.assoc"
d1188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1188 v0 v1 v2 = du1188 v2
du1188 :: T1134 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1188 v0
  = let v1 = d1166 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe (MAlonzo.Code.Algebra.Structures.d822 (coe v1))))))
name1190 = "Algebra.CommutativeSemiring._.comm"
d1190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> AgdaAny -> AgdaAny -> AgdaAny
d1190 v0 v1 v2 = du1190 v2
du1190 :: T1134 -> AgdaAny -> AgdaAny -> AgdaAny
du1190 v0
  = let v1 = d1166 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d194
         (coe (MAlonzo.Code.Algebra.Structures.d822 (coe v1))))
name1192 = "Algebra.CommutativeSemiring._.∙-cong"
d1192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1192 v0 v1 v2 = du1192 v2
du1192 ::
  T1134 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1192 v0
  = let v1 = d1166 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe (MAlonzo.Code.Algebra.Structures.d822 (coe v1))))))
name1194 = "Algebra.CommutativeSemiring._.identity"
d1194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1194 v0 v1 v2 = du1194 v2
du1194 :: T1134 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1194 v0
  = let v1 = d1158 (coe v0) in
    let v2 = d1160 (coe v0) in
    let v3 = d1162 (coe v0) in
    let v4 = d1164 (coe v0) in
    let v5 = d1166 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du898
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d652 (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du216
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d576 (coe v7))))
name1196 = "Algebra.CommutativeSemiring._.identityʳ"
d1196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> AgdaAny -> AgdaAny
d1196 v0 v1 v2 = du1196 v2
du1196 :: T1134 -> AgdaAny -> AgdaAny
du1196 v0
  = let v1 = d1158 (coe v0) in
    let v2 = d1160 (coe v0) in
    let v3 = d1162 (coe v0) in
    let v4 = d1164 (coe v0) in
    let v5 = d1166 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du898
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d652 (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du214
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d576 (coe v7))))
name1198 = "Algebra.CommutativeSemiring._.identityˡ"
d1198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> AgdaAny -> AgdaAny
d1198 v0 v1 v2 = du1198 v2
du1198 :: T1134 -> AgdaAny -> AgdaAny
du1198 v0
  = let v1 = d1166 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d192
         (coe (MAlonzo.Code.Algebra.Structures.d822 (coe v1))))
name1200 = "Algebra.CommutativeSemiring._.+-isCommutativeMonoid"
d1200 :: T1134 -> MAlonzo.Code.Algebra.Structures.T178
d1200 v0
  = coe (MAlonzo.Code.Algebra.Structures.d822 (coe (d1166 (coe v0))))
name1202 = "Algebra.CommutativeSemiring._.isMonoid"
d1202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> MAlonzo.Code.Algebra.Structures.T138
d1202 v0 v1 v2 = du1202 v2
du1202 :: T1134 -> MAlonzo.Code.Algebra.Structures.T138
du1202 v0
  = let v1 = d1158 (coe v0) in
    let v2 = d1160 (coe v0) in
    let v3 = d1162 (coe v0) in
    let v4 = d1164 (coe v0) in
    let v5 = d1166 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du898
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d652 (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du218
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d576 (coe v7))))
name1204 = "Algebra.CommutativeSemiring._.isSemigroup"
d1204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> MAlonzo.Code.Algebra.Structures.T74
d1204 v0 v1 v2 = du1204 v2
du1204 :: T1134 -> MAlonzo.Code.Algebra.Structures.T74
du1204 v0
  = let v1 = d1166 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d190
         (coe (MAlonzo.Code.Algebra.Structures.d822 (coe v1))))
name1206 = "Algebra.CommutativeSemiring._.distrib"
d1206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1206 v0 v1 v2 = du1206 v2
du1206 :: T1134 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1206 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du892
         (coe (d1158 (coe v0))) (coe (d1160 (coe v0)))
         (coe (d1166 (coe v0))))
name1208 = "Algebra.CommutativeSemiring._.distribʳ"
d1208 :: T1134 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1208 v0
  = coe (MAlonzo.Code.Algebra.Structures.d826 (coe (d1166 (coe v0))))
name1210 = "Algebra.CommutativeSemiring._.distribˡ"
d1210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1210 v0 v1 v2 = du1210 v2
du1210 :: T1134 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1210 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du890
         (coe (d1158 (coe v0))) (coe (d1160 (coe v0)))
         (coe (d1166 (coe v0))))
name1212
  = "Algebra.CommutativeSemiring._.isCommutativeSemiringWithoutOne"
d1212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> MAlonzo.Code.Algebra.Structures.T724
d1212 v0 v1 v2 = du1212 v2
du1212 :: T1134 -> MAlonzo.Code.Algebra.Structures.T724
du1212 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du950
         (coe (d1158 (coe v0))) (coe (d1160 (coe v0)))
         (coe (d1162 (coe v0))) (coe (d1164 (coe v0)))
         (coe (d1166 (coe v0))))
name1214 = "Algebra.CommutativeSemiring._.isEquivalence"
d1214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> MAlonzo.Code.Relation.Binary.Core.T578
d1214 v0 v1 v2 = du1214 v2
du1214 :: T1134 -> MAlonzo.Code.Relation.Binary.Core.T578
du1214 v0
  = let v1 = d1166 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d84
         (coe
            (MAlonzo.Code.Algebra.Structures.d190
               (coe (MAlonzo.Code.Algebra.Structures.d822 (coe v1))))))
name1216 = "Algebra.CommutativeSemiring._.isNearSemiring"
d1216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> MAlonzo.Code.Algebra.Structures.T414
d1216 v0 v1 v2 = du1216 v2
du1216 :: T1134 -> MAlonzo.Code.Algebra.Structures.T414
du1216 v0
  = let v1 = d1158 (coe v0) in
    let v2 = d1160 (coe v0) in
    let v3 = d1162 (coe v0) in
    let v4 = d1164 (coe v0) in
    let v5 = d1166 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du898
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du516
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.du708 (coe v6))))
name1218 = "Algebra.CommutativeSemiring._.isSemiring"
d1218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> MAlonzo.Code.Algebra.Structures.T638
d1218 v0 v1 v2 = du1218 v2
du1218 :: T1134 -> MAlonzo.Code.Algebra.Structures.T638
du1218 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du898
         (coe (d1158 (coe v0))) (coe (d1160 (coe v0)))
         (coe (d1162 (coe v0))) (coe (d1164 (coe v0)))
         (coe (d1166 (coe v0))))
name1220
  = "Algebra.CommutativeSemiring._.isSemiringWithoutAnnihilatingZero"
d1220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> MAlonzo.Code.Algebra.Structures.T560
d1220 v0 v1 v2 = du1220 v2
du1220 :: T1134 -> MAlonzo.Code.Algebra.Structures.T560
du1220 v0
  = let v1 = d1158 (coe v0) in
    let v2 = d1160 (coe v0) in
    let v3 = d1162 (coe v0) in
    let v4 = d1164 (coe v0) in
    let v5 = d1166 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d652
         (coe
            (MAlonzo.Code.Algebra.Structures.du898
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))))
name1222 = "Algebra.CommutativeSemiring._.isSemiringWithoutOne"
d1222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> MAlonzo.Code.Algebra.Structures.T476
d1222 v0 v1 v2 = du1222 v2
du1222 :: T1134 -> MAlonzo.Code.Algebra.Structures.T476
du1222 v0
  = let v1 = d1158 (coe v0) in
    let v2 = d1160 (coe v0) in
    let v3 = d1162 (coe v0) in
    let v4 = d1164 (coe v0) in
    let v5 = d1166 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du708
         (coe
            (MAlonzo.Code.Algebra.Structures.du898
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))))
name1224 = "Algebra.CommutativeSemiring._.refl"
d1224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> AgdaAny -> AgdaAny
d1224 v0 v1 v2 = du1224 v2
du1224 :: T1134 -> AgdaAny -> AgdaAny
du1224 v0
  = let v1 = d1166 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe (MAlonzo.Code.Algebra.Structures.d822 (coe v1))))))))
name1226 = "Algebra.CommutativeSemiring._.reflexive"
d1226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1226 v0 v1 v2 = du1226 v2
du1226 ::
  T1134 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1226 v0
  = let v1 = d1158 (coe v0) in
    let v2 = d1160 (coe v0) in
    let v3 = d1162 (coe v0) in
    let v4 = d1164 (coe v0) in
    let v5 = d1166 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du898
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d652 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d576 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d190 (coe v8) in
    coe
      (\ v10 v11 v12 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d84 (coe v9))) v10)
name1228 = "Algebra.CommutativeSemiring._.setoid"
d1228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> MAlonzo.Code.Relation.Binary.T128
d1228 v0 v1 v2 = du1228 v2
du1228 :: T1134 -> MAlonzo.Code.Relation.Binary.T128
du1228 v0
  = let v1 = d1158 (coe v0) in
    let v2 = d1160 (coe v0) in
    let v3 = d1162 (coe v0) in
    let v4 = d1164 (coe v0) in
    let v5 = d1166 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du898
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d652 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d576 (coe v7) in
    coe
      (MAlonzo.Code.Algebra.Structures.du90
         (coe (MAlonzo.Code.Algebra.Structures.d190 (coe v8))))
name1230 = "Algebra.CommutativeSemiring._.sym"
d1230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1230 v0 v1 v2 = du1230 v2
du1230 :: T1134 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1230 v0
  = let v1 = d1166 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe (MAlonzo.Code.Algebra.Structures.d822 (coe v1))))))))
name1232 = "Algebra.CommutativeSemiring._.trans"
d1232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1232 v0 v1 v2 = du1232 v2
du1232 ::
  T1134 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1232 v0
  = let v1 = d1166 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d190
                     (coe (MAlonzo.Code.Algebra.Structures.d822 (coe v1))))))))
name1234 = "Algebra.CommutativeSemiring._.zero"
d1234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1134 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1234 v0 v1 v2 = du1234 v2
du1234 :: T1134 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1234 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du896
         (coe (d1160 (coe v0))) (coe (d1162 (coe v0)))
         (coe (d1166 (coe v0))))
name1236 = "Algebra.CommutativeSemiring._.zeroʳ"
d1236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> AgdaAny -> AgdaAny
d1236 v0 v1 v2 = du1236 v2
du1236 :: T1134 -> AgdaAny -> AgdaAny
du1236 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du894
         (coe (d1160 (coe v0))) (coe (d1162 (coe v0)))
         (coe (d1166 (coe v0))))
name1238 = "Algebra.CommutativeSemiring._.zeroˡ"
d1238 :: T1134 -> AgdaAny -> AgdaAny
d1238 v0
  = coe (MAlonzo.Code.Algebra.Structures.d828 (coe (d1166 (coe v0))))
name1240 = "Algebra.CommutativeSemiring.semiring"
d1240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> T896
d1240 v0 v1 v2 = du1240 v2
du1240 :: T1134 -> T896
du1240 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 -> C3797 v3 v4 v5 v6 v7) erased erased
      (d1158 (coe v0)) (d1160 (coe v0)) (d1162 (coe v0)) (d1164 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du898
         (coe (d1158 (coe v0))) (coe (d1160 (coe v0)))
         (coe (d1162 (coe v0))) (coe (d1164 (coe v0)))
         (coe (d1166 (coe v0))))
name1244 = "Algebra.CommutativeSemiring._.*-monoid"
d1244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> T154
d1244 v0 v1 v2 = du1244 v2
du1244 :: T1134 -> T154
du1244 v0
  = let v1 = du1240 (coe v0) in coe (du884 (coe (du996 (coe v1))))
name1246 = "Algebra.CommutativeSemiring._.rawMonoid"
d1246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> T128
d1246 v0 v1 v2 = du1246 v2
du1246 :: T1134 -> T128
du1246 v0
  = let v1 = du1240 (coe v0) in
    let v2 = du996 (coe v1) in coe (du208 (coe (du884 (coe v2))))
name1248 = "Algebra.CommutativeSemiring._.semigroup"
d1248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> T28
d1248 v0 v1 v2 = du1248 v2
du1248 :: T1134 -> T28
du1248 v0
  = let v1 = du1240 (coe v0) in
    let v2 = du996 (coe v1) in coe (du206 (coe (du884 (coe v2))))
name1250 = "Algebra.CommutativeSemiring._.+-commutativeMonoid"
d1250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> T214
d1250 v0 v1 v2 = du1250 v2
du1250 :: T1134 -> T214
du1250 v0
  = let v1 = du1240 (coe v0) in coe (du874 (coe (du996 (coe v1))))
name1252 = "Algebra.CommutativeSemiring._.monoid"
d1252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> T154
d1252 v0 v1 v2 = du1252 v2
du1252 :: T1134 -> T154
du1252 v0
  = let v1 = du1240 (coe v0) in
    let v2 = du996 (coe v1) in coe (du270 (coe (du874 (coe v2))))
name1254 = "Algebra.CommutativeSemiring._.rawMonoid"
d1254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> T128
d1254 v0 v1 v2 = du1254 v2
du1254 :: T1134 -> T128
du1254 v0
  = let v1 = du1240 (coe v0) in
    let v2 = du996 (coe v1) in
    let v3 = du874 (coe v2) in coe (du208 (coe (du270 (coe v3))))
name1256 = "Algebra.CommutativeSemiring._.semigroup"
d1256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> T28
d1256 v0 v1 v2 = du1256 v2
du1256 :: T1134 -> T28
du1256 v0
  = let v1 = du1240 (coe v0) in
    let v2 = du996 (coe v1) in
    let v3 = du874 (coe v2) in coe (du206 (coe (du270 (coe v3))))
name1258 = "Algebra.CommutativeSemiring._.nearSemiring"
d1258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> T602
d1258 v0 v1 v2 = du1258 v2
du1258 :: T1134 -> T602
du1258 v0
  = let v1 = du1240 (coe v0) in coe (du770 (coe (du1014 (coe v1))))
name1260 = "Algebra.CommutativeSemiring._.rawSemiring"
d1260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> T568
d1260 v0 v1 v2 = du1260 v2
du1260 :: T1134 -> T568
du1260 v0 = coe (du994 (coe (du1240 (coe v0))))
name1262
  = "Algebra.CommutativeSemiring._.semiringWithoutAnnihilatingZero"
d1262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> T788
d1262 v0 v1 v2 = du1262 v2
du1262 :: T1134 -> T788
du1262 v0 = coe (du996 (coe (du1240 (coe v0))))
name1264 = "Algebra.CommutativeSemiring._.semiringWithoutOne"
d1264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> T684
d1264 v0 v1 v2 = du1264 v2
du1264 :: T1134 -> T684
du1264 v0 = coe (du1014 (coe (du1240 (coe v0))))
name1266 = "Algebra.CommutativeSemiring.*-commutativeMonoid"
d1266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> T214
d1266 v0 v1 v2 = du1266 v2
du1266 :: T1134 -> T214
du1266 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C889 v3 v4 v5) erased erased (d1160 (coe v0))
      (d1164 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d824 (coe (d1166 (coe v0))))
name1268
  = "Algebra.CommutativeSemiring.commutativeSemiringWithoutOne"
d1268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1134 -> T1024
d1268 v0 v1 v2 = du1268 v2
du1268 :: T1134 -> T1024
du1268 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C4367 v3 v4 v5 v6) erased erased
      (d1158 (coe v0)) (d1160 (coe v0)) (d1162 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du950
         (coe (d1158 (coe v0))) (coe (d1160 (coe v0)))
         (coe (d1162 (coe v0))) (coe (d1164 (coe v0)))
         (coe (d1166 (coe v0))))
name1272 = "Algebra.RawRing"
d1272 a0 = ()
data T1272
  = C5321 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
          AgdaAny
name1288 = "Algebra.RawRing.Carrier"
d1288 :: T1272 -> ()
d1288 = erased
name1290 = "Algebra.RawRing._+_"
d1290 :: T1272 -> AgdaAny -> AgdaAny -> AgdaAny
d1290 v0
  = case coe v0 of
      C5321 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1292 = "Algebra.RawRing._*_"
d1292 :: T1272 -> AgdaAny -> AgdaAny -> AgdaAny
d1292 v0
  = case coe v0 of
      C5321 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1294 = "Algebra.RawRing.-_"
d1294 :: T1272 -> AgdaAny -> AgdaAny
d1294 v0
  = case coe v0 of
      C5321 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1296 = "Algebra.RawRing.0#"
d1296 :: T1272 -> AgdaAny
d1296 v0
  = case coe v0 of
      C5321 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1298 = "Algebra.RawRing.1#"
d1298 :: T1272 -> AgdaAny
d1298 v0
  = case coe v0 of
      C5321 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1304 = "Algebra.Ring"
d1304 a0 a1 = ()
data T1304
  = C5417 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
          AgdaAny MAlonzo.Code.Algebra.Structures.T962
name1326 = "Algebra.Ring.Carrier"
d1326 :: T1304 -> ()
d1326 = erased
name1328 = "Algebra.Ring._≈_"
d1328 :: T1304 -> AgdaAny -> AgdaAny -> ()
d1328 = erased
name1330 = "Algebra.Ring._+_"
d1330 :: T1304 -> AgdaAny -> AgdaAny -> AgdaAny
d1330 v0
  = case coe v0 of
      C5417 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1332 = "Algebra.Ring._*_"
d1332 :: T1304 -> AgdaAny -> AgdaAny -> AgdaAny
d1332 v0
  = case coe v0 of
      C5417 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1334 = "Algebra.Ring.-_"
d1334 :: T1304 -> AgdaAny -> AgdaAny
d1334 v0
  = case coe v0 of
      C5417 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1336 = "Algebra.Ring.0#"
d1336 :: T1304 -> AgdaAny
d1336 v0
  = case coe v0 of
      C5417 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1338 = "Algebra.Ring.1#"
d1338 :: T1304 -> AgdaAny
d1338 v0
  = case coe v0 of
      C5417 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1340 = "Algebra.Ring.isRing"
d1340 :: T1304 -> MAlonzo.Code.Algebra.Structures.T962
d1340 v0
  = case coe v0 of
      C5417 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name1344 = "Algebra.Ring._._-_"
d1344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1304 -> AgdaAny -> AgdaAny -> AgdaAny
d1344 v0 v1 v2 = du1344 v2
du1344 :: T1304 -> AgdaAny -> AgdaAny -> AgdaAny
du1344 v0
  = let v1 = d1330 (coe v0) in
    let v2 = d1334 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name1346 = "Algebra.Ring._.assoc"
d1346 :: T1304 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1346 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d982 (coe (d1340 (coe v0))))))))
name1348 = "Algebra.Ring._.∙-cong"
d1348 ::
  T1304 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1348 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d982 (coe (d1340 (coe v0))))))))
name1350 = "Algebra.Ring._.identity"
d1350 :: T1304 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1350 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d150
         (coe
            (MAlonzo.Code.Algebra.Structures.d982 (coe (d1340 (coe v0))))))
name1352 = "Algebra.Ring._.identityʳ"
d1352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> AgdaAny -> AgdaAny
d1352 v0 v1 v2 = du1352 v2
du1352 :: T1304 -> AgdaAny -> AgdaAny
du1352 v0
  = let v1 = d1340 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d982 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v2))))
name1354 = "Algebra.Ring._.identityˡ"
d1354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> AgdaAny -> AgdaAny
d1354 v0 v1 v2 = du1354 v2
du1354 :: T1304 -> AgdaAny -> AgdaAny
du1354 v0
  = let v1 = d1340 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d982 (coe v1) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v2))))
name1356 = "Algebra.Ring._.*-isMonoid"
d1356 :: T1304 -> MAlonzo.Code.Algebra.Structures.T138
d1356 v0
  = coe (MAlonzo.Code.Algebra.Structures.d982 (coe (d1340 (coe v0))))
name1358 = "Algebra.Ring._.isSemigroup"
d1358 :: T1304 -> MAlonzo.Code.Algebra.Structures.T74
d1358 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d148
         (coe
            (MAlonzo.Code.Algebra.Structures.d982 (coe (d1340 (coe v0))))))
name1360 = "Algebra.Ring._.assoc"
d1360 :: T1304 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1360 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d288
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d360
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d980
                                 (coe (d1340 (coe v0))))))))))))
name1362 = "Algebra.Ring._.comm"
d1362 :: T1304 -> AgdaAny -> AgdaAny -> AgdaAny
d1362 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d362
         (coe
            (MAlonzo.Code.Algebra.Structures.d980 (coe (d1340 (coe v0))))))
name1364 = "Algebra.Ring._.∙-cong"
d1364 ::
  T1304 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1364 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d288
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d360
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d980
                                 (coe (d1340 (coe v0))))))))))))
name1366 = "Algebra.Ring._.identity"
d1366 :: T1304 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1366 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d150
         (coe
            (MAlonzo.Code.Algebra.Structures.d288
               (coe
                  (MAlonzo.Code.Algebra.Structures.d360
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d980 (coe (d1340 (coe v0))))))))))
name1368 = "Algebra.Ring._.identityʳ"
d1368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> AgdaAny -> AgdaAny
d1368 v0 v1 v2 = du1368 v2
du1368 :: T1304 -> AgdaAny -> AgdaAny
du1368 v0
  = let v1 = d1340 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d980 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d360 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d288 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v4))))
name1370 = "Algebra.Ring._.identityˡ"
d1370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> AgdaAny -> AgdaAny
d1370 v0 v1 v2 = du1370 v2
du1370 :: T1304 -> AgdaAny -> AgdaAny
du1370 v0
  = let v1 = d1340 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d980 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d360 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d288 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v4))))
name1372 = "Algebra.Ring._.+-isAbelianGroup"
d1372 :: T1304 -> MAlonzo.Code.Algebra.Structures.T348
d1372 v0
  = coe (MAlonzo.Code.Algebra.Structures.d980 (coe (d1340 (coe v0))))
name1374 = "Algebra.Ring._.isCommutativeMonoid"
d1374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1304 -> MAlonzo.Code.Algebra.Structures.T178
d1374 v0 v1 v2 = du1374 v2
du1374 :: T1304 -> MAlonzo.Code.Algebra.Structures.T178
du1374 v0
  = let v1 = d1340 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du406
         (coe (MAlonzo.Code.Algebra.Structures.d980 (coe v1))))
name1376 = "Algebra.Ring._.isGroup"
d1376 :: T1304 -> MAlonzo.Code.Algebra.Structures.T274
d1376 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d360
         (coe
            (MAlonzo.Code.Algebra.Structures.d980 (coe (d1340 (coe v0))))))
name1378 = "Algebra.Ring._.isMonoid"
d1378 :: T1304 -> MAlonzo.Code.Algebra.Structures.T138
d1378 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d288
         (coe
            (MAlonzo.Code.Algebra.Structures.d360
               (coe
                  (MAlonzo.Code.Algebra.Structures.d980 (coe (d1340 (coe v0))))))))
name1380 = "Algebra.Ring._.isSemigroup"
d1380 :: T1304 -> MAlonzo.Code.Algebra.Structures.T74
d1380 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d148
         (coe
            (MAlonzo.Code.Algebra.Structures.d288
               (coe
                  (MAlonzo.Code.Algebra.Structures.d360
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d980 (coe (d1340 (coe v0))))))))))
name1382 = "Algebra.Ring._.⁻¹-cong"
d1382 :: T1304 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1382 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d292
         (coe
            (MAlonzo.Code.Algebra.Structures.d360
               (coe
                  (MAlonzo.Code.Algebra.Structures.d980 (coe (d1340 (coe v0))))))))
name1384 = "Algebra.Ring._.inverse"
d1384 :: T1304 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1384 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d290
         (coe
            (MAlonzo.Code.Algebra.Structures.d360
               (coe
                  (MAlonzo.Code.Algebra.Structures.d980 (coe (d1340 (coe v0))))))))
name1386 = "Algebra.Ring._.inverseʳ"
d1386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> AgdaAny -> AgdaAny
d1386 v0 v1 v2 = du1386 v2
du1386 :: T1304 -> AgdaAny -> AgdaAny
du1386 v0
  = let v1 = d1340 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d980 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d360 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d290 (coe v3))))
name1388 = "Algebra.Ring._.inverseˡ"
d1388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> AgdaAny -> AgdaAny
d1388 v0 v1 v2 = du1388 v2
du1388 :: T1304 -> AgdaAny -> AgdaAny
du1388 v0
  = let v1 = d1340 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d980 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d360 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d290 (coe v3))))
name1390 = "Algebra.Ring._.distrib"
d1390 :: T1304 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1390 v0
  = coe (MAlonzo.Code.Algebra.Structures.d984 (coe (d1340 (coe v0))))
name1392 = "Algebra.Ring._.distribʳ"
d1392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1304 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1392 v0 v1 v2 = du1392 v2
du1392 :: T1304 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1392 v0
  = let v1 = d1330 (coe v0) in
    let v2 = d1332 (coe v0) in
    let v3 = d1334 (coe v0) in
    let v4 = d1336 (coe v0) in
    let v5 = d1340 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1056
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d652 (coe v6) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d580 (coe v7))))
name1394 = "Algebra.Ring._.distribˡ"
d1394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1304 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1394 v0 v1 v2 = du1394 v2
du1394 :: T1304 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1394 v0
  = let v1 = d1330 (coe v0) in
    let v2 = d1332 (coe v0) in
    let v3 = d1334 (coe v0) in
    let v4 = d1336 (coe v0) in
    let v5 = d1340 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1056
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d652 (coe v6) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d580 (coe v7))))
name1396 = "Algebra.Ring._.isEquivalence"
d1396 :: T1304 -> MAlonzo.Code.Relation.Binary.Core.T578
d1396 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d84
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d288
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d360
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d980
                                 (coe (d1340 (coe v0))))))))))))
name1398 = "Algebra.Ring._.isNearSemiring"
d1398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1304 -> MAlonzo.Code.Algebra.Structures.T414
d1398 v0 v1 v2 = du1398 v2
du1398 :: T1304 -> MAlonzo.Code.Algebra.Structures.T414
du1398 v0
  = let v1 = d1330 (coe v0) in
    let v2 = d1332 (coe v0) in
    let v3 = d1334 (coe v0) in
    let v4 = d1336 (coe v0) in
    let v5 = d1340 (coe v0) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1056
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du516
         (coe v1) (coe v4)
         (coe (MAlonzo.Code.Algebra.Structures.du708 (coe v6))))
name1400 = "Algebra.Ring._.isSemiring"
d1400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1304 -> MAlonzo.Code.Algebra.Structures.T638
d1400 v0 v1 v2 = du1400 v2
du1400 :: T1304 -> MAlonzo.Code.Algebra.Structures.T638
du1400 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1056
         (coe (d1330 (coe v0))) (coe (d1332 (coe v0)))
         (coe (d1334 (coe v0))) (coe (d1336 (coe v0)))
         (coe (d1340 (coe v0))))
name1402 = "Algebra.Ring._.isSemiringWithoutAnnihilatingZero"
d1402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1304 -> MAlonzo.Code.Algebra.Structures.T560
d1402 v0 v1 v2 = du1402 v2
du1402 :: T1304 -> MAlonzo.Code.Algebra.Structures.T560
du1402 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1054 (coe (d1340 (coe v0))))
name1404 = "Algebra.Ring._.isSemiringWithoutOne"
d1404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1304 -> MAlonzo.Code.Algebra.Structures.T476
d1404 v0 v1 v2 = du1404 v2
du1404 :: T1304 -> MAlonzo.Code.Algebra.Structures.T476
du1404 v0
  = let v1 = d1330 (coe v0) in
    let v2 = d1332 (coe v0) in
    let v3 = d1334 (coe v0) in
    let v4 = d1336 (coe v0) in
    let v5 = d1340 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du708
         (coe
            (MAlonzo.Code.Algebra.Structures.du1056
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))))
name1406 = "Algebra.Ring._.refl"
d1406 :: T1304 -> AgdaAny -> AgdaAny
d1406 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d288
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d360
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d980
                                       (coe (d1340 (coe v0))))))))))))))
name1408 = "Algebra.Ring._.reflexive"
d1408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1304 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1408 v0 v1 v2 = du1408 v2
du1408 ::
  T1304 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1408 v0
  = let v1 = d1340 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d980 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d360 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d288 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d148 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d84 (coe v5))) v6)
name1410 = "Algebra.Ring._.setoid"
d1410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1304 -> MAlonzo.Code.Relation.Binary.T128
d1410 v0 v1 v2 = du1410 v2
du1410 :: T1304 -> MAlonzo.Code.Relation.Binary.T128
du1410 v0
  = let v1 = d1340 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d980 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d360 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d288 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du90
         (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v4))))
name1412 = "Algebra.Ring._.sym"
d1412 :: T1304 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1412 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d288
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d360
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d980
                                       (coe (d1340 (coe v0))))))))))))))
name1414 = "Algebra.Ring._.trans"
d1414 ::
  T1304 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1414 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d288
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d360
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d980
                                       (coe (d1340 (coe v0))))))))))))))
name1416 = "Algebra.Ring._.uniqueʳ-⁻¹"
d1416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1304 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1416 v0 v1 v2 = du1416 v2
du1416 :: T1304 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1416 v0
  = let v1 = d1330 (coe v0) in
    let v2 = d1334 (coe v0) in
    let v3 = d1336 (coe v0) in
    let v4 = d1340 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d980 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du340
         (coe v1) (coe v3) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d360 (coe v5))))
name1418 = "Algebra.Ring._.uniqueˡ-⁻¹"
d1418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1304 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1418 v0 v1 v2 = du1418 v2
du1418 :: T1304 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1418 v0
  = let v1 = d1330 (coe v0) in
    let v2 = d1334 (coe v0) in
    let v3 = d1336 (coe v0) in
    let v4 = d1340 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d980 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du334
         (coe v1) (coe v3) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d360 (coe v5))))
name1420 = "Algebra.Ring._.zero"
d1420 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1304 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1420 v0 v1 v2 = du1420 v2
du1420 :: T1304 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1420 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1052
         (coe (d1330 (coe v0))) (coe (d1332 (coe v0)))
         (coe (d1334 (coe v0))) (coe (d1336 (coe v0)))
         (coe (d1340 (coe v0))))
name1422 = "Algebra.Ring._.zeroʳ"
d1422 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> AgdaAny -> AgdaAny
d1422 v0 v1 v2 = du1422 v2
du1422 :: T1304 -> AgdaAny -> AgdaAny
du1422 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1050
         (coe (d1330 (coe v0))) (coe (d1332 (coe v0)))
         (coe (d1334 (coe v0))) (coe (d1336 (coe v0)))
         (coe (d1340 (coe v0))))
name1424 = "Algebra.Ring._.zeroˡ"
d1424 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> AgdaAny -> AgdaAny
d1424 v0 v1 v2 = du1424 v2
du1424 :: T1304 -> AgdaAny -> AgdaAny
du1424 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1048
         (coe (d1330 (coe v0))) (coe (d1332 (coe v0)))
         (coe (d1334 (coe v0))) (coe (d1336 (coe v0)))
         (coe (d1340 (coe v0))))
name1426 = "Algebra.Ring.+-abelianGroup"
d1426 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> T472
d1426 v0 v1 v2 = du1426 v2
du1426 :: T1304 -> T472
du1426 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C1979 v3 v4 v5 v6) erased erased
      (d1330 (coe v0)) (d1336 (coe v0)) (d1334 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d980 (coe (d1340 (coe v0))))
name1428 = "Algebra.Ring.semiring"
d1428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> T896
d1428 v0 v1 v2 = du1428 v2
du1428 :: T1304 -> T896
du1428 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 -> C3797 v3 v4 v5 v6 v7) erased erased
      (d1330 (coe v0)) (d1332 (coe v0)) (d1336 (coe v0)) (d1338 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du1056
         (coe (d1330 (coe v0))) (coe (d1332 (coe v0)))
         (coe (d1334 (coe v0))) (coe (d1336 (coe v0)))
         (coe (d1340 (coe v0))))
name1432 = "Algebra.Ring._.*-monoid"
d1432 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> T154
d1432 v0 v1 v2 = du1432 v2
du1432 :: T1304 -> T154
du1432 v0
  = let v1 = du1428 (coe v0) in coe (du884 (coe (du996 (coe v1))))
name1434 = "Algebra.Ring._.rawMonoid"
d1434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> T128
d1434 v0 v1 v2 = du1434 v2
du1434 :: T1304 -> T128
du1434 v0
  = let v1 = du1428 (coe v0) in
    let v2 = du996 (coe v1) in coe (du208 (coe (du884 (coe v2))))
name1436 = "Algebra.Ring._.semigroup"
d1436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> T28
d1436 v0 v1 v2 = du1436 v2
du1436 :: T1304 -> T28
du1436 v0
  = let v1 = du1428 (coe v0) in
    let v2 = du996 (coe v1) in coe (du206 (coe (du884 (coe v2))))
name1438 = "Algebra.Ring._.+-commutativeMonoid"
d1438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> T214
d1438 v0 v1 v2 = du1438 v2
du1438 :: T1304 -> T214
du1438 v0
  = let v1 = du1428 (coe v0) in coe (du874 (coe (du996 (coe v1))))
name1440 = "Algebra.Ring._.monoid"
d1440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> T154
d1440 v0 v1 v2 = du1440 v2
du1440 :: T1304 -> T154
du1440 v0
  = let v1 = du1428 (coe v0) in
    let v2 = du996 (coe v1) in coe (du270 (coe (du874 (coe v2))))
name1442 = "Algebra.Ring._.rawMonoid"
d1442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> T128
d1442 v0 v1 v2 = du1442 v2
du1442 :: T1304 -> T128
du1442 v0
  = let v1 = du1428 (coe v0) in
    let v2 = du996 (coe v1) in
    let v3 = du874 (coe v2) in coe (du208 (coe (du270 (coe v3))))
name1444 = "Algebra.Ring._.semigroup"
d1444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> T28
d1444 v0 v1 v2 = du1444 v2
du1444 :: T1304 -> T28
du1444 v0
  = let v1 = du1428 (coe v0) in
    let v2 = du996 (coe v1) in
    let v3 = du874 (coe v2) in coe (du206 (coe (du270 (coe v3))))
name1446 = "Algebra.Ring._.nearSemiring"
d1446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> T602
d1446 v0 v1 v2 = du1446 v2
du1446 :: T1304 -> T602
du1446 v0
  = let v1 = du1428 (coe v0) in coe (du770 (coe (du1014 (coe v1))))
name1448 = "Algebra.Ring._.semiringWithoutAnnihilatingZero"
d1448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> T788
d1448 v0 v1 v2 = du1448 v2
du1448 :: T1304 -> T788
du1448 v0 = coe (du996 (coe (du1428 (coe v0))))
name1450 = "Algebra.Ring._.semiringWithoutOne"
d1450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> T684
d1450 v0 v1 v2 = du1450 v2
du1450 :: T1304 -> T684
du1450 v0 = coe (du1014 (coe (du1428 (coe v0))))
name1454 = "Algebra.Ring._.group"
d1454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> T386
d1454 v0 v1 v2 = du1454 v2
du1454 :: T1304 -> T386
du1454 v0 = coe (du550 (coe (du1426 (coe v0))))
name1456 = "Algebra.Ring.rawRing"
d1456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1304 -> T1272
d1456 v0 v1 v2 = du1456 v2
du1456 :: T1304 -> T1272
du1456 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C5321 v2 v3 v4 v5 v6) erased
      (d1330 (coe v0)) (d1332 (coe v0)) (d1334 (coe v0)) (d1336 (coe v0))
      (d1338 (coe v0))
name1462 = "Algebra.CommutativeRing"
d1462 a0 a1 = ()
data T1462
  = C6117 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
          AgdaAny MAlonzo.Code.Algebra.Structures.T1078
name1484 = "Algebra.CommutativeRing.Carrier"
d1484 :: T1462 -> ()
d1484 = erased
name1486 = "Algebra.CommutativeRing._≈_"
d1486 :: T1462 -> AgdaAny -> AgdaAny -> ()
d1486 = erased
name1488 = "Algebra.CommutativeRing._+_"
d1488 :: T1462 -> AgdaAny -> AgdaAny -> AgdaAny
d1488 v0
  = case coe v0 of
      C6117 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1490 = "Algebra.CommutativeRing._*_"
d1490 :: T1462 -> AgdaAny -> AgdaAny -> AgdaAny
d1490 v0
  = case coe v0 of
      C6117 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1492 = "Algebra.CommutativeRing.-_"
d1492 :: T1462 -> AgdaAny -> AgdaAny
d1492 v0
  = case coe v0 of
      C6117 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1494 = "Algebra.CommutativeRing.0#"
d1494 :: T1462 -> AgdaAny
d1494 v0
  = case coe v0 of
      C6117 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1496 = "Algebra.CommutativeRing.1#"
d1496 :: T1462 -> AgdaAny
d1496 v0
  = case coe v0 of
      C6117 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1498 = "Algebra.CommutativeRing.isCommutativeRing"
d1498 :: T1462 -> MAlonzo.Code.Algebra.Structures.T1078
d1498 v0
  = case coe v0 of
      C6117 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name1502 = "Algebra.CommutativeRing._._-_"
d1502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1462 -> AgdaAny -> AgdaAny -> AgdaAny
d1502 v0 v1 v2 = du1502 v2
du1502 :: T1462 -> AgdaAny -> AgdaAny -> AgdaAny
du1502 v0
  = let v1 = d1488 (coe v0) in
    let v2 = d1492 (coe v0) in coe (\ v3 v4 -> coe v1 v3 (coe v2 v4))
name1504 = "Algebra.CommutativeRing._.assoc"
d1504 :: T1462 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1504 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d982
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1094
                           (coe (d1498 (coe v0))))))))))
name1506 = "Algebra.CommutativeRing._.*-comm"
d1506 :: T1462 -> AgdaAny -> AgdaAny -> AgdaAny
d1506 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1096 (coe (d1498 (coe v0))))
name1508 = "Algebra.CommutativeRing._.∙-cong"
d1508 ::
  T1462 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1508 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d982
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1094
                           (coe (d1498 (coe v0))))))))))
name1510 = "Algebra.CommutativeRing._.identity"
d1510 :: T1462 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1510 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d150
         (coe
            (MAlonzo.Code.Algebra.Structures.d982
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1094 (coe (d1498 (coe v0))))))))
name1512 = "Algebra.CommutativeRing._.identityʳ"
d1512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> AgdaAny -> AgdaAny
d1512 v0 v1 v2 = du1512 v2
du1512 :: T1462 -> AgdaAny -> AgdaAny
du1512 v0
  = let v1 = d1498 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1094 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d982 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v3))))
name1514 = "Algebra.CommutativeRing._.identityˡ"
d1514 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> AgdaAny -> AgdaAny
d1514 v0 v1 v2 = du1514 v2
du1514 :: T1462 -> AgdaAny -> AgdaAny
du1514 v0
  = let v1 = d1498 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1094 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d982 (coe v2) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v3))))
name1516 = "Algebra.CommutativeRing._.*-isCommutativeMonoid"
d1516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1462 -> MAlonzo.Code.Algebra.Structures.T178
d1516 v0 v1 v2 = du1516 v2
du1516 :: T1462 -> MAlonzo.Code.Algebra.Structures.T178
du1516 v0
  = let v1 = d1488 (coe v0) in
    let v2 = d1490 (coe v0) in
    let v3 = d1492 (coe v0) in
    let v4 = d1494 (coe v0) in
    let v5 = d1498 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d824
         (coe
            (MAlonzo.Code.Algebra.Structures.du1182
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))))
name1518 = "Algebra.CommutativeRing._.*-isMonoid"
d1518 :: T1462 -> MAlonzo.Code.Algebra.Structures.T138
d1518 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d982
         (coe
            (MAlonzo.Code.Algebra.Structures.d1094 (coe (d1498 (coe v0))))))
name1520 = "Algebra.CommutativeRing._.isSemigroup"
d1520 :: T1462 -> MAlonzo.Code.Algebra.Structures.T74
d1520 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d148
         (coe
            (MAlonzo.Code.Algebra.Structures.d982
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1094 (coe (d1498 (coe v0))))))))
name1522 = "Algebra.CommutativeRing._.assoc"
d1522 :: T1462 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1522 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d288
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d360
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d980
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1094
                                       (coe (d1498 (coe v0))))))))))))))
name1524 = "Algebra.CommutativeRing._.comm"
d1524 :: T1462 -> AgdaAny -> AgdaAny -> AgdaAny
d1524 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d362
         (coe
            (MAlonzo.Code.Algebra.Structures.d980
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1094 (coe (d1498 (coe v0))))))))
name1526 = "Algebra.CommutativeRing._.∙-cong"
d1526 ::
  T1462 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1526 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d288
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d360
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d980
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1094
                                       (coe (d1498 (coe v0))))))))))))))
name1528 = "Algebra.CommutativeRing._.identity"
d1528 :: T1462 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1528 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d150
         (coe
            (MAlonzo.Code.Algebra.Structures.d288
               (coe
                  (MAlonzo.Code.Algebra.Structures.d360
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d980
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1094
                                 (coe (d1498 (coe v0))))))))))))
name1530 = "Algebra.CommutativeRing._.identityʳ"
d1530 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> AgdaAny -> AgdaAny
d1530 v0 v1 v2 = du1530 v2
du1530 :: T1462 -> AgdaAny -> AgdaAny
du1530 v0
  = let v1 = d1498 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1094 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d980 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d360 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v5))))
name1532 = "Algebra.CommutativeRing._.identityˡ"
d1532 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> AgdaAny -> AgdaAny
d1532 v0 v1 v2 = du1532 v2
du1532 :: T1462 -> AgdaAny -> AgdaAny
du1532 v0
  = let v1 = d1498 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1094 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d980 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d360 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d150 (coe v5))))
name1534 = "Algebra.CommutativeRing._.+-isAbelianGroup"
d1534 :: T1462 -> MAlonzo.Code.Algebra.Structures.T348
d1534 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d980
         (coe
            (MAlonzo.Code.Algebra.Structures.d1094 (coe (d1498 (coe v0))))))
name1536 = "Algebra.CommutativeRing._.isCommutativeMonoid"
d1536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1462 -> MAlonzo.Code.Algebra.Structures.T178
d1536 v0 v1 v2 = du1536 v2
du1536 :: T1462 -> MAlonzo.Code.Algebra.Structures.T178
du1536 v0
  = let v1 = d1498 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1094 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du406
         (coe (MAlonzo.Code.Algebra.Structures.d980 (coe v2))))
name1538 = "Algebra.CommutativeRing._.isGroup"
d1538 :: T1462 -> MAlonzo.Code.Algebra.Structures.T274
d1538 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d360
         (coe
            (MAlonzo.Code.Algebra.Structures.d980
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1094 (coe (d1498 (coe v0))))))))
name1540 = "Algebra.CommutativeRing._.isMonoid"
d1540 :: T1462 -> MAlonzo.Code.Algebra.Structures.T138
d1540 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d288
         (coe
            (MAlonzo.Code.Algebra.Structures.d360
               (coe
                  (MAlonzo.Code.Algebra.Structures.d980
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1094
                           (coe (d1498 (coe v0))))))))))
name1542 = "Algebra.CommutativeRing._.isSemigroup"
d1542 :: T1462 -> MAlonzo.Code.Algebra.Structures.T74
d1542 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d148
         (coe
            (MAlonzo.Code.Algebra.Structures.d288
               (coe
                  (MAlonzo.Code.Algebra.Structures.d360
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d980
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1094
                                 (coe (d1498 (coe v0))))))))))))
name1544 = "Algebra.CommutativeRing._.⁻¹-cong"
d1544 :: T1462 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1544 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d292
         (coe
            (MAlonzo.Code.Algebra.Structures.d360
               (coe
                  (MAlonzo.Code.Algebra.Structures.d980
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1094
                           (coe (d1498 (coe v0))))))))))
name1546 = "Algebra.CommutativeRing._.inverse"
d1546 :: T1462 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1546 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d290
         (coe
            (MAlonzo.Code.Algebra.Structures.d360
               (coe
                  (MAlonzo.Code.Algebra.Structures.d980
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1094
                           (coe (d1498 (coe v0))))))))))
name1548 = "Algebra.CommutativeRing._.inverseʳ"
d1548 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> AgdaAny -> AgdaAny
d1548 v0 v1 v2 = du1548 v2
du1548 :: T1462 -> AgdaAny -> AgdaAny
du1548 v0
  = let v1 = d1498 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1094 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d980 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d360 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d290 (coe v4))))
name1550 = "Algebra.CommutativeRing._.inverseˡ"
d1550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> AgdaAny -> AgdaAny
d1550 v0 v1 v2 = du1550 v2
du1550 :: T1462 -> AgdaAny -> AgdaAny
du1550 v0
  = let v1 = d1498 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1094 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d980 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d360 (coe v3) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d290 (coe v4))))
name1552 = "Algebra.CommutativeRing._.distrib"
d1552 :: T1462 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1552 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d984
         (coe
            (MAlonzo.Code.Algebra.Structures.d1094 (coe (d1498 (coe v0))))))
name1554 = "Algebra.CommutativeRing._.distribʳ"
d1554 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1462 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1554 v0 v1 v2 = du1554 v2
du1554 :: T1462 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1554 v0
  = let v1 = d1488 (coe v0) in
    let v2 = d1490 (coe v0) in
    let v3 = d1492 (coe v0) in
    let v4 = d1494 (coe v0) in
    let v5 = d1498 (coe v0) in
    let v6 = MAlonzo.Code.Algebra.Structures.d1094 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1056
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d652 (coe v7) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d580 (coe v8))))
name1556 = "Algebra.CommutativeRing._.distribˡ"
d1556 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1462 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1556 v0 v1 v2 = du1556 v2
du1556 :: T1462 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1556 v0
  = let v1 = d1488 (coe v0) in
    let v2 = d1490 (coe v0) in
    let v3 = d1492 (coe v0) in
    let v4 = d1494 (coe v0) in
    let v5 = d1498 (coe v0) in
    let v6 = MAlonzo.Code.Algebra.Structures.d1094 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1056
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d652 (coe v7) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d580 (coe v8))))
name1558 = "Algebra.CommutativeRing._.isCommutativeSemiring"
d1558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1462 -> MAlonzo.Code.Algebra.Structures.T804
d1558 v0 v1 v2 = du1558 v2
du1558 :: T1462 -> MAlonzo.Code.Algebra.Structures.T804
du1558 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.du1182
         (coe (d1488 (coe v0))) (coe (d1490 (coe v0)))
         (coe (d1492 (coe v0))) (coe (d1494 (coe v0)))
         (coe (d1498 (coe v0))))
name1560
  = "Algebra.CommutativeRing._.isCommutativeSemiringWithoutOne"
d1560 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1462 -> MAlonzo.Code.Algebra.Structures.T724
d1560 v0 v1 v2 = du1560 v2
du1560 :: T1462 -> MAlonzo.Code.Algebra.Structures.T724
du1560 v0
  = let v1 = d1488 (coe v0) in
    let v2 = d1490 (coe v0) in
    let v3 = d1492 (coe v0) in
    let v4 = d1494 (coe v0) in
    let v5 = d1496 (coe v0) in
    let v6 = d1498 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du950
         (coe v1) (coe v2) (coe v4) (coe v5)
         (coe
            (MAlonzo.Code.Algebra.Structures.du1182
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v6))))
name1562 = "Algebra.CommutativeRing._.isEquivalence"
d1562 :: T1462 -> MAlonzo.Code.Relation.Binary.Core.T578
d1562 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d84
         (coe
            (MAlonzo.Code.Algebra.Structures.d148
               (coe
                  (MAlonzo.Code.Algebra.Structures.d288
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d360
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d980
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1094
                                       (coe (d1498 (coe v0))))))))))))))
name1564 = "Algebra.CommutativeRing._.isNearSemiring"
d1564 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1462 -> MAlonzo.Code.Algebra.Structures.T414
d1564 v0 v1 v2 = du1564 v2
du1564 :: T1462 -> MAlonzo.Code.Algebra.Structures.T414
du1564 v0
  = let v1 = d1488 (coe v0) in
    let v2 = d1490 (coe v0) in
    let v3 = d1492 (coe v0) in
    let v4 = d1494 (coe v0) in
    let v5 = d1498 (coe v0) in
    let v6 = MAlonzo.Code.Algebra.Structures.d1094 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1056
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du516
         (coe v1) (coe v4)
         (coe (MAlonzo.Code.Algebra.Structures.du708 (coe v7))))
name1566 = "Algebra.CommutativeRing._.isRing"
d1566 :: T1462 -> MAlonzo.Code.Algebra.Structures.T962
d1566 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1094 (coe (d1498 (coe v0))))
name1568 = "Algebra.CommutativeRing._.isSemiring"
d1568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1462 -> MAlonzo.Code.Algebra.Structures.T638
d1568 v0 v1 v2 = du1568 v2
du1568 :: T1462 -> MAlonzo.Code.Algebra.Structures.T638
du1568 v0
  = let v1 = d1488 (coe v0) in
    let v2 = d1490 (coe v0) in
    let v3 = d1492 (coe v0) in
    let v4 = d1494 (coe v0) in
    let v5 = d1498 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1056
         (coe v1) (coe v2) (coe v3) (coe v4)
         (coe (MAlonzo.Code.Algebra.Structures.d1094 (coe v5))))
name1570
  = "Algebra.CommutativeRing._.isSemiringWithoutAnnihilatingZero"
d1570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1462 -> MAlonzo.Code.Algebra.Structures.T560
d1570 v0 v1 v2 = du1570 v2
du1570 :: T1462 -> MAlonzo.Code.Algebra.Structures.T560
du1570 v0
  = let v1 = d1498 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1054
         (coe (MAlonzo.Code.Algebra.Structures.d1094 (coe v1))))
name1572 = "Algebra.CommutativeRing._.isSemiringWithoutOne"
d1572 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1462 -> MAlonzo.Code.Algebra.Structures.T476
d1572 v0 v1 v2 = du1572 v2
du1572 :: T1462 -> MAlonzo.Code.Algebra.Structures.T476
du1572 v0
  = let v1 = d1488 (coe v0) in
    let v2 = d1490 (coe v0) in
    let v3 = d1492 (coe v0) in
    let v4 = d1494 (coe v0) in
    let v5 = d1498 (coe v0) in
    let v6 = MAlonzo.Code.Algebra.Structures.d1094 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du708
         (coe
            (MAlonzo.Code.Algebra.Structures.du1056
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v6))))
name1574 = "Algebra.CommutativeRing._.refl"
d1574 :: T1462 -> AgdaAny -> AgdaAny
d1574 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d288
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d360
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d980
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1094
                                             (coe (d1498 (coe v0))))))))))))))))
name1576 = "Algebra.CommutativeRing._.reflexive"
d1576 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1462 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1576 v0 v1 v2 = du1576 v2
du1576 ::
  T1462 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1576 v0
  = let v1 = d1498 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1094 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d980 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d360 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d148 (coe v5) in
    coe
      (\ v7 v8 v9 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d84 (coe v6))) v7)
name1578 = "Algebra.CommutativeRing._.setoid"
d1578 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1462 -> MAlonzo.Code.Relation.Binary.T128
d1578 v0 v1 v2 = du1578 v2
du1578 :: T1462 -> MAlonzo.Code.Relation.Binary.T128
du1578 v0
  = let v1 = d1498 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1094 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d980 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d360 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du90
         (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v5))))
name1580 = "Algebra.CommutativeRing._.sym"
d1580 :: T1462 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1580 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d288
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d360
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d980
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1094
                                             (coe (d1498 (coe v0))))))))))))))))
name1582 = "Algebra.CommutativeRing._.trans"
d1582 ::
  T1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1582 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d148
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d288
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d360
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d980
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1094
                                             (coe (d1498 (coe v0))))))))))))))))
name1584 = "Algebra.CommutativeRing._.uniqueʳ-⁻¹"
d1584 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1462 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1584 v0 v1 v2 = du1584 v2
du1584 :: T1462 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1584 v0
  = let v1 = d1488 (coe v0) in
    let v2 = d1492 (coe v0) in
    let v3 = d1494 (coe v0) in
    let v4 = d1498 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d980 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du340
         (coe v1) (coe v3) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d360 (coe v6))))
name1586 = "Algebra.CommutativeRing._.uniqueˡ-⁻¹"
d1586 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1462 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1586 v0 v1 v2 = du1586 v2
du1586 :: T1462 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1586 v0
  = let v1 = d1488 (coe v0) in
    let v2 = d1492 (coe v0) in
    let v3 = d1494 (coe v0) in
    let v4 = d1498 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d980 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du334
         (coe v1) (coe v3) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d360 (coe v6))))
name1588 = "Algebra.CommutativeRing._.zero"
d1588 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1462 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1588 v0 v1 v2 = du1588 v2
du1588 :: T1462 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1588 v0
  = let v1 = d1488 (coe v0) in
    let v2 = d1490 (coe v0) in
    let v3 = d1492 (coe v0) in
    let v4 = d1494 (coe v0) in
    let v5 = d1498 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1052
         (coe v1) (coe v2) (coe v3) (coe v4)
         (coe (MAlonzo.Code.Algebra.Structures.d1094 (coe v5))))
name1590 = "Algebra.CommutativeRing._.zeroʳ"
d1590 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> AgdaAny -> AgdaAny
d1590 v0 v1 v2 = du1590 v2
du1590 :: T1462 -> AgdaAny -> AgdaAny
du1590 v0
  = let v1 = d1488 (coe v0) in
    let v2 = d1490 (coe v0) in
    let v3 = d1492 (coe v0) in
    let v4 = d1494 (coe v0) in
    let v5 = d1498 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1050
         (coe v1) (coe v2) (coe v3) (coe v4)
         (coe (MAlonzo.Code.Algebra.Structures.d1094 (coe v5))))
name1592 = "Algebra.CommutativeRing._.zeroˡ"
d1592 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> AgdaAny -> AgdaAny
d1592 v0 v1 v2 = du1592 v2
du1592 :: T1462 -> AgdaAny -> AgdaAny
du1592 v0
  = let v1 = d1488 (coe v0) in
    let v2 = d1490 (coe v0) in
    let v3 = d1492 (coe v0) in
    let v4 = d1494 (coe v0) in
    let v5 = d1498 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1048
         (coe v1) (coe v2) (coe v3) (coe v4)
         (coe (MAlonzo.Code.Algebra.Structures.d1094 (coe v5))))
name1594 = "Algebra.CommutativeRing.ring"
d1594 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T1304
d1594 v0 v1 v2 = du1594 v2
du1594 :: T1462 -> T1304
du1594 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 v8 -> C5417 v3 v4 v5 v6 v7 v8) erased
      erased (d1488 (coe v0)) (d1490 (coe v0)) (d1492 (coe v0))
      (d1494 (coe v0)) (d1496 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1094 (coe (d1498 (coe v0))))
name1596 = "Algebra.CommutativeRing.commutativeSemiring"
d1596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T1134
d1596 v0 v1 v2 = du1596 v2
du1596 :: T1462 -> T1134
du1596 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 -> C4777 v3 v4 v5 v6 v7) erased erased
      (d1488 (coe v0)) (d1490 (coe v0)) (d1494 (coe v0)) (d1496 (coe v0))
      (MAlonzo.Code.Algebra.Structures.du1182
         (coe (d1488 (coe v0))) (coe (d1490 (coe v0)))
         (coe (d1492 (coe v0))) (coe (d1494 (coe v0)))
         (coe (d1498 (coe v0))))
name1600 = "Algebra.CommutativeRing._.+-abelianGroup"
d1600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T472
d1600 v0 v1 v2 = du1600 v2
du1600 :: T1462 -> T472
du1600 v0 = coe (du1426 (coe (du1594 (coe v0))))
name1602 = "Algebra.CommutativeRing._.group"
d1602 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T386
d1602 v0 v1 v2 = du1602 v2
du1602 :: T1462 -> T386
du1602 v0
  = let v1 = du1594 (coe v0) in coe (du550 (coe (du1426 (coe v1))))
name1604 = "Algebra.CommutativeRing._.rawRing"
d1604 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T1272
d1604 v0 v1 v2 = du1604 v2
du1604 :: T1462 -> T1272
du1604 v0 = coe (du1456 (coe (du1594 (coe v0))))
name1608 = "Algebra.CommutativeRing._.*-commutativeMonoid"
d1608 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T214
d1608 v0 v1 v2 = du1608 v2
du1608 :: T1462 -> T214
du1608 v0 = coe (du1266 (coe (du1596 (coe v0))))
name1610 = "Algebra.CommutativeRing._.*-monoid"
d1610 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T154
d1610 v0 v1 v2 = du1610 v2
du1610 :: T1462 -> T154
du1610 v0
  = let v1 = du1596 (coe v0) in
    let v2 = du1240 (coe v1) in coe (du884 (coe (du996 (coe v2))))
name1612 = "Algebra.CommutativeRing._.rawMonoid"
d1612 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T128
d1612 v0 v1 v2 = du1612 v2
du1612 :: T1462 -> T128
du1612 v0
  = let v1 = du1596 (coe v0) in
    let v2 = du1240 (coe v1) in
    let v3 = du996 (coe v2) in coe (du208 (coe (du884 (coe v3))))
name1614 = "Algebra.CommutativeRing._.semigroup"
d1614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T28
d1614 v0 v1 v2 = du1614 v2
du1614 :: T1462 -> T28
du1614 v0
  = let v1 = du1596 (coe v0) in
    let v2 = du1240 (coe v1) in
    let v3 = du996 (coe v2) in coe (du206 (coe (du884 (coe v3))))
name1616 = "Algebra.CommutativeRing._.+-commutativeMonoid"
d1616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T214
d1616 v0 v1 v2 = du1616 v2
du1616 :: T1462 -> T214
du1616 v0
  = let v1 = du1596 (coe v0) in
    let v2 = du1240 (coe v1) in coe (du874 (coe (du996 (coe v2))))
name1618 = "Algebra.CommutativeRing._.monoid"
d1618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T154
d1618 v0 v1 v2 = du1618 v2
du1618 :: T1462 -> T154
du1618 v0
  = let v1 = du1596 (coe v0) in
    let v2 = du1240 (coe v1) in
    let v3 = du996 (coe v2) in coe (du270 (coe (du874 (coe v3))))
name1620 = "Algebra.CommutativeRing._.rawMonoid"
d1620 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T128
d1620 v0 v1 v2 = du1620 v2
du1620 :: T1462 -> T128
du1620 v0
  = let v1 = du1596 (coe v0) in
    let v2 = du1240 (coe v1) in
    let v3 = du996 (coe v2) in
    let v4 = du874 (coe v3) in coe (du208 (coe (du270 (coe v4))))
name1622 = "Algebra.CommutativeRing._.semigroup"
d1622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T28
d1622 v0 v1 v2 = du1622 v2
du1622 :: T1462 -> T28
du1622 v0
  = let v1 = du1596 (coe v0) in
    let v2 = du1240 (coe v1) in
    let v3 = du996 (coe v2) in
    let v4 = du874 (coe v3) in coe (du206 (coe (du270 (coe v4))))
name1624
  = "Algebra.CommutativeRing._.commutativeSemiringWithoutOne"
d1624 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T1024
d1624 v0 v1 v2 = du1624 v2
du1624 :: T1462 -> T1024
du1624 v0 = coe (du1268 (coe (du1596 (coe v0))))
name1626 = "Algebra.CommutativeRing._.nearSemiring"
d1626 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T602
d1626 v0 v1 v2 = du1626 v2
du1626 :: T1462 -> T602
du1626 v0
  = let v1 = du1596 (coe v0) in
    let v2 = du1240 (coe v1) in coe (du770 (coe (du1014 (coe v2))))
name1628 = "Algebra.CommutativeRing._.semiring"
d1628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T896
d1628 v0 v1 v2 = du1628 v2
du1628 :: T1462 -> T896
du1628 v0 = coe (du1240 (coe (du1596 (coe v0))))
name1630
  = "Algebra.CommutativeRing._.semiringWithoutAnnihilatingZero"
d1630 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T788
d1630 v0 v1 v2 = du1630 v2
du1630 :: T1462 -> T788
du1630 v0
  = let v1 = du1596 (coe v0) in coe (du996 (coe (du1240 (coe v1))))
name1632 = "Algebra.CommutativeRing._.semiringWithoutOne"
d1632 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1462 -> T684
d1632 v0 v1 v2 = du1632 v2
du1632 :: T1462 -> T684
du1632 v0
  = let v1 = du1596 (coe v0) in coe (du1014 (coe (du1240 (coe v1))))
name1638 = "Algebra.Semilattice"
d1638 a0 a1 = ()
data T1638
  = C6833 (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T1192
name1652 = "Algebra.Semilattice.Carrier"
d1652 :: T1638 -> ()
d1652 = erased
name1654 = "Algebra.Semilattice._≈_"
d1654 :: T1638 -> AgdaAny -> AgdaAny -> ()
d1654 = erased
name1656 = "Algebra.Semilattice._∧_"
d1656 :: T1638 -> AgdaAny -> AgdaAny -> AgdaAny
d1656 v0
  = case coe v0 of
      C6833 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1658 = "Algebra.Semilattice.isSemilattice"
d1658 :: T1638 -> MAlonzo.Code.Algebra.Structures.T1192
d1658 v0
  = case coe v0 of
      C6833 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1662 = "Algebra.Semilattice._.assoc"
d1662 :: T1638 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1662 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d86
         (coe
            (MAlonzo.Code.Algebra.Structures.d112
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1200 (coe (d1658 (coe v0))))))))
name1664 = "Algebra.Semilattice._.comm"
d1664 :: T1638 -> AgdaAny -> AgdaAny -> AgdaAny
d1664 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1202 (coe (d1658 (coe v0))))
name1666 = "Algebra.Semilattice._.idem"
d1666 :: T1638 -> AgdaAny -> AgdaAny
d1666 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d114
         (coe
            (MAlonzo.Code.Algebra.Structures.d1200 (coe (d1658 (coe v0))))))
name1668 = "Algebra.Semilattice._.isBand"
d1668 :: T1638 -> MAlonzo.Code.Algebra.Structures.T104
d1668 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1200 (coe (d1658 (coe v0))))
name1670 = "Algebra.Semilattice._.isEquivalence"
d1670 :: T1638 -> MAlonzo.Code.Relation.Binary.Core.T578
d1670 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d84
         (coe
            (MAlonzo.Code.Algebra.Structures.d112
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1200 (coe (d1658 (coe v0))))))))
name1672 = "Algebra.Semilattice._.isSemigroup"
d1672 :: T1638 -> MAlonzo.Code.Algebra.Structures.T74
d1672 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d112
         (coe
            (MAlonzo.Code.Algebra.Structures.d1200 (coe (d1658 (coe v0))))))
name1674 = "Algebra.Semilattice._.refl"
d1674 :: T1638 -> AgdaAny -> AgdaAny
d1674 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d112
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1200
                           (coe (d1658 (coe v0))))))))))
name1676 = "Algebra.Semilattice._.reflexive"
d1676 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1638 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1676 v0 v1 v2 = du1676 v2
du1676 ::
  T1638 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1676 v0
  = let v1 = d1658 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1200 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d112 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d84 (coe v3))) v4)
name1678 = "Algebra.Semilattice._.setoid"
d1678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1638 -> MAlonzo.Code.Relation.Binary.T128
d1678 v0 v1 v2 = du1678 v2
du1678 :: T1638 -> MAlonzo.Code.Relation.Binary.T128
du1678 v0
  = let v1 = d1658 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1200 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.du90
         (coe (MAlonzo.Code.Algebra.Structures.d112 (coe v2))))
name1680 = "Algebra.Semilattice._.sym"
d1680 :: T1638 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1680 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d112
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1200
                           (coe (d1658 (coe v0))))))))))
name1682 = "Algebra.Semilattice._.trans"
d1682 ::
  T1638 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1682 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d84
               (coe
                  (MAlonzo.Code.Algebra.Structures.d112
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1200
                           (coe (d1658 (coe v0))))))))))
name1684 = "Algebra.Semilattice._.∙-cong"
d1684 ::
  T1638 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1684 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d88
         (coe
            (MAlonzo.Code.Algebra.Structures.d112
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1200 (coe (d1658 (coe v0))))))))
name1686 = "Algebra.Semilattice.band"
d1686 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1638 -> T74
d1686 v0 v1 v2 = du1686 v2
du1686 :: T1638 -> T74
du1686 v0
  = coe
      (\ v1 v2 v3 v4 -> C283 v3 v4) erased erased (d1656 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1200 (coe (d1658 (coe v0))))
name1690 = "Algebra.Semilattice._.semigroup"
d1690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1638 -> T28
d1690 v0 v1 v2 = du1690 v2
du1690 :: T1638 -> T28
du1690 v0 = coe (du118 (coe (du1686 (coe v0))))
name1696 = "Algebra.Lattice"
d1696 a0 a1 = ()
data T1696
  = C7083 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T1230
name1712 = "Algebra.Lattice.Carrier"
d1712 :: T1696 -> ()
d1712 = erased
name1714 = "Algebra.Lattice._≈_"
d1714 :: T1696 -> AgdaAny -> AgdaAny -> ()
d1714 = erased
name1716 = "Algebra.Lattice._∨_"
d1716 :: T1696 -> AgdaAny -> AgdaAny -> AgdaAny
d1716 v0
  = case coe v0 of
      C7083 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1718 = "Algebra.Lattice._∧_"
d1718 :: T1696 -> AgdaAny -> AgdaAny -> AgdaAny
d1718 v0
  = case coe v0 of
      C7083 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1720 = "Algebra.Lattice.isLattice"
d1720 :: T1696 -> MAlonzo.Code.Algebra.Structures.T1230
d1720 v0
  = case coe v0 of
      C7083 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1724 = "Algebra.Lattice._.absorptive"
d1724 :: T1696 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1724 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1266 (coe (d1720 (coe v0))))
name1726 = "Algebra.Lattice._.isEquivalence"
d1726 :: T1696 -> MAlonzo.Code.Relation.Binary.Core.T578
d1726 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1252 (coe (d1720 (coe v0))))
name1728 = "Algebra.Lattice._.refl"
d1728 :: T1696 -> AgdaAny -> AgdaAny
d1728 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d1252 (coe (d1720 (coe v0))))))
name1730 = "Algebra.Lattice._.reflexive"
d1730 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1696 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1730 v0 v1 v2 = du1730 v2
du1730 ::
  T1696 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1730 v0
  = let v1 = d1720 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d1252 (coe v1))) v2)
name1732 = "Algebra.Lattice._.sym"
d1732 :: T1696 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1732 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d1252 (coe (d1720 (coe v0))))))
name1734 = "Algebra.Lattice._.trans"
d1734 ::
  T1696 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1734 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d1252 (coe (d1720 (coe v0))))))
name1736 = "Algebra.Lattice._.∧-assoc"
d1736 :: T1696 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1736 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1262 (coe (d1720 (coe v0))))
name1738 = "Algebra.Lattice._.∧-comm"
d1738 :: T1696 -> AgdaAny -> AgdaAny -> AgdaAny
d1738 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1260 (coe (d1720 (coe v0))))
name1740 = "Algebra.Lattice._.∧-cong"
d1740 ::
  T1696 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1740 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1264 (coe (d1720 (coe v0))))
name1742 = "Algebra.Lattice._.∨-assoc"
d1742 :: T1696 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1742 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1256 (coe (d1720 (coe v0))))
name1744 = "Algebra.Lattice._.∨-comm"
d1744 :: T1696 -> AgdaAny -> AgdaAny -> AgdaAny
d1744 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1254 (coe (d1720 (coe v0))))
name1746 = "Algebra.Lattice._.∨-cong"
d1746 ::
  T1696 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1746 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1258 (coe (d1720 (coe v0))))
name1748 = "Algebra.Lattice.setoid"
d1748 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1696 -> MAlonzo.Code.Relation.Binary.T128
d1748 v0 v1 v2 = du1748 v2
du1748 :: T1696 -> MAlonzo.Code.Relation.Binary.T128
du1748 v0
  = coe
      (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1037 v3) erased erased
      (MAlonzo.Code.Algebra.Structures.d1252 (coe (d1720 (coe v0))))
name1754 = "Algebra.DistributiveLattice"
d1754 a0 a1 = ()
data T1754
  = C7345 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Algebra.Structures.T1282
name1770 = "Algebra.DistributiveLattice.Carrier"
d1770 :: T1754 -> ()
d1770 = erased
name1772 = "Algebra.DistributiveLattice._≈_"
d1772 :: T1754 -> AgdaAny -> AgdaAny -> ()
d1772 = erased
name1774 = "Algebra.DistributiveLattice._∨_"
d1774 :: T1754 -> AgdaAny -> AgdaAny -> AgdaAny
d1774 v0
  = case coe v0 of
      C7345 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1776 = "Algebra.DistributiveLattice._∧_"
d1776 :: T1754 -> AgdaAny -> AgdaAny -> AgdaAny
d1776 v0
  = case coe v0 of
      C7345 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1778 = "Algebra.DistributiveLattice.isDistributiveLattice"
d1778 :: T1754 -> MAlonzo.Code.Algebra.Structures.T1282
d1778 v0
  = case coe v0 of
      C7345 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1782 = "Algebra.DistributiveLattice._.absorptive"
d1782 :: T1754 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1782 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1266
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1778 (coe v0))))))
name1784 = "Algebra.DistributiveLattice._.isEquivalence"
d1784 :: T1754 -> MAlonzo.Code.Relation.Binary.Core.T578
d1784 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1252
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1778 (coe v0))))))
name1786 = "Algebra.DistributiveLattice._.isLattice"
d1786 :: T1754 -> MAlonzo.Code.Algebra.Structures.T1230
d1786 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1778 (coe v0))))
name1788 = "Algebra.DistributiveLattice._.refl"
d1788 :: T1754 -> AgdaAny -> AgdaAny
d1788 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d1252
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1778 (coe v0))))))))
name1790 = "Algebra.DistributiveLattice._.reflexive"
d1790 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1754 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1790 v0 v1 v2 = du1790 v2
du1790 ::
  T1754 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1790 v0
  = let v1 = d1778 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1292 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d1252 (coe v2))) v3)
name1792 = "Algebra.DistributiveLattice._.sym"
d1792 :: T1754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1792 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d1252
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1778 (coe v0))))))))
name1794 = "Algebra.DistributiveLattice._.trans"
d1794 ::
  T1754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1794 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d1252
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1778 (coe v0))))))))
name1796 = "Algebra.DistributiveLattice._.∧-assoc"
d1796 :: T1754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1796 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1262
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1778 (coe v0))))))
name1798 = "Algebra.DistributiveLattice._.∧-comm"
d1798 :: T1754 -> AgdaAny -> AgdaAny -> AgdaAny
d1798 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1260
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1778 (coe v0))))))
name1800 = "Algebra.DistributiveLattice._.∧-cong"
d1800 ::
  T1754 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1800 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1264
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1778 (coe v0))))))
name1802 = "Algebra.DistributiveLattice._.∨-assoc"
d1802 :: T1754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1802 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1256
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1778 (coe v0))))))
name1804 = "Algebra.DistributiveLattice._.∨-comm"
d1804 :: T1754 -> AgdaAny -> AgdaAny -> AgdaAny
d1804 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1254
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1778 (coe v0))))))
name1806 = "Algebra.DistributiveLattice._.∨-cong"
d1806 ::
  T1754 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1806 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1258
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1778 (coe v0))))))
name1808 = "Algebra.DistributiveLattice._.∨-∧-distribʳ"
d1808 :: T1754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1808 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1294 (coe (d1778 (coe v0))))
name1810 = "Algebra.DistributiveLattice.lattice"
d1810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1754 -> T1696
d1810 v0 v1 v2 = du1810 v2
du1810 :: T1754 -> T1696
du1810 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C7083 v3 v4 v5) erased erased (d1774 (coe v0))
      (d1776 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1292 (coe (d1778 (coe v0))))
name1814 = "Algebra.DistributiveLattice._.setoid"
d1814 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1754 -> MAlonzo.Code.Relation.Binary.T128
d1814 v0 v1 v2 = du1814 v2
du1814 :: T1754 -> MAlonzo.Code.Relation.Binary.T128
du1814 v0 = coe (du1748 (coe (du1810 (coe v0))))
name1820 = "Algebra.BooleanAlgebra"
d1820 a0 a1 = ()
data T1820
  = C7639 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
          AgdaAny MAlonzo.Code.Algebra.Structures.T1332
name1842 = "Algebra.BooleanAlgebra.Carrier"
d1842 :: T1820 -> ()
d1842 = erased
name1844 = "Algebra.BooleanAlgebra._≈_"
d1844 :: T1820 -> AgdaAny -> AgdaAny -> ()
d1844 = erased
name1846 = "Algebra.BooleanAlgebra._∨_"
d1846 :: T1820 -> AgdaAny -> AgdaAny -> AgdaAny
d1846 v0
  = case coe v0 of
      C7639 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1848 = "Algebra.BooleanAlgebra._∧_"
d1848 :: T1820 -> AgdaAny -> AgdaAny -> AgdaAny
d1848 v0
  = case coe v0 of
      C7639 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1850 = "Algebra.BooleanAlgebra.¬_"
d1850 :: T1820 -> AgdaAny -> AgdaAny
d1850 v0
  = case coe v0 of
      C7639 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1852 = "Algebra.BooleanAlgebra.⊤"
d1852 :: T1820 -> AgdaAny
d1852 v0
  = case coe v0 of
      C7639 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1854 = "Algebra.BooleanAlgebra.⊥"
d1854 :: T1820 -> AgdaAny
d1854 v0
  = case coe v0 of
      C7639 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1856 = "Algebra.BooleanAlgebra.isBooleanAlgebra"
d1856 :: T1820 -> MAlonzo.Code.Algebra.Structures.T1332
d1856 v0
  = case coe v0 of
      C7639 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name1860 = "Algebra.BooleanAlgebra._.absorptive"
d1860 :: T1820 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1860 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1266
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1352 (coe (d1856 (coe v0))))))))
name1862 = "Algebra.BooleanAlgebra._.isDistributiveLattice"
d1862 :: T1820 -> MAlonzo.Code.Algebra.Structures.T1282
d1862 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1352 (coe (d1856 (coe v0))))
name1864 = "Algebra.BooleanAlgebra._.isEquivalence"
d1864 :: T1820 -> MAlonzo.Code.Relation.Binary.Core.T578
d1864 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1252
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1352 (coe (d1856 (coe v0))))))))
name1866 = "Algebra.BooleanAlgebra._.isLattice"
d1866 :: T1820 -> MAlonzo.Code.Algebra.Structures.T1230
d1866 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1292
         (coe
            (MAlonzo.Code.Algebra.Structures.d1352 (coe (d1856 (coe v0))))))
name1868 = "Algebra.BooleanAlgebra._.refl"
d1868 :: T1820 -> AgdaAny -> AgdaAny
d1868 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d594
         (coe
            (MAlonzo.Code.Algebra.Structures.d1252
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1292
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1352
                           (coe (d1856 (coe v0))))))))))
name1870 = "Algebra.BooleanAlgebra._.reflexive"
d1870 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1820 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1870 v0 v1 v2 = du1870 v2
du1870 ::
  T1820 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1870 v0
  = let v1 = d1856 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1352 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1292 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du600
           (coe (MAlonzo.Code.Algebra.Structures.d1252 (coe v3))) v4)
name1872 = "Algebra.BooleanAlgebra._.sym"
d1872 :: T1820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1872 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d596
         (coe
            (MAlonzo.Code.Algebra.Structures.d1252
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1292
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1352
                           (coe (d1856 (coe v0))))))))))
name1874 = "Algebra.BooleanAlgebra._.trans"
d1874 ::
  T1820 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1874 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d598
         (coe
            (MAlonzo.Code.Algebra.Structures.d1252
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1292
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1352
                           (coe (d1856 (coe v0))))))))))
name1876 = "Algebra.BooleanAlgebra._.¬-cong"
d1876 :: T1820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1876 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1358 (coe (d1856 (coe v0))))
name1878 = "Algebra.BooleanAlgebra._.∧-assoc"
d1878 :: T1820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1878 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1262
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1352 (coe (d1856 (coe v0))))))))
name1880 = "Algebra.BooleanAlgebra._.∧-comm"
d1880 :: T1820 -> AgdaAny -> AgdaAny -> AgdaAny
d1880 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1260
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1352 (coe (d1856 (coe v0))))))))
name1882 = "Algebra.BooleanAlgebra._.∧-complementʳ"
d1882 :: T1820 -> AgdaAny -> AgdaAny
d1882 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1356 (coe (d1856 (coe v0))))
name1884 = "Algebra.BooleanAlgebra._.∧-cong"
d1884 ::
  T1820 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1884 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1264
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1352 (coe (d1856 (coe v0))))))))
name1886 = "Algebra.BooleanAlgebra._.∨-assoc"
d1886 :: T1820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1886 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1256
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1352 (coe (d1856 (coe v0))))))))
name1888 = "Algebra.BooleanAlgebra._.∨-comm"
d1888 :: T1820 -> AgdaAny -> AgdaAny -> AgdaAny
d1888 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1254
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1352 (coe (d1856 (coe v0))))))))
name1890 = "Algebra.BooleanAlgebra._.∨-complementʳ"
d1890 :: T1820 -> AgdaAny -> AgdaAny
d1890 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1354 (coe (d1856 (coe v0))))
name1892 = "Algebra.BooleanAlgebra._.∨-cong"
d1892 ::
  T1820 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1892 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1258
         (coe
            (MAlonzo.Code.Algebra.Structures.d1292
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1352 (coe (d1856 (coe v0))))))))
name1894 = "Algebra.BooleanAlgebra._.∨-∧-distribʳ"
d1894 :: T1820 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1894 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1294
         (coe
            (MAlonzo.Code.Algebra.Structures.d1352 (coe (d1856 (coe v0))))))
name1896 = "Algebra.BooleanAlgebra.distributiveLattice"
d1896 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1820 -> T1754
d1896 v0 v1 v2 = du1896 v2
du1896 :: T1820 -> T1754
du1896 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C7345 v3 v4 v5) erased erased (d1846 (coe v0))
      (d1848 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d1352 (coe (d1856 (coe v0))))
name1900 = "Algebra.BooleanAlgebra._.lattice"
d1900 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1820 -> T1696
d1900 v0 v1 v2 = du1900 v2
du1900 :: T1820 -> T1696
du1900 v0 = coe (du1810 (coe (du1896 (coe v0))))
name1902 = "Algebra.BooleanAlgebra._.setoid"
d1902 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1820 -> MAlonzo.Code.Relation.Binary.T128
d1902 v0 v1 v2 = du1902 v2
du1902 :: T1820 -> MAlonzo.Code.Relation.Binary.T128
du1902 v0
  = let v1 = du1896 (coe v0) in coe (du1748 (coe (du1810 (coe v1))))
