import canonicalLaneMathlib.AdmissibleClass
import DynamicsRandomWalksRandomSurfacesCanonicalLaneLean.RandomWalkPackage

/-!
# Bridge Lemmas for Random Walks on Random Surfaces

This module defines the bridge and gate closure concepts for the dynamics of
random walks on random surfaces, following the HautevilleHouse pattern.
-/

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RandomWalkEnvironment (A.object : Type) ∧ RandomSurfaceMetric (A.object : Type)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse