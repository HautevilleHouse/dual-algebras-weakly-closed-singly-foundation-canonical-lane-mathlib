import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean.WeaklyClosedSublagebra

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure SinglyGeneratedStructurePackage {A : DualAlgebraPackage}
    (W : WeaklyClosedSubalgebraPackage A) where
  generator : A.carrier
  generationProperty : Prop
  minimality : Prop

structure SinglyGeneratedStructureEvidence {A : DualAlgebraPackage}
    {W : WeaklyClosedSubalgebraPackage A}
    (S : SinglyGeneratedStructurePackage W) where
  generationPropertyClosed : S.generationProperty
  minimalityClosed : S.minimality

def SinglyGeneratedStructureClosed {A : DualAlgebraPackage}
    {W : WeaklyClosedSubalgebraPackage A}
    (S : SinglyGeneratedStructurePackage W) : Prop :=
  S.generationProperty ∧ S.minimality

theorem singly_generated_structure_closed_from_evidence
    {A : DualAlgebraPackage} {W : WeaklyClosedSubalgebraPackage A}
    (S : SinglyGeneratedStructurePackage W)
    (E : SinglyGeneratedStructureEvidence S) : SinglyGeneratedStructureClosed S := by
  exact And.intro E.generationPropertyClosed E.minimalityClosed

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse
