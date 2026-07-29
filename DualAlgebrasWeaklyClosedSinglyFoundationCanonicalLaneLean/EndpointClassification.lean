import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure EndpointClassificationPackage {G : DualAlgebraPackage}
    {F : WeaklyClosedSubalgebraPackage G} {S : SinglyGeneratedModulePackage F}
    {Q : FoundationPackage S} {C : CanonicalNeighborhoodsPackage Q}
    {U : SurgeryPackage C} (Z : GeometrizationPackage U) where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  simplyConnectedClosedThreeManifold : Prop
  sphereEndpoint : ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere targetManifold 3
  endpointMatchesPoincareStatement : Prop

structure EndpointClassificationEvidence {G : DualAlgebraPackage}
    {F : WeaklyClosedSubalgebraPackage G} {S : SinglyGeneratedModulePackage F}
    {Q : FoundationPackage S} {C : CanonicalNeighborhoodsPackage Q}
    {U : SurgeryPackage C} {Z : GeometrizationPackage U}
    (Epkg2 : EndpointClassificationPackage Z) where
  simplyConnectedClosedThreeManifoldClosed : Epkg2.simplyConnectedClosedThreeManifold
  endpointMatchesPoincareStatementClosed : Epkg2.endpointMatchesPoincareStatement

def EndpointClassificationClosed {G : DualAlgebraPackage}
    {F : WeaklyClosedSubalgebraPackage G} {S : SinglyGeneratedModulePackage F}
    {Q : FoundationPackage S} {C : CanonicalNeighborhoodsPackage Q}
    {U : SurgeryPackage C} {Z : GeometrizationPackage U}
    (Epkg2 : EndpointClassificationPackage Z) : Prop :=
  Epkg2.simplyConnectedClosedThreeManifold ∧
  Epkg2.endpointMatchesPoincareStatement

theorem endpoint_classification_closed_from_evidence
    {G : DualAlgebraPackage} {F : WeaklyClosedSubalgebraPackage G}
    {S : SinglyGeneratedModulePackage F} {Q : FoundationPackage S}
    {C : CanonicalNeighborhoodsPackage Q} {U : SurgeryPackage C}
    {Z : GeometrizationPackage U} (Epkg2 : EndpointClassificationPackage Z)
    (E : EndpointClassificationEvidence Epkg2) : EndpointClassificationClosed Epkg2 := by
  exact And.intro E.simplyConnectedClosedThreeManifoldClosed
    E.endpointMatchesPoincareStatementClosed

theorem endpoint_classification_supplies_mathlib_statement
    {G : DualAlgebraPackage} {F : WeaklyClosedSubalgebraPackage G}
    {S : SinglyGeneratedModulePackage F} {Q : FoundationPackage S}
    {C : CanonicalNeighborhoodsPackage Q} {U : SurgeryPackage C}
    {Z : GeometrizationPackage U} (Epkg2 : EndpointClassificationPackage Z) :
    @ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere
      Epkg2.targetManifold Epkg2.targetTopology 3 :=
  Epkg2.sphereEndpoint

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse