import canonicalLaneMathlib.AdmissibleClass
import CoalescentProcessesTheoremCanonicalLaneLean.CoalescentProcessBasic

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleCoalescentClass) : Prop :=
  CoalescentWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleCoalescentClass) : bridgeClosed A := by
  exact A.object.sampleConsistency

def gateClosed (A : AdmissibleCoalescentClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleCoalescentClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCoalescentClosure (A : AdmissibleCoalescentClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_coalescent_endgame (A : AdmissibleCoalescentClass) : ConstrainedCoalescentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse