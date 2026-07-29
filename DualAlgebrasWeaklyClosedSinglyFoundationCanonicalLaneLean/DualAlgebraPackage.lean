import HautevilleHouse.DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure DualAlgebraPackage where
  carrier : Type u
  multiplication : carrier → carrier → carrier
  involution : carrier → carrier
  unit : carrier
  innerProduct : carrier → carrier → ℝ
  norm : carrier → ℝ
  multiplicationAssociative : Prop
  involutionInvolutive : Prop
  unitMultiplicative : Prop
  innerProductCompatible : Prop

structure DualAlgebraEvidence (A : DualAlgebraPackage) where
  multiplicationAssociativeClosed : A.multiplicationAssociative
  involutionInvolutiveClosed : A.involutionInvolutive
  unitMultiplicativeClosed : A.unitMultiplicative
  innerProductCompatibleClosed : A.innerProductCompatible

def DualAlgebraClosed (A : DualAlgebraPackage) : Prop :=
  A.multiplicationAssociative ∧ A.involutionInvolutive ∧
  A.unitMultiplicative ∧ A.innerProductCompatible

theorem dual_algebra_closed_from_evidence (A : DualAlgebraPackage)
    (E : DualAlgebraEvidence A) : DualAlgebraClosed A := by
  exact And.intro E.multiplicationAssociativeClosed
    (And.intro E.involutionInvolutiveClosed
      (And.intro E.unitMultiplicativeClosed E.innerProductCompatibleClosed))

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse
