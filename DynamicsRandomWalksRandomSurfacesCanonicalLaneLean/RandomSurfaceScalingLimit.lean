import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure RandomSurfaceScalingLimitPackage where
  scalingExponent : ℝ
  limitingObject : Type u
  scalingLimitObject : Type v
  convergenceInDistribution : Prop
  scalingLimitDistributionCharacterized : Prop

structure RandomSurfaceScalingLimitEvidence (L : RandomSurfaceScalingLimitPackage) where
  convergenceInDistributionClosed : L.convergenceInDistribution
  scalingLimitDistributionCharacterizedClosed : L.scalingLimitDistributionCharacterized

def RandomSurfaceScalingLimitClosed (L : RandomSurfaceScalingLimitPackage) : Prop :=
  L.convergenceInDistribution ∧ L.scalingLimitDistributionCharacterized

theorem random_surface_scaling_limit_closed_from_evidence
    (L : RandomSurfaceScalingLimitPackage) (E : RandomSurfaceScalingLimitEvidence L) :
    RandomSurfaceScalingLimitClosed L := by
  exact And.intro E.convergenceInDistributionClosed E.scalingLimitDistributionCharacterizedClosed

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse