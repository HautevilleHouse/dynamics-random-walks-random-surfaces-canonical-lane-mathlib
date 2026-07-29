import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure RandomWalkTransitionKernelPackage where
  stateSpace : Type u
  transitionProb : stateSpace → stateSpace → ℝ
  markovProperty : Prop
  stationaryDistribution : Prop
  reversibility : Prop
  spectralGap : Prop

structure RandomWalkTransitionKernelEvidence (K : RandomWalkTransitionKernelPackage) where
  markovPropertyClosed : K.markovProperty
  stationaryDistributionClosed : K.stationaryDistribution
  reversibilityClosed : K.reversibility
  spectralGapClosed : K.spectralGap

def RandomWalkTransitionKernelClosed (K : RandomWalkTransitionKernelPackage) : Prop :=
  K.markovProperty ∧ K.stationaryDistribution ∧ K.reversibility ∧ K.spectralGap

theorem random_walk_transition_kernel_closed_from_evidence
    (K : RandomWalkTransitionKernelPackage) (E : RandomWalkTransitionKernelEvidence K) :
    RandomWalkTransitionKernelClosed K := by
  exact And.intro E.markovPropertyClosed
    (And.intro E.stationaryDistributionClosed
      (And.intro E.reversibilityClosed E.spectralGapClosed))

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse