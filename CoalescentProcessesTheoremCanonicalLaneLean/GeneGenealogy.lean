import canonicalLaneMathlib.AdmissibleClass
import CoalescentProcessesTheoremCanonicalLaneLean.CoalescentSampling

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure GeneGenealogy {D : DemographicModel} {C : CoalescentRate}
    {K : KingmanCoalescent D C} {S : CoalescentSampling D C K} where
  mostRecentCommonAncestorExists : Prop
  coalescentTreeComplete : Prop
  mutationRate : Type u
  infiniteSitesModel : Bool
  mostRecentCommonAncestorExistsTerm : mostRecentCommonAncestorExists
  coalescentTreeCompleteTerm : coalescentTreeComplete

structure GeneGenealogyEvidence {D : DemographicModel} {C : CoalescentRate}
    {K : KingmanCoalescent D C} {S : CoalescentSampling D C K}
    (G : GeneGenealogy D C K S) where
  mostRecentCommonAncestorExistsClosed : G.mostRecentCommonAncestorExists
  coalescentTreeCompleteClosed : G.coalescentTreeComplete

def GeneGenealogyClosed {D : DemographicModel} {C : CoalescentRate}
    {K : KingmanCoalescent D C} {S : CoalescentSampling D C K}
    (G : GeneGenealogy D C K S) : Prop :=
  G.mostRecentCommonAncestorExists ∧ G.coalescentTreeComplete

theorem gene_genealogy_closed_from_evidence {D : DemographicModel}
    {C : CoalescentRate} {K : KingmanCoalescent D C}
    {S : CoalescentSampling D C K} (G : GeneGenealogy D C K S)
    (E : GeneGenealogyEvidence G) : GeneGenealogyClosed G := by
  exact And.intro E.mostRecentCommonAncestorExistsClosed
    E.coalescentTreeCompleteClosed

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse