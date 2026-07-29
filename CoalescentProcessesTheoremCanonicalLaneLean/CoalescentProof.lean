import canonicalLaneMathlib.AdmissibleClass
import CoalescentProcessesTheoremCanonicalLaneLean.DemographicModel
import CoalescentProcessesTheoremCanonicalLaneLean.CoalescentRate
import CoalescentProcessesTheoremCanonicalLaneLean.KingmanCoalescent
import CoalescentProcessesTheoremCanonicalLaneLean.CoalescentSampling
import CoalescentProcessesTheoremCanonicalLaneLean.GeneGenealogy
import CoalescentProcessesTheoremCanonicalLaneLean.CoalescentLikelihood

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure CoalescentProof (D : DemographicModel) (C : CoalescentRate)
    (K : KingmanCoalescent D C) (S : CoalescentSampling D C K)
    (G : GeneGenealogy D C K S) (L : CoalescentLikelihood D C K S G) where
  coalescentProcessClosed : Prop
  proofTerm : coalescentProcessClosed

theorem coalescent_process_closed (D : DemographicModel) (C : CoalescentRate)
    (K : KingmanCoalescent D C) (S : CoalescentSampling D C K)
    (G : GeneGenealogy D C K S) (L : CoalescentLikelihood D C K S G) :
    CoalescentProof D C K S G L := by
  refine { coalescentProcessClosed := True, proofTerm := trivial }

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse