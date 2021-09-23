{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.QhelloZ45Zworld where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit

import qualified Data.Text as T
name2 = "hello-world.putStrLn"
d2 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.Unit.T6
d2 = putStrLn . T.unpack
main = coe d4
name4 = "hello-world.main"
d4 ::
  MAlonzo.Code.Agda.Builtin.IO.T8
    AgdaAny MAlonzo.Code.Agda.Builtin.Unit.T6
d4 = coe d2 (Data.Text.pack "Hello world!")
