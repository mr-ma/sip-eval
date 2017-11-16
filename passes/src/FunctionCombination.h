#pragma once

#include "llvm/Pass.h"
#include <unordered_set>

namespace llvm {
class Function;
}


class FunctionCombinationPass : public llvm::ModulePass {
public:
  static char ID;
public:
  FunctionCombinationPass() : llvm::ModulePass(ID) {}

public:
  bool runOnModule(llvm::Module &M) override;
  virtual void getAnalysisUsage(llvm::AnalysisUsage &AU) const override;

}; 

