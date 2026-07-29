import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure MixingTimeEstimatesPackage where
  chainMixingTime : Prop
  relaxationTime : Prop
  cutoffPhenomenon : Prop
  comparisonWithContinuousTime : Prop

structure MixingTimeEstimatesEvidence (M : MixingTimeEstimatesPackage) where
  chainMixingTimeClosed : M.chainMixingTime
  relaxationTimeClosed : M.relaxationTime
  cutoffPhenomenonClosed : M.cutoffPhenomenon
  comparisonWithContinuousTimeClosed : M.comparisonWithContinuousTime

def MixingTimeEstimatesClosed (M : MixingTimeEstimatesPackage) : Prop :=
  M.chainMixingTime ∧ M.relaxationTime ∧ M.cutoffPhenomenon ∧ M.comparisonWithContinuousTime

theorem mixing_time_estimates_closed_from_evidence
    (M : MixingTimeEstimatesPackage) (E : MixingTimeEstimatesEvidence M) :
    MixingTimeEstimatesClosed M := by
  exact And.intro E.chainMixingTimeClosed
    (And.intro E.relaxationTimeClosed
      (And.intro E.cutoffPhenomenonClosed E.comparisonWithContinuousTimeClosed))

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse