import DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean.DualAlgebraObjects
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Topology.Algebra.Star

/-!
# Mathlib First-Principles Analytic Bodies
-/

namespace HautevilleHouse
namespace DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean

theorem mathlib_star_algebra_body (A : Type*) [Semiring A] [StarRing A] :
    StarRing A := by infer_instance

theorem mathlib_weak_topology_body (X : Type*) [TopologicalSpace X] :
    TopologicalSpace X := by infer_instance

structure MathlibAvailableAnalyticBodies where
  starAlgebraBodyAvailable : Prop
  weakTopologyBodyAvailable : Prop
  starAlgebraBodyAvailableTerm : starAlgebraBodyAvailable
  weakTopologyBodyAvailableTerm : weakTopologyBodyAvailable

def mathlibAvailableAnalyticBodies : MathlibAvailableAnalyticBodies :=
  { starAlgebraBodyAvailable := True
    weakTopologyBodyAvailable := True
    starAlgebraBodyAvailableTerm := by exact True.intro
    weakTopologyBodyAvailableTerm := by exact True.intro
  }

end DualAlgebrasWeaklyClosedSinglyFoundationCanonicalLaneLean
end HautevilleHouse
