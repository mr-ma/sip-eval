#include "FunctionCombination.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/Error.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include <fstream>
#include <cxxabi.h>
#include <math.h> 
#include <time.h>
#include <algorithm>
using namespace llvm;


static cl::opt<std::string> OutPath(
		"out-path", cl::Hidden,
		cl::desc("Path to output combinations"));
static cl::opt<int> Coverage(
		"coverage", cl::Hidden,
		cl::desc("Coverage of the combinations (to generate), simply put k"));
static cl::opt<int> Combinations(
		"combinations", cl::Hidden,
		cl::desc("Total combinations (to generate randomly)"));


//FunctionCombinationPass
void FunctionCombinationPass::getAnalysisUsage(llvm::AnalysisUsage &AU) const {
	AU.setPreservesAll();
}
std::vector<std::vector<std::string>> generateRandomCombinations(int totalNumber,int countCombinations, int k, std::vector<std::string> allFunctions){

	srand(time(NULL));
	std::vector<std::vector<std::string>> allCombinations;
	if(k==totalNumber){
		std::vector<std::string> combination;
		for(int i=0;i<totalNumber;++i){
			combination.push_back(allFunctions[i]);
		}
		allCombinations.push_back(combination);
	} else {
		for(int i=0;i<countCombinations;++i){
			std::vector<std::string> combination;
			std::map<int, int> duplicate_map;
			for (int comb=0;comb<k;++comb){
				int random_index=0;
				do{
					random_index = rand()%totalNumber;
				}
				while(duplicate_map.find(random_index)!=duplicate_map.end());
				duplicate_map[random_index]=1;
				combination.push_back(allFunctions[random_index]);
			}
			allCombinations.push_back(combination);
		}
	}
	return allCombinations;
}
void dumpCombinations(std::vector<std::vector<std::string>> combinations){
	for(int i=0;i<combinations.size();++i){
		char *fileName=(char*)calloc(50,sizeof(char));
		strcat(fileName, OutPath.c_str());
		strcat(fileName, std::to_string(i).c_str());
		FILE *f=fopen(fileName,"w");
		for(int j=0;j<combinations[i].size();++j){
			fprintf(f,"%s\n",combinations[i][j].c_str());
		}
		fclose(f);
		free(fileName);
	}
}
char FunctionCombinationPass::ID = 0;
bool FunctionCombinationPass::runOnModule(llvm::Module &M) {
	dbgs()<<"In  combination function pass "<<"\n";
	dbgs()<<"Coverage:"<<Coverage<<" NumberOfCombinations:"
		<<Combinations<<" Outpath:"<<OutPath<<"\n";
	if(Coverage<=0 || Coverage>100){
		errs()<<"Coverage has to be an integer between 1 and 100\n";
		exit(1);
	}
	std::vector<std::string> allFunctions;
	for(auto &F:M){
		if (F.isDeclaration() || F.size() == 0){
			continue;
		}
		allFunctions.push_back(F.getName());
	}
	float coverage_number = Coverage/100.0 * allFunctions.size(); 
	int k = round(coverage_number);
	if (k>allFunctions.size()) k=allFunctions.size();
	dbgs()<<"all functions:"<<allFunctions.size()<<"coverage:"<<coverage_number<<" equavalent to:"<<k<<" functions\n";
	//Make sure that we can generate the combination
	if(k>allFunctions.size()) {
		errs()<<"k cannot be greater than all functions";
		exit(1);
	}
	dumpCombinations(generateRandomCombinations(allFunctions.size(),Combinations,k,allFunctions));
	return false;
}
static llvm::RegisterPass<FunctionCombinationPass>
X("combinator-func", "Generate combinations for functions in a given file");
