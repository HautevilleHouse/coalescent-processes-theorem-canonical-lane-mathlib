import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure GenealogyDistributionPackage where
  treeTopology : Type
  branchLengths : Type
  distributionWellDefined : Prop
  exchangeable : Prop
  distributionWellDefinedTerm : distributionWellDefined
  exchangeableTerm : exchangeable

structure GenealogyDistributionEvidence (G : GenealogyDistributionPackage) where
  distributionWellDefinedClosed : G.distributionWellDefined
  exchangeableClosed : G.exchangeable

def GenealogyDistributionClosed (G : GenealogyDistributionPackage) : Prop :=
  G.distributionWellDefined ∧ G.exchangeable

theorem genealogy_distribution_closed_from_evidence (G : GenealogyDistributionPackage)
    (E : GenealogyDistributionEvidence G) : GenealogyDistributionClosed G := by
  exact And.intro E.distributionWellDefinedClosed E.exchangeableClosed

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse