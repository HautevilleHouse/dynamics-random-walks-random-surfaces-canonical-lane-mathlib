import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure RandomSurfacePackage where
  surfaceType : Type u
  probabilityMeasureOnSurfaces : (surfaceType → ℝ) → ℝ
  randomCurveModel : Type v
  heightFunction : surfaceType → ℝ
  interfaceModel : surfaceType → ℝ

structure RandomSurfaceEvidence (S : RandomSurfacePackage) where
  measureNormalizedClosed : S.probabilityMeasureOnSurfaces (λ _ => 1) = 1
  heightBoundedClosed : ∀ s : S.surfaceType, |S.heightFunction s| < ∞
  interfaceDefinedClosed : ∀ s : S.surfaceType, S.interfaceModel s ∈ ℝ

def RandomSurfaceClosed (S : RandomSurfacePackage) : Prop :=
  S.probabilityMeasureOnSurfaces (λ _ => 1) = 1 ∧ (∀ s : S.surfaceType, S.heightFunction s ∈ ℝ)

theorem random_surface_closed_from_evidence (S : RandomSurfacePackage) (E : RandomSurfaceEvidence S) : RandomSurfaceClosed S := by
  exact And.intro E.measureNormalizedClosed (λ s => E.heightBoundedClosed s)

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse