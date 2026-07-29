import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure MutationPackage where
  mutationRate : ℝ
  mutationModel : Type
  finiteSites : Prop
  infiniteSites : Prop
  finiteSitesTerm : finiteSites
  infiniteSitesTerm : infiniteSites

structure MutationEvidence (M : MutationPackage) where
  finiteSitesClosed : M.finiteSites
  infiniteSitesClosed : M.infiniteSites

def MutationClosed (M : MutationPackage) : Prop :=
  M.finiteSites ∧ M.infiniteSites

theorem mutation_closed_from_evidence (M : MutationPackage)
    (E : MutationEvidence M) : MutationClosed M := by
  exact And.intro E.finiteSitesClosed E.infiniteSitesClosed

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse