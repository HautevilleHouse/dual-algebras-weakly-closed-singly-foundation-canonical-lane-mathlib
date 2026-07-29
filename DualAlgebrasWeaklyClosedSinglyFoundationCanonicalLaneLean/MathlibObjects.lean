import DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DualAlgebraSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DualAlgebraAdmittedObject where
  space : DualAlgebraSpace
  dualAlgebra : Prop
  weaklyClosedSingly : Prop
  foundation : Prop
  conclusion : foundation

def DualAlgebraWitnessClosed (O : DualAlgebraAdmittedObject) : Prop :=
  O.foundation

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse
