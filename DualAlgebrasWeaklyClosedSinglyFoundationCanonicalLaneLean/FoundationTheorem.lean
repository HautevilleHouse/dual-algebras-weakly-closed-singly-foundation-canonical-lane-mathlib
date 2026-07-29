import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean.SinglyGeneratedStructure

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure FoundationTheoremPackage {A : DualAlgebraPackage}
    {W : WeaklyClosedSubalgebraPackage A}
    (S : SinglyGeneratedStructurePackage W) where
  representationExists : Prop
  representationIsIrreducible : Prop
  representationIsUnique : Prop
  densityResult : Prop

structure FoundationTheoremEvidence {A : DualAlgebraPackage}
    {W : WeaklyClosedSubalgebraPackage A}
    {S : SinglyGeneratedStructurePackage W}
    (F : FoundationTheoremPackage S) where
  representationExistsClosed : F.representationExists
  representationIsIrreducibleClosed : F.representationIsIrreducible
  representationIsUniqueClosed : F.representationIsUnique
  densityResultClosed : F.densityResult

def FoundationTheoremClosed {A : DualAlgebraPackage}
    {W : WeaklyClosedSubalgebraPackage A}
    {S : SinglyGeneratedStructurePackage W}
    (F : FoundationTheoremPackage S) : Prop :=
  F.representationExists ∧ F.representationIsIrreducible ∧
  F.representationIsUnique ∧ F.densityResult

theorem foundation_theorem_closed_from_evidence
    {A : DualAlgebraPackage} {W : WeaklyClosedSubalgebraPackage A}
    {S : SinglyGeneratedStructurePackage W}
    (F : FoundationTheoremPackage S)
    (E : FoundationTheoremEvidence F) : FoundationTheoremClosed F := by
  exact And.intro E.representationExistsClosed
    (And.intro E.representationIsIrreducibleClosed
      (And.intro E.representationIsUniqueClosed E.densityResultClosed))

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse
