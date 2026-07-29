import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  weaklyClosedSinglyFoundationStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "dual-algebras-weakly-closed-singly-foundation-canonical-lane",
    theoremName := "Dual Algebras Weakly Closed Singly Foundation Theorem",
    theoremObject := "Weakly closed singly generated dual algebra",
    classicalBoundary := "Unrestricted classical closure is carried.",
    weaklyClosedSinglyFoundationStatement := "The weakly closed singly generated dual algebra is admitted via the bridge and gate closure.",
    certificateLane := "dual_algebra_constrained",
    carriedRemainder := "Classical source boundary carried by formalization certificate."
  }

dual algebra admissible class weak closure single generation foundation closure
end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse