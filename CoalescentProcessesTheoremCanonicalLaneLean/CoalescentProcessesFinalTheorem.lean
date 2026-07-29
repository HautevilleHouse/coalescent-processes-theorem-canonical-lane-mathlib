import canonicalLaneMathlib.AdmissibleClass
import CoalescentProcessesTheoremCanonicalLaneLean.CoalescentProcessesBridge
import CoalescentProcessesTheoremCanonicalLaneLean.CoalescentProcessesGateLemmas

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

def ConstrainedCoalescentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_coalescent_endgame (A : AdmissibleClass) :
    ConstrainedCoalescentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse