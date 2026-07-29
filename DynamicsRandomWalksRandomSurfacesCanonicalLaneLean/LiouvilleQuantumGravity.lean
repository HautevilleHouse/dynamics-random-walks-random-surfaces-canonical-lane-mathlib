import canonicalLaneMathlib.AdmissibleClass
import DynamicsRandomWalksRandomSurfacesCanonicalLaneLean.RandomSurfaceGaussianFreeField

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure LiouvilleQuantumGravityPackage {G : GaussianFreeFieldPackage} where
  couplingConstant : ℝ
  weylScaling : Prop
  partitionFunction : Prop
  correlationFunctions : Prop
  KPZRelation : Prop

structure LiouvilleQuantumGravityEvidence {G : GaussianFreeFieldPackage}
    (L : LiouvilleQuantumGravityPackage G) where
  weylScalingClosed : L.weylScaling
  partitionFunctionClosed : L.partitionFunction
  correlationFunctionsClosed : L.correlationFunctions
  KPZRelationClosed : L.KPZRelation

def LiouvilleQuantumGravityClosed {G : GaussianFreeFieldPackage}
    (L : LiouvilleQuantumGravityPackage G) : Prop :=
  L.weylScaling ∧ L.partitionFunction ∧ L.correlationFunctions ∧ L.KPZRelation

theorem liouville_quantum_gravity_closed_from_evidence
    {G : GaussianFreeFieldPackage} (L : LiouvilleQuantumGravityPackage G)
    (E : LiouvilleQuantumGravityEvidence L) : LiouvilleQuantumGravityClosed L := by
  exact And.intro E.weylScalingClosed
    (And.intro E.partitionFunctionClosed
      (And.intro E.correlationFunctionsClosed E.KPZRelationClosed))

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse