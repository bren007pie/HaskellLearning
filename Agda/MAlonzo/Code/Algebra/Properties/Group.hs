{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Properties.Group where

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

name102 = "Algebra.Properties.Group._.Identity"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d102 = erased
name156 = "Algebra.Properties.Group.⁻¹-involutive"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 -> AgdaAny -> AgdaAny
d156 v0 v1 v2 v3 = du156 v2 v3
du156 :: MAlonzo.Code.Algebra.T386 -> AgdaAny -> AgdaAny
du156 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.PreorderReasoning.d66
         (coe
            (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
               (coe
                  (MAlonzo.Code.Relation.Binary.du158
                     (let v2 = MAlonzo.Code.Algebra.d414 (coe v0) in
                      let v3 = MAlonzo.Code.Algebra.Structures.d288 (coe v2) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du90
                           (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v3)))))))
               (coe
                  MAlonzo.Code.Algebra.d412 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.d408 v0
                  (coe
                     MAlonzo.Code.Algebra.d412 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1))
                  (MAlonzo.Code.Algebra.d410 (coe v0)))
               (coe v1)
               (coe
                  MAlonzo.Code.Relation.Binary.Core.d596
                  (MAlonzo.Code.Algebra.Structures.d84
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d148
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d288
                                 (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                  (coe
                     MAlonzo.Code.Algebra.d408 v0
                     (coe
                        MAlonzo.Code.Algebra.d412 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1))
                     (MAlonzo.Code.Algebra.d410 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.d412 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1))
                  (let v2 = MAlonzo.Code.Algebra.d414 (coe v0) in
                   let v3 = MAlonzo.Code.Algebra.Structures.d288 (coe v2) in
                   coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d30
                     (MAlonzo.Code.Algebra.Structures.d150 (coe v3))
                     (coe
                        MAlonzo.Code.Algebra.d412 v0
                        (coe MAlonzo.Code.Algebra.d412 v0 v1))))
               (coe
                  (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                     (coe
                        (MAlonzo.Code.Relation.Binary.du158
                           (let v2 = MAlonzo.Code.Algebra.d414 (coe v0) in
                            let v3 = MAlonzo.Code.Algebra.Structures.d288 (coe v2) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du90
                                 (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v3)))))))
                     (coe
                        MAlonzo.Code.Algebra.d408 v0
                        (coe
                           MAlonzo.Code.Algebra.d412 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1))
                        (MAlonzo.Code.Algebra.d410 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.d408 v0
                        (coe
                           MAlonzo.Code.Algebra.d412 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1))
                        (coe
                           MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1)
                           v1))
                     (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d88
                        (MAlonzo.Code.Algebra.Structures.d148
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d288
                                 (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))
                        (coe
                           MAlonzo.Code.Algebra.d412 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1))
                        (coe
                           MAlonzo.Code.Algebra.d412 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1))
                        (MAlonzo.Code.Algebra.d410 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1)
                           v1)
                        (coe
                           MAlonzo.Code.Relation.Binary.Core.d594
                           (MAlonzo.Code.Algebra.Structures.d84
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d148
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d288
                                          (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                           (coe
                              MAlonzo.Code.Algebra.d412 v0
                              (coe MAlonzo.Code.Algebra.d412 v0 v1)))
                        (coe
                           MAlonzo.Code.Relation.Binary.Core.d596
                           (MAlonzo.Code.Algebra.Structures.d84
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d148
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d288
                                          (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                           (coe
                              MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1)
                              v1)
                           (MAlonzo.Code.Algebra.d410 (coe v0))
                           (let v2 = MAlonzo.Code.Algebra.d414 (coe v0) in
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d28
                              (MAlonzo.Code.Algebra.Structures.d290 (coe v2)) v1)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                           (coe
                              (MAlonzo.Code.Relation.Binary.du158
                                 (let v2 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                  let v3 = MAlonzo.Code.Algebra.Structures.d288 (coe v2) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du90
                                       (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v3)))))))
                           (coe
                              MAlonzo.Code.Algebra.d408 v0
                              (coe
                                 MAlonzo.Code.Algebra.d412 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1))
                              (coe
                                 MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1)
                                 v1))
                           (coe
                              MAlonzo.Code.Algebra.d408 v0
                              (coe
                                 MAlonzo.Code.Algebra.d408 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d412 v0
                                    (coe MAlonzo.Code.Algebra.d412 v0 v1))
                                 (coe MAlonzo.Code.Algebra.d412 v0 v1))
                              v1)
                           (coe v1)
                           (coe
                              MAlonzo.Code.Relation.Binary.Core.d596
                              (MAlonzo.Code.Algebra.Structures.d84
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d148
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d288
                                             (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                              (coe
                                 MAlonzo.Code.Algebra.d408 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d408 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d412 v0
                                       (coe MAlonzo.Code.Algebra.d412 v0 v1))
                                    (coe MAlonzo.Code.Algebra.d412 v0 v1))
                                 v1)
                              (coe
                                 MAlonzo.Code.Algebra.d408 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d412 v0
                                    (coe MAlonzo.Code.Algebra.d412 v0 v1))
                                 (coe
                                    MAlonzo.Code.Algebra.d408 v0
                                    (coe MAlonzo.Code.Algebra.d412 v0 v1) v1))
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d86
                                 (MAlonzo.Code.Algebra.Structures.d148
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d288
                                          (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d412 v0
                                    (coe MAlonzo.Code.Algebra.d412 v0 v1))
                                 (coe MAlonzo.Code.Algebra.d412 v0 v1) v1))
                           (coe
                              (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.du158
                                       (let v2 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                        let v3 = MAlonzo.Code.Algebra.Structures.d288 (coe v2) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du90
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d148 (coe v3)))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d408 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d408 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d412 v0
                                          (coe MAlonzo.Code.Algebra.d412 v0 v1))
                                       (coe MAlonzo.Code.Algebra.d412 v0 v1))
                                    v1)
                                 (coe
                                    MAlonzo.Code.Algebra.d408 v0
                                    (MAlonzo.Code.Algebra.d410 (coe v0)) v1)
                                 (coe v1)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d88
                                    (MAlonzo.Code.Algebra.Structures.d148
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d288
                                             (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))
                                    (coe
                                       MAlonzo.Code.Algebra.d408 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d412 v0
                                          (coe MAlonzo.Code.Algebra.d412 v0 v1))
                                       (coe MAlonzo.Code.Algebra.d412 v0 v1))
                                    (MAlonzo.Code.Algebra.d410 (coe v0)) v1 v1
                                    (let v2 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                     coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d28
                                       (MAlonzo.Code.Algebra.Structures.d290 (coe v2))
                                       (coe MAlonzo.Code.Algebra.d412 v0 v1))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Core.d594
                                       (MAlonzo.Code.Algebra.Structures.d84
                                          (coe
                                             (MAlonzo.Code.Algebra.Structures.d148
                                                (coe
                                                   (MAlonzo.Code.Algebra.Structures.d288
                                                      (coe
                                                         (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                                       v1))
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.du158
                                             (let v2 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                              let v3
                                                    = MAlonzo.Code.Algebra.Structures.d288
                                                        (coe v2) in
                                              coe
                                                (MAlonzo.Code.Algebra.Structures.du90
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d148
                                                         (coe v3)))))))
                                       (coe
                                          MAlonzo.Code.Algebra.d408 v0
                                          (MAlonzo.Code.Algebra.d410 (coe v0)) v1)
                                       (coe v1) (coe v1)
                                       (let v2 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                        let v3 = MAlonzo.Code.Algebra.Structures.d288 (coe v2) in
                                        coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d28
                                          (MAlonzo.Code.Algebra.Structures.d150 (coe v3)) v1)
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.PreorderReasoning.du114
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.du158
                                                   (let v2 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                                    let v3
                                                          = MAlonzo.Code.Algebra.Structures.d288
                                                              (coe v2) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.Structures.du90
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d148
                                                               (coe v3)))))))
                                             (coe v1))))))))))))))
name164 = "Algebra.Properties.Group.left-helper"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 -> AgdaAny -> AgdaAny -> AgdaAny
d164 v0 v1 v2 v3 v4 = du164 v2 v3 v4
du164 :: MAlonzo.Code.Algebra.T386 -> AgdaAny -> AgdaAny -> AgdaAny
du164 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.PreorderReasoning.d66
         (coe
            (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
               (coe
                  (MAlonzo.Code.Relation.Binary.du158
                     (let v3 = MAlonzo.Code.Algebra.d414 (coe v0) in
                      let v4 = MAlonzo.Code.Algebra.Structures.d288 (coe v3) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du90
                           (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v4)))))))
               (coe v1)
               (coe
                  MAlonzo.Code.Algebra.d408 v0 v1
                  (MAlonzo.Code.Algebra.d410 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.d408 v0
                  (coe MAlonzo.Code.Algebra.d408 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.d412 v0 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Core.d596
                  (MAlonzo.Code.Algebra.Structures.d84
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d148
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d288
                                 (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                  (coe
                     MAlonzo.Code.Algebra.d408 v0 v1
                     (MAlonzo.Code.Algebra.d410 (coe v0)))
                  v1
                  (let v3 = MAlonzo.Code.Algebra.d414 (coe v0) in
                   let v4 = MAlonzo.Code.Algebra.Structures.d288 (coe v3) in
                   coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d30
                     (MAlonzo.Code.Algebra.Structures.d150 (coe v4)) v1))
               (coe
                  (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                     (coe
                        (MAlonzo.Code.Relation.Binary.du158
                           (let v3 = MAlonzo.Code.Algebra.d414 (coe v0) in
                            let v4 = MAlonzo.Code.Algebra.Structures.d288 (coe v3) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du90
                                 (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v4)))))))
                     (coe
                        MAlonzo.Code.Algebra.d408 v0 v1
                        (MAlonzo.Code.Algebra.d410 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.d408 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.d408 v0 v2
                           (coe MAlonzo.Code.Algebra.d412 v0 v2)))
                     (coe
                        MAlonzo.Code.Algebra.d408 v0
                        (coe MAlonzo.Code.Algebra.d408 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.d412 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d88
                        (MAlonzo.Code.Algebra.Structures.d148
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d288
                                 (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))
                        v1 v1 (MAlonzo.Code.Algebra.d410 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.d408 v0 v2
                           (coe MAlonzo.Code.Algebra.d412 v0 v2))
                        (coe
                           MAlonzo.Code.Relation.Binary.Core.d594
                           (MAlonzo.Code.Algebra.Structures.d84
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d148
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d288
                                          (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                           v1)
                        (coe
                           MAlonzo.Code.Relation.Binary.Core.d596
                           (MAlonzo.Code.Algebra.Structures.d84
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d148
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d288
                                          (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                           (coe
                              MAlonzo.Code.Algebra.d408 v0 v2
                              (coe MAlonzo.Code.Algebra.d412 v0 v2))
                           (MAlonzo.Code.Algebra.d410 (coe v0))
                           (let v3 = MAlonzo.Code.Algebra.d414 (coe v0) in
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d30
                              (MAlonzo.Code.Algebra.Structures.d290 (coe v3)) v2)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                           (coe
                              (MAlonzo.Code.Relation.Binary.du158
                                 (let v3 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                  let v4 = MAlonzo.Code.Algebra.Structures.d288 (coe v3) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du90
                                       (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v4)))))))
                           (coe
                              MAlonzo.Code.Algebra.d408 v0 v1
                              (coe
                                 MAlonzo.Code.Algebra.d408 v0 v2
                                 (coe MAlonzo.Code.Algebra.d412 v0 v2)))
                           (coe
                              MAlonzo.Code.Algebra.d408 v0
                              (coe MAlonzo.Code.Algebra.d408 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.d412 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.d408 v0
                              (coe MAlonzo.Code.Algebra.d408 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.d412 v0 v2))
                           (coe
                              MAlonzo.Code.Relation.Binary.Core.d596
                              (MAlonzo.Code.Algebra.Structures.d84
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d148
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d288
                                             (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                              (coe
                                 MAlonzo.Code.Algebra.d408 v0
                                 (coe MAlonzo.Code.Algebra.d408 v0 v1 v2)
                                 (coe MAlonzo.Code.Algebra.d412 v0 v2))
                              (coe
                                 MAlonzo.Code.Algebra.d408 v0 v1
                                 (coe
                                    MAlonzo.Code.Algebra.d408 v0 v2
                                    (coe MAlonzo.Code.Algebra.d412 v0 v2)))
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d86
                                 (MAlonzo.Code.Algebra.Structures.d148
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d288
                                          (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))
                                 v1 v2 (coe MAlonzo.Code.Algebra.d412 v0 v2)))
                           (coe
                              (MAlonzo.Code.Relation.Binary.PreorderReasoning.du114
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.du158
                                       (let v3 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                        let v4 = MAlonzo.Code.Algebra.Structures.d288 (coe v3) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du90
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d148 (coe v4)))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d408 v0
                                    (coe MAlonzo.Code.Algebra.d408 v0 v1 v2)
                                    (coe MAlonzo.Code.Algebra.d412 v0 v2)))))))))))
name174 = "Algebra.Properties.Group.right-helper"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 -> AgdaAny -> AgdaAny -> AgdaAny
d174 v0 v1 v2 v3 v4 = du174 v2 v3 v4
du174 :: MAlonzo.Code.Algebra.T386 -> AgdaAny -> AgdaAny -> AgdaAny
du174 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.PreorderReasoning.d66
         (coe
            (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
               (coe
                  (MAlonzo.Code.Relation.Binary.du158
                     (let v3 = MAlonzo.Code.Algebra.d414 (coe v0) in
                      let v4 = MAlonzo.Code.Algebra.Structures.d288 (coe v3) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du90
                           (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v4)))))))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.d408 v0 (MAlonzo.Code.Algebra.d410 (coe v0))
                  v2)
               (coe
                  MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1)
                  (coe MAlonzo.Code.Algebra.d408 v0 v1 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Core.d596
                  (MAlonzo.Code.Algebra.Structures.d84
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d148
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d288
                                 (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                  (coe
                     MAlonzo.Code.Algebra.d408 v0 (MAlonzo.Code.Algebra.d410 (coe v0))
                     v2)
                  v2
                  (let v3 = MAlonzo.Code.Algebra.d414 (coe v0) in
                   let v4 = MAlonzo.Code.Algebra.Structures.d288 (coe v3) in
                   coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d28
                     (MAlonzo.Code.Algebra.Structures.d150 (coe v4)) v2))
               (coe
                  (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                     (coe
                        (MAlonzo.Code.Relation.Binary.du158
                           (let v3 = MAlonzo.Code.Algebra.d414 (coe v0) in
                            let v4 = MAlonzo.Code.Algebra.Structures.d288 (coe v3) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du90
                                 (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v4)))))))
                     (coe
                        MAlonzo.Code.Algebra.d408 v0 (MAlonzo.Code.Algebra.d410 (coe v0))
                        v2)
                     (coe
                        MAlonzo.Code.Algebra.d408 v0
                        (coe
                           MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1)
                           v1)
                        v2)
                     (coe
                        MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1)
                        (coe MAlonzo.Code.Algebra.d408 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d88
                        (MAlonzo.Code.Algebra.Structures.d148
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d288
                                 (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))
                        (MAlonzo.Code.Algebra.d410 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1)
                           v1)
                        v2 v2
                        (coe
                           MAlonzo.Code.Relation.Binary.Core.d596
                           (MAlonzo.Code.Algebra.Structures.d84
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d148
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d288
                                          (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                           (coe
                              MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1)
                              v1)
                           (MAlonzo.Code.Algebra.d410 (coe v0))
                           (let v3 = MAlonzo.Code.Algebra.d414 (coe v0) in
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d28
                              (MAlonzo.Code.Algebra.Structures.d290 (coe v3)) v1))
                        (coe
                           MAlonzo.Code.Relation.Binary.Core.d594
                           (MAlonzo.Code.Algebra.Structures.d84
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d148
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d288
                                          (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                           v2))
                     (coe
                        (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                           (coe
                              (MAlonzo.Code.Relation.Binary.du158
                                 (let v3 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                  let v4 = MAlonzo.Code.Algebra.Structures.d288 (coe v3) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du90
                                       (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v4)))))))
                           (coe
                              MAlonzo.Code.Algebra.d408 v0
                              (coe
                                 MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1)
                                 v1)
                              v2)
                           (coe
                              MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1)
                              (coe MAlonzo.Code.Algebra.d408 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1)
                              (coe MAlonzo.Code.Algebra.d408 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d86
                              (MAlonzo.Code.Algebra.Structures.d148
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d288
                                       (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))
                              (coe MAlonzo.Code.Algebra.d412 v0 v1) v1 v2)
                           (coe
                              (MAlonzo.Code.Relation.Binary.PreorderReasoning.du114
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.du158
                                       (let v3 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                        let v4 = MAlonzo.Code.Algebra.Structures.d288 (coe v3) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du90
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d148 (coe v4)))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d408 v0
                                    (coe MAlonzo.Code.Algebra.d412 v0 v1)
                                    (coe MAlonzo.Code.Algebra.d408 v0 v1 v2)))))))))))
name184 = "Algebra.Properties.Group.left-identity-unique"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d184 v0 v1 v2 v3 v4 v5 = du184 v2 v3 v4 v5
du184 ::
  MAlonzo.Code.Algebra.T386 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du184 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.PreorderReasoning.d66
         (coe
            (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
               (coe
                  (MAlonzo.Code.Relation.Binary.du158
                     (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du90
                           (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v5)))))))
               (coe v1)
               (coe
                  MAlonzo.Code.Algebra.d408 v0
                  (coe MAlonzo.Code.Algebra.d408 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.d412 v0 v2))
               (coe (MAlonzo.Code.Algebra.d410 (coe v0)))
               (coe (du164 (coe v0) (coe v1) (coe v2)))
               (coe
                  (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                     (coe
                        (MAlonzo.Code.Relation.Binary.du158
                           (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du90
                                 (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v5)))))))
                     (coe
                        MAlonzo.Code.Algebra.d408 v0
                        (coe MAlonzo.Code.Algebra.d408 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.d412 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.d408 v0 v2
                        (coe MAlonzo.Code.Algebra.d412 v0 v2))
                     (coe (MAlonzo.Code.Algebra.d410 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d88
                        (MAlonzo.Code.Algebra.Structures.d148
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d288
                                 (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))
                        (coe MAlonzo.Code.Algebra.d408 v0 v1 v2) v2
                        (coe MAlonzo.Code.Algebra.d412 v0 v2)
                        (coe MAlonzo.Code.Algebra.d412 v0 v2) v3
                        (coe
                           MAlonzo.Code.Relation.Binary.Core.d594
                           (MAlonzo.Code.Algebra.Structures.d84
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d148
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d288
                                          (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                           (coe MAlonzo.Code.Algebra.d412 v0 v2)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                           (coe
                              (MAlonzo.Code.Relation.Binary.du158
                                 (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                  let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du90
                                       (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v5)))))))
                           (coe
                              MAlonzo.Code.Algebra.d408 v0 v2
                              (coe MAlonzo.Code.Algebra.d412 v0 v2))
                           (coe (MAlonzo.Code.Algebra.d410 (coe v0)))
                           (coe (MAlonzo.Code.Algebra.d410 (coe v0)))
                           (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d30
                              (MAlonzo.Code.Algebra.Structures.d290 (coe v4)) v2)
                           (coe
                              (MAlonzo.Code.Relation.Binary.PreorderReasoning.du114
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.du158
                                       (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                        let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du90
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d148 (coe v5)))))))
                                 (coe (MAlonzo.Code.Algebra.d410 (coe v0))))))))))))
name196 = "Algebra.Properties.Group.right-identity-unique"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d196 v0 v1 v2 v3 v4 v5 = du196 v2 v3 v4 v5
du196 ::
  MAlonzo.Code.Algebra.T386 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du196 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.PreorderReasoning.d66
         (coe
            (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
               (coe
                  (MAlonzo.Code.Relation.Binary.du158
                     (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du90
                           (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v5)))))))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1)
                  (coe MAlonzo.Code.Algebra.d408 v0 v1 v2))
               (coe (MAlonzo.Code.Algebra.d410 (coe v0)))
               (coe (du174 (coe v0) (coe v1) (coe v2)))
               (coe
                  (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                     (coe
                        (MAlonzo.Code.Relation.Binary.du158
                           (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du90
                                 (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v5)))))))
                     (coe
                        MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1)
                        (coe MAlonzo.Code.Algebra.d408 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1)
                        v1)
                     (coe (MAlonzo.Code.Algebra.d410 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d88
                        (MAlonzo.Code.Algebra.Structures.d148
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d288
                                 (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))
                        (coe MAlonzo.Code.Algebra.d412 v0 v1)
                        (coe MAlonzo.Code.Algebra.d412 v0 v1)
                        (coe MAlonzo.Code.Algebra.d408 v0 v1 v2) v1
                        (coe
                           MAlonzo.Code.Relation.Binary.Core.d594
                           (MAlonzo.Code.Algebra.Structures.d84
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d148
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d288
                                          (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                           (coe MAlonzo.Code.Algebra.d412 v0 v1))
                        v3)
                     (coe
                        (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                           (coe
                              (MAlonzo.Code.Relation.Binary.du158
                                 (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                  let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du90
                                       (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v5)))))))
                           (coe
                              MAlonzo.Code.Algebra.d408 v0 (coe MAlonzo.Code.Algebra.d412 v0 v1)
                              v1)
                           (coe (MAlonzo.Code.Algebra.d410 (coe v0)))
                           (coe (MAlonzo.Code.Algebra.d410 (coe v0)))
                           (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d28
                              (MAlonzo.Code.Algebra.Structures.d290 (coe v4)) v1)
                           (coe
                              (MAlonzo.Code.Relation.Binary.PreorderReasoning.du114
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.du158
                                       (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                        let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du90
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d148 (coe v5)))))))
                                 (coe (MAlonzo.Code.Algebra.d410 (coe v0))))))))))))
name206 = "Algebra.Properties.Group.identity-unique"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
d206 v0 v1 v2 v3 v4 = du206 v2 v3 v4
du206 ::
  MAlonzo.Code.Algebra.T386 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
du206 v0 v1 v2
  = coe
      (du184
         (coe v0) (coe v1) (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 v2 v1))
name216 = "Algebra.Properties.Group.left-inverse-unique"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d216 v0 v1 v2 v3 v4 v5 = du216 v2 v3 v4 v5
du216 ::
  MAlonzo.Code.Algebra.T386 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du216 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.PreorderReasoning.d66
         (coe
            (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
               (coe
                  (MAlonzo.Code.Relation.Binary.du158
                     (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du90
                           (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v5)))))))
               (coe v1)
               (coe
                  MAlonzo.Code.Algebra.d408 v0
                  (coe MAlonzo.Code.Algebra.d408 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.d412 v0 v2))
               (coe MAlonzo.Code.Algebra.d412 v0 v2)
               (coe (du164 (coe v0) (coe v1) (coe v2)))
               (coe
                  (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                     (coe
                        (MAlonzo.Code.Relation.Binary.du158
                           (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du90
                                 (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v5)))))))
                     (coe
                        MAlonzo.Code.Algebra.d408 v0
                        (coe MAlonzo.Code.Algebra.d408 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.d412 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.d408 v0 (MAlonzo.Code.Algebra.d410 (coe v0))
                        (coe MAlonzo.Code.Algebra.d412 v0 v2))
                     (coe MAlonzo.Code.Algebra.d412 v0 v2)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d88
                        (MAlonzo.Code.Algebra.Structures.d148
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d288
                                 (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))
                        (coe MAlonzo.Code.Algebra.d408 v0 v1 v2)
                        (MAlonzo.Code.Algebra.d410 (coe v0))
                        (coe MAlonzo.Code.Algebra.d412 v0 v2)
                        (coe MAlonzo.Code.Algebra.d412 v0 v2) v3
                        (coe
                           MAlonzo.Code.Relation.Binary.Core.d594
                           (MAlonzo.Code.Algebra.Structures.d84
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d148
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d288
                                          (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                           (coe MAlonzo.Code.Algebra.d412 v0 v2)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                           (coe
                              (MAlonzo.Code.Relation.Binary.du158
                                 (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                  let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du90
                                       (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v5)))))))
                           (coe
                              MAlonzo.Code.Algebra.d408 v0 (MAlonzo.Code.Algebra.d410 (coe v0))
                              (coe MAlonzo.Code.Algebra.d412 v0 v2))
                           (coe MAlonzo.Code.Algebra.d412 v0 v2)
                           (coe MAlonzo.Code.Algebra.d412 v0 v2)
                           (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d28
                              (MAlonzo.Code.Algebra.Structures.d150 (coe v5))
                              (coe MAlonzo.Code.Algebra.d412 v0 v2))
                           (coe
                              (MAlonzo.Code.Relation.Binary.PreorderReasoning.du114
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.du158
                                       (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                        let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du90
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d148 (coe v5)))))))
                                 (coe MAlonzo.Code.Algebra.d412 v0 v2))))))))))
name228 = "Algebra.Properties.Group.right-inverse-unique"
d228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T386 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d228 v0 v1 v2 v3 v4 v5 = du228 v2 v3 v4 v5
du228 ::
  MAlonzo.Code.Algebra.T386 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du228 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.PreorderReasoning.d66
         (coe
            (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
               (coe
                  (MAlonzo.Code.Relation.Binary.du158
                     (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du90
                           (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v5)))))))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.d412 v0 (coe MAlonzo.Code.Algebra.d412 v0 v2))
               (coe MAlonzo.Code.Algebra.d412 v0 v1)
               (coe
                  MAlonzo.Code.Relation.Binary.Core.d596
                  (MAlonzo.Code.Algebra.Structures.d84
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d148
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d288
                                 (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                  (coe
                     MAlonzo.Code.Algebra.d412 v0 (coe MAlonzo.Code.Algebra.d412 v0 v2))
                  v2 (du156 (coe v0) (coe v2)))
               (coe
                  (MAlonzo.Code.Relation.Binary.PreorderReasoning.du76
                     (coe
                        (MAlonzo.Code.Relation.Binary.du158
                           (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du90
                                 (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v5)))))))
                     (coe
                        MAlonzo.Code.Algebra.d412 v0 (coe MAlonzo.Code.Algebra.d412 v0 v2))
                     (coe MAlonzo.Code.Algebra.d412 v0 v1)
                     (coe MAlonzo.Code.Algebra.d412 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d292
                        (MAlonzo.Code.Algebra.d414 (coe v0))
                        (coe MAlonzo.Code.Algebra.d412 v0 v2) v1
                        (coe
                           MAlonzo.Code.Relation.Binary.Core.d596
                           (MAlonzo.Code.Algebra.Structures.d84
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d148
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d288
                                          (coe (MAlonzo.Code.Algebra.d414 (coe v0))))))))
                           v1 (coe MAlonzo.Code.Algebra.d412 v0 v2)
                           (du216 (coe v0) (coe v1) (coe v2) (coe v3))))
                     (coe
                        (MAlonzo.Code.Relation.Binary.PreorderReasoning.du114
                           (coe
                              (MAlonzo.Code.Relation.Binary.du158
                                 (let v4 = MAlonzo.Code.Algebra.d414 (coe v0) in
                                  let v5 = MAlonzo.Code.Algebra.Structures.d288 (coe v4) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du90
                                       (coe (MAlonzo.Code.Algebra.Structures.d148 (coe v5)))))))
                           (coe MAlonzo.Code.Algebra.d412 v0 v1))))))))
