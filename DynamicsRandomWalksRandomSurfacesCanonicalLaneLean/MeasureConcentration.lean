import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure MeasureConcentrationPackage where
  underlyingSpace : Type u
  probabilityMeasure : underlyingSpace → Prop
  lipschitzFunctionSpace : Type v
  concentrationInequality : Prop
  deviationBound : Prop

structure MeasureConcentrationEvidence (M : MeasureConcentrationPackage) where
  concentrationInequalityClosed : M.concentrationInequality
  deviationBoundClosed : M.deviationBound

def MeasureConcentrationClosed (M : MeasureConcentrationPackage) : Prop :=
  M.concentrationInequality ∧ M.deviationBound

theorem measure_concentration_closed_from_evidence
    (M : MeasureConcentrationPackage) (E : MeasureConcentrationEvidence M) :
    MeasureConcentrationClosed M := by
  exact And.intro E.concentrationInequalityClosed E.deviationBoundClosed

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse