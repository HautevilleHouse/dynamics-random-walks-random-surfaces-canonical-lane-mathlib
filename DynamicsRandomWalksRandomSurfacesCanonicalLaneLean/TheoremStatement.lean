import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsRandomWalksRandomSurfacesCanonicalLaneLean

structure DynamicsRandomWalksRandomSurfacesAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  randomWalkExists : Prop
  surfaceModelDefined : Prop
  conclusion : Prop

def RandomWalkWitnessClosed (O : DynamicsRandomWalksRandomSurfacesAdmittedObject) : Prop :=
  O.conclusion

end DynamicsRandomWalksRandomSurfacesCanonicalLaneLean
end HautevilleHouse
