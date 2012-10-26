//===-- DalvikCallingConv.td - Calling Conventions Dalvik --*- tablegen -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This describes the calling conventions for the Dalvik architectures.
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Return Value Calling Conventions
//===----------------------------------------------------------------------===//

// Dalvik 32-bit C return-value convention.
def RetCC_Dalvik : CallingConv<[
  CCIfType<[i32], CCAssignToReg<[V0, V1, V2, V3, V4, V5, V6, V7]>>,
]>;

// Dalvik 32-bit C Calling convention.
def CC_Dalvik : CallingConv<[
  CCIfType<[i32], CCAssignToReg<[V0, V1, V2, V3, V4, V5, V6, V7]>>,
]>;
