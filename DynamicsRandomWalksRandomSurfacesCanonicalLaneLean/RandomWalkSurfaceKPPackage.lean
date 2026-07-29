import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicsRandomWalksRandomSurfacesCanonicalLaneLean.RandomWalkSurface

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure RandomWalkSurfaceKPPackage where
  KPZScalingExponent : ℝ
  KPZFixedPointObject : Type u
  KPZFormula : Prop
  growthExponentMatch : Prop

structure RandomWalkSurfaceKPZEvidence (K : RandomWalkSurfaceKPPackage) where
  KPZFormulaClosed : K.KPZFormula
  growthExponentMatchClosed : K.growthExponentMatch

def RandomWalkSurfaceKPZClosed (K : RandomWalkSurfaceKPPackage) : Prop :=
  K.KPZFormula ∧ K.growthExponentMatch

theorem random_walk_surface_kpz_closed_from_evidence
    (K : RandomWalkSurfaceKPPackage) (E : RandomWalkSurfaceKPZEvidence K) :
    RandomWalkSurfaceKPZClosed K := by
  exact And.intro E.KPZFormulaClosed E.growthExponentMatchClosed

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse