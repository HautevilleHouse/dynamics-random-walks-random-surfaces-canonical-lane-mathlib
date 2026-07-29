import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure RandomSurfaceEmbeddingPackage where
  baseSpace : Type u
  targetSpace : Type v
  randomMap : Type w
  embeddingDefined : Prop
  heightFunctionDefined : Prop
  areaMeasureDefined : Prop

structure RandomSurfaceEmbeddingEvidence (E : RandomSurfaceEmbeddingPackage) where
  embeddingDefinedClosed : E.embeddingDefined
  heightFunctionDefinedClosed : E.heightFunctionDefined
  areaMeasureDefinedClosed : E.areaMeasureDefined

def RandomSurfaceEmbeddingClosed (E : RandomSurfaceEmbeddingPackage) : Prop :=
  E.embeddingDefined ∧ E.heightFunctionDefined ∧ E.areaMeasureDefined

theorem random_surface_embedding_closed_from_evidence (E : RandomSurfaceEmbeddingPackage)
    (Ev : RandomSurfaceEmbeddingEvidence E) : RandomSurfaceEmbeddingClosed E := by
  exact And.intro Ev.embeddingDefinedClosed
    (And.intro Ev.heightFunctionDefinedClosed Ev.areaMeasureDefinedClosed)

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse
