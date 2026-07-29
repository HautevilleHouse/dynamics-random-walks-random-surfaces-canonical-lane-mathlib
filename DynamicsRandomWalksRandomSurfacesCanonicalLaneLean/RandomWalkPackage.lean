import canonicalLaneMathlib.AdmissibleClass

/-!
# Random Walk Package for Dynamics Random Walks Random Surfaces

This module defines the foundational package for random walk dynamics on random
surfaces. It includes the random walk environment, step distributions, a random
metric structure on the surface, and the coupling between the walk and the
surface.
-/

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure RandomWalkEnvironment (Ω : Type u) where
  stateSpace : Type v
  transition : stateSpace → Ω → stateSpace → Prop
  initialDistribution : stateSpace → Prop
  markovProperty : Prop
  initialDistributionDefined : initialDistribution
  markovPropertyHolds : markovProperty

structure RandomStepDistribution (W : RandomWalkEnvironment Ω) where
  stepKernel : W.stateSpace → W.stateSpace → Prop
  finiteVariance : Prop
  symmetric : Prop
  finiteVarianceHolds : finiteVariance
  symmetricHolds : symmetric

structure RandomSurfaceMetric (σ : Type w) where
  metric : σ → σ → ℝ
  nonnegative : ∀ x y, metric x y ≥ 0
  symmetric : ∀ x y, metric x y = metric y x
  triangle : ∀ x y z, metric x z ≤ metric x y + metric y z
  nonnegativeHolds : nonnegative
  symmetricHolds : symmetric
  triangleHolds : triangle

structure WalkSurfaceCoupling {Ω : Type u} {σ : Type w}
    (W : RandomWalkEnvironment Ω) (M : RandomSurfaceMetric σ) where
  law : (Ω → Ω) → Prop
  stationaryMeasure : σ → Prop
  detailedBalance : Prop
  stationaryMeasureDefined : stationaryMeasure
  detailedBalanceHolds : detailedBalance

def RandomWalkPackage (Ω : Type u) (σ : Type w) : Type := { EP : RandomWalkEnvironment Ω &
  { RSD : RandomStepDistribution (EP.1) &
  { RSM : RandomSurfaceMetric σ &
  { WSC : WalkSurfaceCoupling (EP.1) RSM &
  True } } }

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse