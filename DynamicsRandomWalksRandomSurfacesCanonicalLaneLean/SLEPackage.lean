import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure SLEPackage where
  curveType : Type u
  parameter : ℝ
  drivingFunction : ℝ → ℝ
  hulls : ℝ → Set ℂ
  scalingProperty : Prop

structure SLEEvidence (S : SLEPackage) where
  loewnerEquationClosed : S.drivingFunction = BrownianMotion
  parameterInRangeClosed : S.parameter > 0 ∧ S.parameter < 8
  hullsIncreasingClosed : ∀ s t : ℝ, s < t → S.hulls s ⊆ S.hulls t
  scalingPropertyClosed : S.scalingProperty

def SLEClosed (S : SLEPackage) : Prop :=
  S.parameter > 0 ∧ S.parameter < 8 ∧ S.scalingProperty

theorem sle_closed_from_evidence (S : SLEPackage) (E : SLEEvidence S) : SLEClosed S := by
  exact And.intro E.parameterInRangeClosed.1 (And.intro E.parameterInRangeClosed.2 E.scalingPropertyClosed)

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse