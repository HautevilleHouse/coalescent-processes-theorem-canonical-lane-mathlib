import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure CoalescentProcessObject where
  populationSize : Nat
  lineageCount : Nat
  time : Type u
  coalescenceRate : Nat
  binaryMerger : Prop
  exchangeable : Prop
  sampleConsistency : Prop

structure AdmissibleCoalescentClass where
  object : CoalescentProcessObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleCoalescentClass) : Prop :=
  CoalescentWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse