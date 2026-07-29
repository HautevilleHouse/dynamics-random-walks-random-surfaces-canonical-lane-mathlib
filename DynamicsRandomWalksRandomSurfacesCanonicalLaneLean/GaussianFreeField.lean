import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure GaussianFreeFieldPackage where
  domain : Type u
  covarianceOperator : Type v
  fieldRealization : Type w
  gaussianFieldDefined : Prop
  conformalInvariance : Prop
  markovProperty : Prop

structure GaussianFreeFieldEvidence (G : GaussianFreeFieldPackage) where
  gaussianFieldDefinedClosed : G.gaussianFieldDefined
  conformalInvarianceClosed : G.conformalInvariance
  markovPropertyClosed : G.markovProperty

def GaussianFreeFieldClosed (G : GaussianFreeFieldPackage) : Prop :=
  G.gaussianFieldDefined ∧ G.conformalInvariance ∧ G.markovProperty

theorem gaussian_free_field_closed_from_evidence (G : GaussianFreeFieldPackage)
    (E : GaussianFreeFieldEvidence G) : GaussianFreeFieldClosed G := by
  exact And.intro E.gaussianFieldDefinedClosed
    (And.intro E.conformalInvarianceClosed E.markovPropertyClosed)

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse
