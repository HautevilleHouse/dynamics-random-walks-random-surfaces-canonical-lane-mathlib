import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure RandomWalkKernelPackage where
  stateSpace : Type u
  transitionKernel : stateSpace → stateSpace → Prop
  stationarity : Prop
  reversibility : Prop
  spectralGap : Prop

structure RandomWalkKernelEvidence (K : RandomWalkKernelPackage) where
  stationarityClosed : K.stationarity
  reversibilityClosed : K.reversibility
  spectralGapClosed : K.spectralGap

def RandomWalkKernelClosed (K : RandomWalkKernelPackage) : Prop :=
  K.stationarity ∧ K.reversibility ∧ K.spectralGap

theorem random_walk_kernel_closed_from_evidence
    (K : RandomWalkKernelPackage) (E : RandomWalkKernelEvidence K) :
    RandomWalkKernelClosed K := by
  exact And.intro E.stationarityClosed (And.intro E.reversibilityClosed E.spectralGapClosed)

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse