import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure DualAlgebra where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  involution : carrier → carrier
  zero : carrier
  one : carrier
  star : carrier → carrier
  norm : carrier → ℝ
  isBanach : Prop
  isCstar : Prop
  additionAssoc : ∀ a b c : carrier, addition (addition a b) c = addition a (addition b c)
  additionComm : ∀ a b : carrier, addition a b = addition b a
  zeroAdd : ∀ a : carrier, addition zero a = a
  addZero : ∀ a : carrier, addition a zero = a
  mulAssoc : ∀ a b c : carrier, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  oneMul : ∀ a : carrier, multiplication one a = a
  mulOne : ∀ a : carrier, multiplication a one = a
  distribLeft : ∀ a b c : carrier, multiplication a (addition b c) = addition (multiplication a b) (multiplication a c)
  distribRight : ∀ a b c : carrier, multiplication (addition a b) c = addition (multiplication a c) (multiplication b c)
  involution_involution : ∀ a : carrier, involution (involution a) = a
  involution_add : ∀ a b : carrier, involution (addition a b) = addition (involution a) (involution b)
  involution_mul : ∀ a b : carrier, involution (multiplication a b) = multiplication (involution b) (involution a)
  star_property : ∀ a : carrier, star a = involution a
  norm_nonneg : ∀ a : carrier, 0 ≤ norm a
  norm_zero : norm zero = 0
  norm_mul : ∀ a b : carrier, norm (multiplication a b) ≤ norm a * norm b
  norm_triangle : ∀ a b : carrier, norm (addition a b) ≤ norm a + norm b
  norm_star : ∀ a : carrier, norm (star a) = norm a
  cstar_identity : ∀ a : carrier, norm (multiplication (star a) a) = norm a * norm a

structure DualAlgebraPackage where
  dualAlgebra : DualAlgebra
  weakClosed : Prop
  singlyGenerated : Prop

structure DualAlgebraEvidence (P : DualAlgebraPackage) where
  weakClosedClosed : P.weakClosed
  singlyGeneratedClosed : P.singlyGenerated

def DualAlgebraClosed (P : DualAlgebraPackage) : Prop :=
  P.weakClosed ∧ P.singlyGenerated

theorem dual_algebra_closed_from_evidence (P : DualAlgebraPackage) (E : DualAlgebraEvidence P) :
  DualAlgebraClosed P := by
  exact And.intro E.weakClosedClosed E.singlyGeneratedClosed

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse