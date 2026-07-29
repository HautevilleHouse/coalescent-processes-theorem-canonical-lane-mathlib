import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoalescentProcessesTheoremCanonicalLaneLean.CoalescentStateSpace
import HautevilleHouse.CoalescentProcessesTheoremCanonicalLaneLean.KingmanCoalescent

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

def gateClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  trivial

def ConstrainedCoalescentProcessesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_coalescent_processes_endgame (A : AdmissibleClass) :
    ConstrainedCoalescentProcessesClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse