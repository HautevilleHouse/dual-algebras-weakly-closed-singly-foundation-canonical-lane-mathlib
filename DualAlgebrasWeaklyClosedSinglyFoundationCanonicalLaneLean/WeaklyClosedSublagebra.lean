import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean.DualAlgebraPackage

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure WeaklyClosedSubalgebraPackage (A : DualAlgebraPackage) where
  subalgebra : Set A.carrier
  subalgebraClosedUnderMultiplication : Prop
  subalgebraClosedUnderInvolution : Prop
  subalgebraContainsUnit : Prop
  weakClosureProperty : Prop

structure WeaklyClosedSubalgebraEvidence {A : DualAlgebraPackage}
    (W : WeaklyClosedSubalgebraPackage A) where
  subalgebraClosedUnderMultiplicationClosed : W.subalgebraClosedUnderMultiplication
  subalgebraClosedUnderInvolutionClosed : W.subalgebraClosedUnderInvolution
  subalgebraContainsUnitClosed : W.subalgebraContainsUnit
  weakClosurePropertyClosed : W.weakClosureProperty

def WeaklyClosedSubalgebraClosed {A : DualAlgebraPackage}
    (W : WeaklyClosedSubalgebraPackage A) : Prop :=
  W.subalgebraClosedUnderMultiplication ∧
  W.subalgebraClosedUnderInvolution ∧
  W.subalgebraContainsUnit ∧
  W.weakClosureProperty

theorem weakly_closed_subalgebra_closed_from_evidence
    {A : DualAlgebraPackage} (W : WeaklyClosedSubalgebraPackage A)
    (E : WeaklyClosedSubalgebraEvidence W) : WeaklyClosedSubalgebraClosed W := by
  exact And.intro E.subalgebraClosedUnderMultiplicationClosed
    (And.intro E.subalgebraClosedUnderInvolutionClosed
      (And.intro E.subalgebraContainsUnitClosed E.weakClosurePropertyClosed))

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse
