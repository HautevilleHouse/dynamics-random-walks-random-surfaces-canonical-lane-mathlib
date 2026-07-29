import canonicalLaneMathlib.AdmissibleClass
import DynamicsRandomWalksRandomSurfacesCanonicalLaneLean.BridgeLemmas

/-!
# Gate Lemmas for Random Walks on Random Surfaces

This module defines the gate closure condition for the admissible class.
-/

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse