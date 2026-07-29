import DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean.SinglyGeneration

/-!
# Foundation Structure Package
-/

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure FoundationStructurePackage {D : DualAlgebraPackage}
    {W : WeakClosurePropertiesPackage D} {S : SinglyGenerationPackage W} where
  dualBanachAlgebra : Prop
  predualIdentified : Prop
  weakStarClosed : Prop
  masaInDual : Prop
  atomicDiagonal : Prop

structure FoundationStructureEvidence {D : DualAlgebraPackage}
    {W : WeakClosurePropertiesPackage D} {S : SinglyGenerationPackage W}
    (F : FoundationStructurePackage S) where
  dualBanachAlgebraClosed : F.dualBanachAlgebra
  predualIdentifiedClosed : F.predualIdentified
  weakStarClosedClosed : F.weakStarClosed
  masaInDualClosed : F.masaInDual
  atomicDiagonalClosed : F.atomicDiagonal

def FoundationStructureClosed {D : DualAlgebraPackage}
    {W : WeakClosurePropertiesPackage D} {S : SinglyGenerationPackage W}
    (F : FoundationStructurePackage S) : Prop :=
  F.dualBanachAlgebra ∧ F.predualIdentified ∧
  F.weakStarClosed ∧ F.masaInDual ∧ F.atomicDiagonal

theorem foundation_structure_closed_from_evidence
    {D : DualAlgebraPackage} {W : WeakClosurePropertiesPackage D}
    {S : SinglyGenerationPackage W} (F : FoundationStructurePackage S)
    (E : FoundationStructureEvidence F) : FoundationStructureClosed F := by
  exact And.intro E.dualBanachAlgebraClosed
    (And.intro E.predualIdentifiedClosed
      (And.intro E.weakStarClosedClosed
        (And.intro E.masaInDualClosed E.atomicDiagonalClosed)))

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse
