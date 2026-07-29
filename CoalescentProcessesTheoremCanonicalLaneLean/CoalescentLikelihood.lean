import canonicalLaneMathlib.AdmissibleClass
import CoalescentProcessesTheoremCanonicalLaneLean.GeneGenealogy

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure CoalescentLikelihood {D : DemographicModel} {C : CoalescentRate}
    {K : KingmanCoalescent D C} {S : CoalescentSampling D C K}
    {G : GeneGenealogy D C K S} where
  likelihoodFunction : Type u
  mutationModel : Prop
  branchLengths : Prop
  likelihoodFunctionTerm : likelihoodFunction
  mutationModelTerm : mutationModel
  branchLengthsTerm : branchLengths

structure CoalescentLikelihoodEvidence {D : DemographicModel} {C : CoalescentRate}
    {K : KingmanCoalescent D C} {S : CoalescentSampling D C K}
    {G : GeneGenealogy D C K S} (L : CoalescentLikelihood D C K S G) where
  likelihoodFunctionClosed : L.likelihoodFunction
  mutationModelClosed : L.mutationModel
  branchLengthsClosed : L.branchLengths

def CoalescentLikelihoodClosed {D : DemographicModel} {C : CoalescentRate}
    {K : KingmanCoalescent D C} {S : CoalescentSampling D C K}
    {G : GeneGenealogy D C K S} (L : CoalescentLikelihood D C K S G) : Prop :=
  L.likelihoodFunction ∧ L.mutationModel ∧ L.branchLengths

theorem coalescent_likelihood_closed_from_evidence {D : DemographicModel}
    {C : CoalescentRate} {K : KingmanCoalescent D C}
    {S : CoalescentSampling D C K} {G : GeneGenealogy D C K S}
    (L : CoalescentLikelihood D C K S G)
    (E : CoalescentLikelihoodEvidence L) : CoalescentLikelihoodClosed L := by
  exact And.intro E.likelihoodFunctionClosed
    (And.intro E.mutationModelClosed E.branchLengthsClosed)

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse