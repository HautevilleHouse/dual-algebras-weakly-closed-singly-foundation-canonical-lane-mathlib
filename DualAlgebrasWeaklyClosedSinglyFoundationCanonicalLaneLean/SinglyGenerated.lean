import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean.DualAlgebra

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure SinglyGeneratedData where
  algebra : DualAlgebra
  generator : algebra.carrier
  generatesWeakly : Prop
  weakClosureEqualsAlgebra : Prop

structure SinglyGeneratedPackage where
  singlyGeneratedData : SinglyGeneratedData
  generatorSelfAdjoint : Prop
  spectrumCompact : Prop

structure SinglyGeneratedEvidence (P : SinglyGeneratedPackage) where
  generatorSelfAdjointClosed : P.generatorSelfAdjoint
  spectrumCompactClosed : P.spectrumCompact

def SinglyGeneratedClosed (P : SinglyGeneratedPackage) : Prop :=
  P.generatorSelfAdjoint ∧ P.spectrumCompact

theorem singly_generated_closed_from_evidence (P : SinglyGeneratedPackage) (E : SinglyGeneratedEvidence P) :
  SinglyGeneratedClosed P := by
  exact And.intro E.generatorSelfAdjointClosed E.spectrumCompactClosed

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse