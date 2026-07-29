import DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean.DualAlgebraBasics

/-!
# Weak Closure Properties Package
-/

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure WeakClosurePropertiesPackage {D : DualAlgebraPackage} where
  weaklyClosedSubalgebra : Prop
  weakOperatorTopology : Prop
  closureUnderMultiplication : Prop
  closureUnderAdjoint : Prop

structure WeakClosurePropertiesEvidence {D : DualAlgebraPackage}
    (W : WeakClosurePropertiesPackage D) where
  weaklyClosedSubalgebraClosed : W.weaklyClosedSubalgebra
  weakOperatorTopologyClosed : W.weakOperatorTopology
  closureUnderMultiplicationClosed : W.closureUnderMultiplication
  closureUnderAdjointClosed : W.closureUnderAdjoint

def WeakClosurePropertiesClosed {D : DualAlgebraPackage}
    (W : WeakClosurePropertiesPackage D) : Prop :=
  W.weaklyClosedSubalgebra ∧ W.weakOperatorTopology ∧
  W.closureUnderMultiplication ∧ W.closureUnderAdjoint

theorem weak_closure_properties_closed_from_evidence
    {D : DualAlgebraPackage} (W : WeakClosurePropertiesPackage D)
    (E : WeakClosurePropertiesEvidence W) : WeakClosurePropertiesClosed W := by
  exact And.intro E.weaklyClosedSubalgebraClosed
    (And.intro E.weakOperatorTopologyClosed
      (And.intro E.closureUnderMultiplicationClosed E.closureUnderAdjointClosed))

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse
