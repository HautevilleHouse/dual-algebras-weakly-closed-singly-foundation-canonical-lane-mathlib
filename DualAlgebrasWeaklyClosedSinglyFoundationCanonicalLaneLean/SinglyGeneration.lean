import DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean.WeakClosureProperties

/-!
# Singly Generation Package
-/

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure SinglyGenerationPackage {D : DualAlgebraPackage}
    {W : WeakClosurePropertiesPackage D} where
  singlyGenerated : Prop
  generator : D.carrier
  weakClosureOfGenerator : Prop
  unitInWeakClosure : Prop

structure SinglyGenerationEvidence {D : DualAlgebraPackage}
    {W : WeakClosurePropertiesPackage D} (S : SinglyGenerationPackage W) where
  singlyGeneratedClosed : S.singlyGenerated
  weakClosureOfGeneratorClosed : S.weakClosureOfGenerator
  unitInWeakClosureClosed : S.unitInWeakClosure

def SinglyGenerationClosed {D : DualAlgebraPackage}
    {W : WeakClosurePropertiesPackage D} (S : SinglyGenerationPackage W) : Prop :=
  S.singlyGenerated ∧ S.weakClosureOfGenerator ∧ S.unitInWeakClosure

theorem singly_generation_closed_from_evidence
    {D : DualAlgebraPackage} {W : WeakClosurePropertiesPackage D}
    (S : SinglyGenerationPackage W) (E : SinglyGenerationEvidence S) :
    SinglyGenerationClosed S := by
  exact And.intro E.singlyGeneratedClosed
    (And.intro E.weakClosureOfGeneratorClosed E.unitInWeakClosureClosed)

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse
