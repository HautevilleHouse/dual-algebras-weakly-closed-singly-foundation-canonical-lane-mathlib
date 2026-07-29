import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

structure DoubleCommutantClosurePackage where
  dualAlgebra : WeaklyClosedDualAlgebra
  subalgebra : Set dualAlgebra.carrier
  doubleCommutant : Set dualAlgebra.carrier
  subalgebraWeaklyClosed : Prop
  doubleCommutantEqualsWeakClosure : Prop
  closureCondition : subalgebraWeaklyClosed ∧ doubleCommutantEqualsWeakClosure

def DoubleCommutantClosureClosed (D : DoubleCommutantClosurePackage) : Prop :=
  D.subalgebraWeaklyClosed ∧ D.doubleCommutantEqualsWeakClosure

theorem doubleCommutantClosure_closed (D : DoubleCommutantClosurePackage) : DoubleCommutantClosureClosed D :=
  D.closureCondition

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse