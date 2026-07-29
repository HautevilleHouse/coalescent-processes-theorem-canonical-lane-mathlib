import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.endpointSatisfied

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse