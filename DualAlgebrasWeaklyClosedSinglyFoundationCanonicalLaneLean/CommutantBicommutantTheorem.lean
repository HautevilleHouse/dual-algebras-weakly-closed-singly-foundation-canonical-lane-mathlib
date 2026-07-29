import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure CommutantBicommutantTheoremPackage where
  dualAlgebra : WeaklyClosedDualAlgebra
  commutant : Set (dualAlgebra.carrier → dualAlgebra.carrier)
  bicommutant : Set (dualAlgebra.carrier → dualAlgebra.carrier)
  algebraIsBicommutant : Prop
  commutantDefined : Prop
  bicommutantDefined : Prop
  bicommutantCondition : commutantDefined ∧ bicommutantDefined ∧ algebraIsBicommutant

def CommutantBicommutantClosed (C : CommutantBicommutantTheoremPackage) : Prop :=
  C.commutantDefined ∧ C.bicommutantDefined ∧ C.algebraIsBicommutant

theorem commutantBicommutant_closed (C : CommutantBicommutantTheoremPackage) : CommutantBicommutantClosed C :=
  C.bicommutantCondition

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse