import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.coalescentClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.coalescentClosedTerm

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse