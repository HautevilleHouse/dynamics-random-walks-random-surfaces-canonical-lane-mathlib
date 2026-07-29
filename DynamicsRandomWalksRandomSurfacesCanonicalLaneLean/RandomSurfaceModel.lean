import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure RandomSurfaceModelPackage where
  surfaceType : Type u
  randomMetric : surfaceType → Prop
  heightFunction : surfaceType → (ℤ → ℤ)
  interfaceWidth : Prop
  fluctuationBounds : Prop

structure RandomSurfaceModelEvidence (S : RandomSurfaceModelPackage) where
  interfaceWidthClosed : S.interfaceWidth
  fluctuationBoundsClosed : S.fluctuationBounds

def RandomSurfaceModelClosed (S : RandomSurfaceModelPackage) : Prop :=
  S.interfaceWidth ∧ S.fluctuationBounds

theorem random_surface_model_closed_from_evidence
    (S : RandomSurfaceModelPackage) (E : RandomSurfaceModelEvidence S) :
    RandomSurfaceModelClosed S := by
  exact And.intro E.interfaceWidthClosed E.fluctuationBoundsClosed

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse