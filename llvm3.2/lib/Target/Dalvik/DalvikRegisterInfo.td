//===-- SparcRegisterInfo.td - Sparc Register defs ---------*- tablegen -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
//  Declarations that describe the Sparc register file 
//===----------------------------------------------------------------------===//

// 65536 Registers
class DalvikReg<string n> : Register<n> {
  field bits<16> Num;
  let Namespace = "Dalvik";
}

// Registers are identified with 16-bit ID numbers.
// Vi - 32-bit integer registers
class Vi<bits<16> num, string n> : DalvikReg<n> {
  let Num = num;
}
let Namespace = "Dalvik" in {
  // General Purpose Registers
  def V0 : DalvikReg< 0, "v0">, DwarfRegNum<[0]>;
  def V1 : DalvikReg< 1, "v1">, DwarfRegNum<[1]>;
  def V2 : DalvikReg< 2, "v2">, DwarfRegNum<[2]>;
  def V3 : DalvikReg< 3, "v3">, DwarfRegNum<[3]>;
  def V4 : DalvikReg< 4, "v4">, DwarfRegNum<[4]>;
  def V5 : DalvikReg< 5, "v5">, DwarfRegNum<[5]>;
  def V6 : DalvikReg< 6, "v6">, DwarfRegNum<[6]>;
  def V7 : DalvikReg< 7, "v7">, DwarfRegNum<[7]>;
  def V8 : DalvikReg< 8, "v8">, DwarfRegNum<[8]>;
  def V9 : DalvikReg< 9, "v9">, DwarfRegNum<[9]>;
  def V10 : DalvikReg< 10, "v10">, DwarfRegNum<[10]>;
  def V11 : DalvikReg< 11, "v11">, DwarfRegNum<[11]>;
  def V12 : DalvikReg< 12, "v12">, DwarfRegNum<[12]>;
  def V13 : DalvikReg< 13, "v13">, DwarfRegNum<[13]>;
  def V14 : DalvikReg< 14, "v14">, DwarfRegNum<[14]>;
  def V15 : DalvikReg< 15, "v15">, DwarfRegNum<[15]>;
}

def IntRegs : RegisterClass<"Dalvik", [i32], 32,
                            (add V0, V1, V2,  V3,  V4,  V5,  V6,  V7,
                                 V8, V9, V10, V11, V12, V13, V14, V15
                                 )>;
