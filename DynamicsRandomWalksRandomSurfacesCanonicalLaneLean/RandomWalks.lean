import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure RandomWalkLaplacianPackage where
  walkerType : Type u
  stateSpace : Type v
  transitionKernel : stateSpace → stateSpace → ℝ
  stationaryDistribution : stateSpace → ℝ
  spectralGap : ℝ
  mixingTime : ℕ

structure RandomWalkLaplacianEvidence (R : RandomWalkLaplacianPackage) where
  transitionProbabilityClosed : ∀ x y : R.stateSpace, R.transitionKernel x y ≥ 0
  stochasticClosed : ∀ x : R.stateSpace, ∑ y, R.transitionKernel x y = 1
  stationaryClosed : ∀ y : R.stateSpace, ∑ x, R.stationaryDistribution x * R.transitionKernel x y = R.stationaryDistribution y
  spectralGapPositiveClosed : R.spectralGap > 0

def RandomWalkLaplacianClosed (R : RandomWalkLaplacianPackage) : Prop :=
  R.transitionKernel ≥ 0 ∧ R.stationaryDistribution ≥ 0 ∧ R.spectralGap > 0

theorem random_walk_laplacian_closed_from_evidence (R : RandomWalkLaplacianPackage) (E : RandomWalkLaplacianEvidence R) : RandomWalkLaplacianClosed R := by
  exact And.intro E.transitionProbabilityClosed (And.intro E.stationaryClosed E.spectralGapPositiveClosed)

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse