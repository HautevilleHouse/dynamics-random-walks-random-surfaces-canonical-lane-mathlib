import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure ScalingLimitPackage where
  scalingExponent : ℝ
  limitingProcess : Type u
  invariancePrinciple : Prop
  roughnessIndex : Prop

structure ScalingLimitEvidence (S : ScalingLimitPackage) where
  invariancePrincipleClosed : S.invariancePrinciple
  roughnessIndexClosed : S.roughnessIndex

def ScalingLimitClosed (S : ScalingLimitPackage) : Prop :=
  S.invariancePrinciple ∧ S.roughnessIndex

theorem scaling_limit_closed_from_evidence
    (S : ScalingLimitPackage) (E : ScalingLimitEvidence S) :
    ScalingLimitClosed S := by
  exact And.intro E.invariancePrincipleClosed E.roughnessIndexClosed

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse