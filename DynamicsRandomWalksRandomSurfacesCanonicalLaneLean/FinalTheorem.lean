import canonicalLaneMathlib.AdmissibleClass
import DynamicsRandomWalksRandomSurfacesCanonicalLaneLean.BridgeLemmas
import DynamicsRandomWalksRandomSurfacesCanonicalLaneLean.GateLemmas

/-!
# Final Theorem: Dynamics Random Walks Random Surfaces Closure

This module defines the constrained closure for the dynamics of random walks on
random surfaces and proves the endgame theorem. Following the HautevilleHouse
style, the closure is named after the theorem domain.
-/

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

def ConstrainedRandomWalkClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_random_walk_endgame (A : AdmissibleClass) :
    ConstrainedRandomWalkClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse