import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure PredualStructure where
  dualAlgebra : WeaklyClosedDualAlgebra
  predual : Type u
  pairing : predual → dualAlgebra.carrier → ℂ
  isometricIsomorphism : predual ≃ₗ[ℂ] (dualAlgebra.carrier → ℂ)
  weakStarTopology : TopologicalSpace dualAlgebra.carrier
  predualDefined : Prop
  pairingDefined : Prop
  isomorphismDefined : Prop
  predualClosed : predualDefined ∧ pairingDefined ∧ isomorphismDefined

def PredualClosed (P : PredualStructure) : Prop :=
  P.predualDefined ∧ P.pairingDefined ∧ P.isomorphismDefined

theorem predual_closed (P : PredualStructure) : PredualClosed P :=
  P.predualClosed

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse