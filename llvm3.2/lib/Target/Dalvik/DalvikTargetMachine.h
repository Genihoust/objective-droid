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

#ifndef DALVIKTARGETMACHINE_H
#define DALVIKTARGETMACHINE_H

//TODO:#include "SparcInstrInfo.h"
//TODO:#include "SparcISelLowering.h"
//TODO:#include "SparcFrameLowering.h"
//TODO:#include "SparcSelectionDAGInfo.h"
//TODO: maybe remove #include "SparcSubtarget.h"
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

//TODO:  virtual const SparcInstrInfo *getInstrInfo() const { return &InstrInfo; }
  virtual const TargetFrameLowering  *getFrameLowering() const {
    return &FrameLowering;
  }
//TODO:  virtual const SparcSubtarget   *getSubtargetImpl() const{ return &Subtarget; }
//TODO:  virtual const SparcRegisterInfo *getRegisterInfo() const {
//TODO:    return &InstrInfo.getRegisterInfo();
//TODO:  }
//TODO:  virtual const SparcTargetLowering* getTargetLowering() const {
//TODO:    return &TLInfo;
//TODO:  }
//TODO:  virtual const SparcSelectionDAGInfo* getSelectionDAGInfo() const {
//TODO:    return &TSInfo;
//TODO:  }
  virtual const TargetData       *getTargetData() const { return &DataLayout; }

  // Pass Pipeline Configuration
  virtual TargetPassConfig *createPassConfig(PassManagerBase &PM);
};

} // end namespace llvm

#endif
