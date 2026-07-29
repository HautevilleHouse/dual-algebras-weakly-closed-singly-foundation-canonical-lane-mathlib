import DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean.MathlibObjects

/-!
# Dual Algebra Basics Package
-/

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure DualAlgebraPackage where
  carrier : Type u
  algebraMul : Type v
  algebraAdd : Type w
  dualPairing : Type x
  weakTopology : TopologicalSpace carrier
  dualCarrier : Type y
  weakStarTopology : TopologicalSpace dualCarrier
  isDualAlgebra : Prop
  pairingNondegenerate : Prop
  weakClosedUnitBall : Prop

structure DualAlgebraEvidence (D : DualAlgebraPackage) where
  isDualAlgebraClosed : D.isDualAlgebra
  pairingNondegenerateClosed : D.pairingNondegenerate
  weakClosedUnitBallClosed : D.weakClosedUnitBall

def DualAlgebraClosed (D : DualAlgebraPackage) : Prop :=
  D.isDualAlgebra ∧ D.pairingNondegenerate ∧ D.weakClosedUnitBall

theorem dual_algebra_closed_from_evidence (D : DualAlgebraPackage) (E : DualAlgebraEvidence D) :
    DualAlgebraClosed D := by
  exact And.intro E.isDualAlgebraClosed (And.intro E.pairingNondegenerateClosed E.weakClosedUnitBallClosed)

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse
