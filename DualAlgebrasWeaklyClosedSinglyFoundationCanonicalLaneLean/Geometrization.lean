import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure GeometrizationPackage {G : DualAlgebraPackage}
    {F : WeaklyClosedSubalgebraPackage G} {S : SinglyGeneratedModulePackage F}
    {Q : FoundationPackage S} {C : CanonicalNeighborhoodsPackage Q}
    (U : SurgeryPackage C) where
  finiteExtinctionAlternative : Prop
  thickThinDecomposition : Prop
  geometrizedPiecesClassified : Prop
  simplyConnectedCaseForcesSpherePiece : Prop

structure GeometrizationEvidence {G : DualAlgebraPackage}
    {F : WeaklyClosedSubalgebraPackage G} {S : SinglyGeneratedModulePackage F}
    {Q : FoundationPackage S} {C : CanonicalNeighborhoodsPackage Q}
    {U : SurgeryPackage C} (Z : GeometrizationPackage U) where
  finiteExtinctionAlternativeClosed : Z.finiteExtinctionAlternative
  thickThinDecompositionClosed : Z.thickThinDecomposition
  geometrizedPiecesClassifiedClosed : Z.geometrizedPiecesClassified
  simplyConnectedCaseForcesSpherePieceClosed : Z.simplyConnectedCaseForcesSpherePiece

def GeometrizationClosed {G : DualAlgebraPackage}
    {F : WeaklyClosedSubalgebraPackage G} {S : SinglyGeneratedModulePackage F}
    {Q : FoundationPackage S} {C : CanonicalNeighborhoodsPackage Q}
    {U : SurgeryPackage C} (Z : GeometrizationPackage U) : Prop :=
  Z.finiteExtinctionAlternative ∧ Z.thickThinDecomposition ∧
  Z.geometrizedPiecesClassified ∧ Z.simplyConnectedCaseForcesSpherePiece

theorem geometrization_closed_from_evidence
    {G : DualAlgebraPackage} {F : WeaklyClosedSubalgebraPackage G}
    {S : SinglyGeneratedModulePackage F} {Q : FoundationPackage S}
    {C : CanonicalNeighborhoodsPackage Q} {U : SurgeryPackage C}
    (Z : GeometrizationPackage U) (E : GeometrizationEvidence Z) :
    GeometrizationClosed Z := by
  exact And.intro E.finiteExtinctionAlternativeClosed
    (And.intro E.thickThinDecompositionClosed
      (And.intro E.geometrizedPiecesClassifiedClosed
        E.simplyConnectedCaseForcesSpherePieceClosed))

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse