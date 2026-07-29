import canonicalLaneMathlib.AdmissibleClass
import DynamicsRandomWalksRandomSurfacesCanonicalLaneLean.RandomWalkTransitionKernel

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure SimpleRandomWalkConvergencePackage {K : RandomWalkTransitionKernelPackage} where
  rescalingLimit : Prop
  brownianMotionLimit : Prop
  invariancePrinciple : Prop
  heatKernelAsymptotics : Prop

structure SimpleRandomWalkConvergenceEvidence {K : RandomWalkTransitionKernelPackage}
    (C : SimpleRandomWalkConvergencePackage K) where
  rescalingLimitClosed : C.rescalingLimit
  brownianMotionLimitClosed : C.brownianMotionLimit
  invariancePrincipleClosed : C.invariancePrinciple
  heatKernelAsymptoticsClosed : C.heatKernelAsymptotics

def SimpleRandomWalkConvergenceClosed {K : RandomWalkTransitionKernelPackage}
    (C : SimpleRandomWalkConvergencePackage K) : Prop :=
  C.rescalingLimit ∧ C.brownianMotionLimit ∧ C.invariancePrinciple ∧ C.heatKernelAsymptotics

theorem simple_random_walk_convergence_closed_from_evidence
    {K : RandomWalkTransitionKernelPackage} (C : SimpleRandomWalkConvergencePackage K)
    (E : SimpleRandomWalkConvergenceEvidence C) : SimpleRandomWalkConvergenceClosed C := by
  exact And.intro E.rescalingLimitClosed
    (And.intro E.brownianMotionLimitClosed
      (And.intro E.invariancePrincipleClosed E.heatKernelAsymptoticsClosed))

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse