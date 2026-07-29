import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean.DualAlgebra

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure WeakClosureData where
  algebra : DualAlgebra
  net : Type u
  netDirected : Prop
  limitPoint : algebra.carrier
  netConvergesWeakly : Prop

structure WeakClosurePackage where
  weakClosureData : WeakClosureData
  closedUnderWeakLimits : Prop
  containsOriginalAlgebra : Prop

structure WeakClosureEvidence (P : WeakClosurePackage) where
  closedUnderWeakLimitsClosed : P.closedUnderWeakLimits
  containsOriginalAlgebraClosed : P.containsOriginalAlgebra

def WeakClosureClosed (P : WeakClosurePackage) : Prop :=
  P.closedUnderWeakLimits ∧ P.containsOriginalAlgebra

theorem weak_closure_closed_from_evidence (P : WeakClosurePackage) (E : WeakClosureEvidence P) :
  WeakClosureClosed P := by
  exact And.intro E.closedUnderWeakLimitsClosed E.containsOriginalAlgebraClosed

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse