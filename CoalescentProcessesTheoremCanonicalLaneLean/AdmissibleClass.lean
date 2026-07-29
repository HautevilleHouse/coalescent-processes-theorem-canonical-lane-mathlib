import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure AdmittedCoalescentObject where
  coalescentPackage : CoalescentPackage
  coalescentClosed : CoalescentClosed coalescentPackage
  coalescentClosedTerm : coalescentClosed

structure AdmissibleClass where
  object : AdmittedCoalescentObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.coalescentClosed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse