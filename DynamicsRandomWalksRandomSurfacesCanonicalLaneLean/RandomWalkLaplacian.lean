import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure RandomWalkLaplacianPackage where
  stateSpace : Type u
  transitionProbability : Type v
  laplacianOperator : Type w
  randomWalkDefined : Prop
  laplacianActsOnFunctions : Prop
  spectralGap : Prop

structure RandomWalkLaplacianEvidence (R : RandomWalkLaplacianPackage) where
  randomWalkDefinedClosed : R.randomWalkDefined
  laplacianActsOnFunctionsClosed : R.laplacianActsOnFunctions
  spectralGapClosed : R.spectralGap

def RandomWalkLaplacianClosed (R : RandomWalkLaplacianPackage) : Prop :=
  R.randomWalkDefined ∧ R.laplacianActsOnFunctions ∧ R.spectralGap

theorem random_walk_laplacian_closed_from_evidence (R : RandomWalkLaplacianPackage)
    (E : RandomWalkLaplacianEvidence R) : RandomWalkLaplacianClosed R := by
  exact And.intro E.randomWalkDefinedClosed
    (And.intro E.laplacianActsOnFunctionsClosed E.spectralGapClosed)

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse
