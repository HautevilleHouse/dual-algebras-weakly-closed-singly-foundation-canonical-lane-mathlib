import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure WeaklyClosedDualAlgebra where
  carrier : Type u
  algebra_structure : Type v
  multiplication : carrier → carrier → carrier
  involution : carrier → carrier
  weakClosure : Set (carrier → ℂ) → Prop
  singlyGenerated : Prop
  containsIdentity : Prop
  weakClosureClosedUnderAlgebraOps : Prop
  weakClosureContainsGenerators : Prop
  algebra_structure_defined : weakClosureClosedUnderAlgebraOps ∧ weakClosureContainsGenerators

def WeaklyClosedDualAlgebraClosed (A : WeaklyClosedDualAlgebra) : Prop :=
  A.weakClosureClosedUnderAlgebraOps ∧ A.weakClosureContainsGenerators ∧ A.singlyGenerated

theorem weaklyClosedDualAlgebra_closed (A : WeaklyClosedDualAlgebra) (h : A.algebra_structure_defined) : WeaklyClosedDualAlgebraClosed A :=
  ⟨h.1, h.2, A.singlyGenerated⟩

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse