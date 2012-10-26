//===-- Dalvik.td - Describe the Dalvik Target Machine -----*- tablegen -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Target-independent interfaces which we are implementing
//===----------------------------------------------------------------------===//

include "llvm/Target/Target.td"

//===----------------------------------------------------------------------===//
// Register File, Calling Conv, Instruction Descriptions
//===----------------------------------------------------------------------===//

include "DalvikRegisterInfo.td"
include "DalvikCallingConv.td"
include "DalvikInstrInfo.td"

def DalvikInstrInfo : InstrInfo;

//===----------------------------------------------------------------------===//
// SPARC processors supported.
//===----------------------------------------------------------------------===//

class Proc<string Name> : Processor<Name, NoItineraries, Features>;

def : Proc<"generic">;

//===----------------------------------------------------------------------===//
// Declare the target which we are implementing
//===----------------------------------------------------------------------===//

def Dalvik : Target {
  // Pull in Instruction Info:
  let InstructionSet = DalvikInstrInfo;
}
