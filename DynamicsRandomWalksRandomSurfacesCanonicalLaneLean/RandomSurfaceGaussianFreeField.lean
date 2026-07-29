import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure GaussianFreeFieldPackage where
  surface : Type u
  baseMetric : surface → surface → ℝ
  covarianceKernel : surface → surface → ℝ
  conformalInvariance : Prop
  scalingLimit : Prop
  markovProperty : Prop

structure GaussianFreeFieldEvidence (G : GaussianFreeFieldPackage) where
  conformalInvarianceClosed : G.conformalInvariance
  scalingLimitClosed : G.scalingLimit
  markovPropertyClosed : G.markovProperty

def GaussianFreeFieldClosed (G : GaussianFreeFieldPackage) : Prop :=
  G.conformalInvariance ∧ G.scalingLimit ∧ G.markovProperty

theorem gaussian_free_field_closed_from_evidence
    (G : GaussianFreeFieldPackage) (E : GaussianFreeFieldEvidence G) :
    GaussianFreeFieldClosed G := by
  exact And.intro E.conformalInvarianceClosed
    (And.intro E.scalingLimitClosed E.markovPropertyClosed)

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse