import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure SinglyGeneratedSpectralTheoremPackage where
  dualAlgebra : WeaklyClosedDualAlgebra
  generator : dualAlgebra.carrier
  spectralMeasure : Type u
  functionalCalculus : Type v
  spectralMeasureExists : Prop
  functionalCalculusDefined : Prop
  spectralTheoremClosed : spectralMeasureExists ∧ functionalCalculusDefined

def SinglyGeneratedSpectralTheoremClosed (S : SinglyGeneratedSpectralTheoremPackage) : Prop :=
  S.spectralMeasureExists ∧ S.functionalCalculusDefined

theorem singlyGeneratedSpectralTheorem_closed (S : SinglyGeneratedSpectralTheoremPackage) : SinglyGeneratedSpectralTheoremClosed S :=
  S.spectralTheoremClosed

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse