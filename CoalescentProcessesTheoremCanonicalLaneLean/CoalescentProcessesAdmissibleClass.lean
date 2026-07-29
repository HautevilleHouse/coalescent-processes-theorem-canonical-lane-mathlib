import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure CoalescentAdmittedObject where
  endpointSatisfied : Prop
  remainderRecorded : Prop

def coalescentWitnessClosed (O : CoalescentAdmittedObject) : Prop :=
  O.endpointSatisfied

def CoalescentAdmissibleClass : Type := AdmissibleClass

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse