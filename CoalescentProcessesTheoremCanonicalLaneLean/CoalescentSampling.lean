import canonicalLaneMathlib.AdmissibleClass
import CoalescentProcessesTheoremCanonicalLaneLean.KingmanCoalescent

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure CoalescentSampling {D : DemographicModel} {C : CoalescentRate}
    {K : KingmanCoalescent D C} where
  sampleSize : Nat
  nSampleMerges : Prop
  waitingTimesExponential : Prop
  treeTopology : Type u
  nSampleMergesTerm : nSampleMerges
  waitingTimesExponentialTerm : waitingTimesExponential

structure CoalescentSamplingEvidence {D : DemographicModel} {C : CoalescentRate}
    {K : KingmanCoalescent D C} (S : CoalescentSampling D C K) where
  nSampleMergesClosed : S.nSampleMerges
  waitingTimesExponentialClosed : S.waitingTimesExponential

def CoalescentSamplingClosed {D : DemographicModel} {C : CoalescentRate}
    {K : KingmanCoalescent D C} (S : CoalescentSampling D C K) : Prop :=
  S.nSampleMerges ∧ S.waitingTimesExponential

theorem coalescent_sampling_closed_from_evidence {D : DemographicModel}
    {C : CoalescentRate} {K : KingmanCoalescent D C}
    (S : CoalescentSampling D C K)
    (E : CoalescentSamplingEvidence S) : CoalescentSamplingClosed S := by
  exact And.intro E.nSampleMergesClosed E.waitingTimesExponentialClosed

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse