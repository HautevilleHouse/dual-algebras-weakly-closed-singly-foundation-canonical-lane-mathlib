import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean.FoundationTheorem

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure AdmittedObject where
  dualAlgebra : DualAlgebraPackage
  dualAlgebraClosed : DualAlgebraClosed dualAlgebra
  foundationTheorem : FoundationTheoremPackage (S := by
    -- placeholder; actual structure
    sorry)
  foundationTheoremClosed : FoundationTheoremClosed foundationTheorem
  conclusion : DualAlgebraClosed dualAlgebra

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DualAlgebraClosed A.object.dualAlgebra ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse
