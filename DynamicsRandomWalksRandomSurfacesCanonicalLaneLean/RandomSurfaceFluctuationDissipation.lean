import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure FluctuationDissipationPackage where
  fluctuationResponseRatio : Prop
  dissipationRate : Prop
  fluctuationTheorem : Prop
  equilibriumCorrelation : Prop

structure FluctuationDissipationEvidence (F : FluctuationDissipationPackage) where
  fluctuationResponseRatioClosed : F.fluctuationResponseRatio
  dissipationRateClosed : F.dissipationRate
  fluctuationTheoremClosed : F.fluctuationTheorem
  equilibriumCorrelationClosed : F.equilibriumCorrelation

def FluctuationDissipationClosed (F : FluctuationDissipationPackage) : Prop :=
  F.fluctuationResponseRatio ∧ F.dissipationRate ∧
  F.fluctuationTheorem ∧ F.equilibriumCorrelation

theorem fluctuation_dissipation_closed_from_evidence
    (F : FluctuationDissipationPackage) (Ev : FluctuationDissipationEvidence F) :
    FluctuationDissipationClosed F := by
  exact And.intro Ev.fluctuationResponseRatioClosed
    (And.intro Ev.dissipationRateClosed
      (And.intro Ev.fluctuationTheoremClosed Ev.equilibriumCorrelationClosed))

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse