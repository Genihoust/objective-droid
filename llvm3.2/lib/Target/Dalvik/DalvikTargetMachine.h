//===-- SparcTargetMachine.h - Define TargetMachine for Sparc ---*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file declares the Sparc specific subclass of TargetMachine.
//
//===----------------------------------------------------------------------===//

#ifndef SPARCTARGETMACHINE_H
#define SPARCTARGETMACHINE_H

//TODO:#include "SparcInstrInfo.h"
//TODO:#include "SparcISelLowering.h"
//TODO:#include "SparcFrameLowering.h"
//TODO:#include "SparcSelectionDAGInfo.h"
//TODO:#include "SparcSubtarget.h"
#include "llvm/Target/TargetMachine.h"
#include "llvm/Target/TargetData.h"
#include "llvm/Target/TargetFrameLowering.h"

namespace llvm {

class DalvikTargetMachine : public LLVMTargetMachine {
//TODO:  SparcSubtarget Subtarget;
  const TargetData DataLayout;       // Calculates type size & alignment
//TODO:  SparcInstrInfo InstrInfo;
//TODO:  SparcTargetLowering TLInfo;
//TODO:  SparcSelectionDAGInfo TSInfo;
//TODO:  SparcFrameLowering FrameLowering;
public:
  DalvikTargetMachine(const Target &T, StringRef TT,
                     StringRef CPU, StringRef FS, const TargetOptions &Options,
                     Reloc::Model RM, CodeModel::Model CM,
                     CodeGenOpt::Level OL, bool is64bit);
//TODO: here
  virtual const SparcInstrInfo *getInstrInfo() const { return &InstrInfo; }
  virtual const TargetFrameLowering  *getFrameLowering() const {
    return &FrameLowering;
  }
  virtual const SparcSubtarget   *getSubtargetImpl() const{ return &Subtarget; }
  virtual const SparcRegisterInfo *getRegisterInfo() const {
    return &InstrInfo.getRegisterInfo();
  }
  virtual const SparcTargetLowering* getTargetLowering() const {
    return &TLInfo;
  }
  virtual const SparcSelectionDAGInfo* getSelectionDAGInfo() const {
    return &TSInfo;
  }
  virtual const TargetData       *getTargetData() const { return &DataLayout; }

  // Pass Pipeline Configuration
  virtual TargetPassConfig *createPassConfig(PassManagerBase &PM);
};

/// SparcV8TargetMachine - Sparc 32-bit target machine
///
class SparcV8TargetMachine : public SparcTargetMachine {
  virtual void anchor();
public:
  SparcV8TargetMachine(const Target &T, StringRef TT,
                       StringRef CPU, StringRef FS,
                       const TargetOptions &Options,
                       Reloc::Model RM, CodeModel::Model CM,
                       CodeGenOpt::Level OL);
};

/// SparcV9TargetMachine - Sparc 64-bit target machine
///
class SparcV9TargetMachine : public SparcTargetMachine {
  virtual void anchor();
public:
  SparcV9TargetMachine(const Target &T, StringRef TT,
                       StringRef CPU, StringRef FS,
                       const TargetOptions &Options,
                       Reloc::Model RM, CodeModel::Model CM,
                       CodeGenOpt::Level OL);
};

} // end namespace llvm

#endif
