import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsRandomWalksRandomSurfacesCanonicalLaneLean.RandomWalkSurface

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure RandomWalkEntropyPackage where
  entropyFunctional : Type u
  entropyProduction : Prop
  entropyMonotonicity : Prop
  entropyDissipation : Prop

structure RandomWalkEntropyEvidence (E : RandomWalkEntropyPackage) where
  entropyProductionClosed : E.entropyProduction
  entropyMonotonicityClosed : E.entropyMonotonicity
  entropyDissipationClosed : E.entropyDissipation

def RandomWalkEntropyClosed (E : RandomWalkEntropyPackage) : Prop :=
  E.entropyProduction ∧ E.entropyMonotonicity ∧ E.entropyDissipation

theorem random_walk_entropy_closed_from_evidence
    (E : RandomWalkEntropyPackage) (Ev : RandomWalkEntropyEvidence E) :
    RandomWalkEntropyClosed E := by
  exact And.intro Ev.entropyProductionClosed
    (And.intro Ev.entropyMonotonicityClosed Ev.entropyDissipationClosed)

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse