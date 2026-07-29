import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure RandomWalkSurface where
  carrier : Type u
  topology : TopologicalSpace carrier
  randomWalkTransition : Type v
  stationaryMeasure : Type w
  reversibility : Prop
  lawOfLargeNumbers : Prop
  centralLimitTheorem : Prop

structure RandomWalkSurfaceEvidence (S : RandomWalkSurface) where
  lawOfLargeNumbersClosed : S.lawOfLargeNumbers
  centralLimitTheoremClosed : S.centralLimitTheorem

def RandomWalkSurfaceClosed (S : RandomWalkSurface) : Prop :=
  S.lawOfLargeNumbers ∧ S.centralLimitTheorem

theorem random_walk_surface_closed_from_evidence
    (S : RandomWalkSurface) (E : RandomWalkSurfaceEvidence S) :
    RandomWalkSurfaceClosed S := by
  exact And.intro E.lawOfLargeNumbersClosed E.centralLimitTheoremClosed

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse