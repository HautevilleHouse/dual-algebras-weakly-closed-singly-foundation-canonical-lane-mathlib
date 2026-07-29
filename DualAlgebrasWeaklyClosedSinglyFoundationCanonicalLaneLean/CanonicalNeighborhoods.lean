import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure CanonicalNeighborhoodsPackage {G : DualAlgebraPackage}
    {F : WeaklyClosedSubalgebraPackage G} {S : SinglyGeneratedModulePackage F}
    (Q : FoundationPackage S) where
  highCurvatureRegionCovered : Prop
  neckCapDecomposition : Prop
  scaleCompatibility : Prop
  persistenceUnderFlow : Prop

structure CanonicalNeighborhoodsEvidence {G : DualAlgebraPackage}
    {F : WeaklyClosedSubalgebraPackage G} {S : SinglyGeneratedModulePackage F}
    {Q : FoundationPackage S} (C : CanonicalNeighborhoodsPackage Q) where
  highCurvatureRegionCoveredClosed : C.highCurvatureRegionCovered
  neckCapDecompositionClosed : C.neckCapDecomposition
  scaleCompatibilityClosed : C.scaleCompatibility
  persistenceUnderFlowClosed : C.persistenceUnderFlow

def CanonicalNeighborhoodsClosed {G : DualAlgebraPackage}
    {F : WeaklyClosedSubalgebraPackage G} {S : SinglyGeneratedModulePackage F}
    {Q : FoundationPackage S} (C : CanonicalNeighborhoodsPackage Q) : Prop :=
  C.highCurvatureRegionCovered ∧ C.neckCapDecomposition ∧
  C.scaleCompatibility ∧ C.persistenceUnderFlow

theorem canonical_neighborhoods_closed_from_evidence
    {G : DualAlgebraPackage} {F : WeaklyClosedSubalgebraPackage G}
    {S : SinglyGeneratedModulePackage F} {Q : FoundationPackage S}
    (C : CanonicalNeighborhoodsPackage Q) (E : CanonicalNeighborhoodsEvidence C) :
    CanonicalNeighborhoodsClosed C := by
  exact And.intro E.highCurvatureRegionCoveredClosed
    (And.intro E.neckCapDecompositionClosed
      (And.intro E.scaleCompatibilityClosed E.persistenceUnderFlowClosed))

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse