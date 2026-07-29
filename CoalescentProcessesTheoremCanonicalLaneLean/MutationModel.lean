import canonicalLaneMathlib.AdmissibleClass
import CoalescentProcessesTheoremCanonicalLaneLean.CoalescentProcessBasic

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure MutationModelPackage {A : AdmissibleCoalescentClass} where
  mutationRate : Type u
  substitutionModel : Prop
  infiniteSites : Prop
  segregatingSites : Prop

structure MutationModelEvidence {A : AdmissibleCoalescentClass} (M : MutationModelPackage A) where
  mutationRateClosed : M.mutationRate
  substitutionModelClosed : M.substitutionModel
  infiniteSitesClosed : M.infiniteSites
  segregatingSitesClosed : M.segregatingSites

def MutationModelClosed {A : AdmissibleCoalescentClass} (M : MutationModelPackage A) : Prop :=
  M.mutationRate ∧ M.substitutionModel ∧ M.infiniteSites ∧ M.segregatingSites

theorem mutation_model_closed_from_evidence {A : AdmissibleCoalescentClass} (M : MutationModelPackage A) (E : MutationModelEvidence M) : MutationModelClosed M := by
  exact And.intro E.mutationRateClosed (And.intro E.substitutionModelClosed (And.intro E.infiniteSitesClosed E.segregatingSitesClosed))

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse