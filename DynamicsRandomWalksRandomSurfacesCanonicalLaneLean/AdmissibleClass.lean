import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure AdmissibleClass where
  object : DynamicsRandomWalksRandomSurfacesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RandomWalkWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse
