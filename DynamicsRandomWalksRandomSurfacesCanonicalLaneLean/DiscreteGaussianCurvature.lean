import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure DiscreteGaussianCurvaturePackage where
  triangulatedSurface : Type u
  vertexCurvature : Type v
  angleDefect : Type w
  curvatureDefined : Prop
  gaussBonnetTheorem : Prop
  curvatureFluctuations : Prop

structure DiscreteGaussianCurvatureEvidence (D : DiscreteGaussianCurvaturePackage) where
  curvatureDefinedClosed : D.curvatureDefined
  gaussBonnetTheoremClosed : D.gaussBonnetTheorem
  curvatureFluctuationsClosed : D.curvatureFluctuations

def DiscreteGaussianCurvatureClosed (D : DiscreteGaussianCurvaturePackage) : Prop :=
  D.curvatureDefined ∧ D.gaussBonnetTheorem ∧ D.curvatureFluctuations

theorem discrete_gaussian_curvature_closed_from_evidence (D : DiscreteGaussianCurvaturePackage)
    (E : DiscreteGaussianCurvatureEvidence D) : DiscreteGaussianCurvatureClosed D := by
  exact And.intro E.curvatureDefinedClosed
    (And.intro E.gaussBonnetTheoremClosed E.curvatureFluctuationsClosed)

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse
