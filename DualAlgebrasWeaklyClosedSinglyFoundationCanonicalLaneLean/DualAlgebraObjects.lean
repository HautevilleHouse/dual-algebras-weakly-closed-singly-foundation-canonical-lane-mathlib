import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure DualAlgebraSpace where
  carrier : Type
  algebraStructure : Type
  involution : carrier → carrier
  closedUnderWeakTopology : Prop
  closedUnderMultiplication : Prop

structure SinglyGeneratedObject where
  algebra : DualAlgebraSpace
  generator : algebra.carrier
  generationClosure : Prop
  cyclic : Prop

structure AdmittedDualAlgebraObject where
  space : DualAlgebraSpace
  singlyGenerated : SinglyGeneratedObject
  weaklyClosed : Prop
  conclusion : singlyGenerated.generationClosure ∧ weaklyClosed

structure DualAlgebraEndgameState where
  object : AdmittedDualAlgebraObject

def DualAlgebraWitnessClosed (O : AdmittedDualAlgebraObject) : Prop :=
  O.weaklyClosed

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse
