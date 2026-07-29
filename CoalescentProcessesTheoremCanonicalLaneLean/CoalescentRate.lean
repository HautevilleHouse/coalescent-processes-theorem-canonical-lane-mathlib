import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure CoalescentRate where
  rateParameter : Type u
  pairwiseRate : Prop
  multipleMergeRate : Prop
  timeScaling : Prop
  pairwiseRateTerm : pairwiseRate
  multipleMergeRateTerm : multipleMergeRate
  timeScalingTerm : timeScaling

structure CoalescentRateEvidence (C : CoalescentRate) where
  pairwiseRateClosed : C.pairwiseRate
  multipleMergeRateClosed : C.multipleMergeRate
  timeScalingClosed : C.timeScaling

def CoalescentRateClosed (C : CoalescentRate) : Prop :=
  C.pairwiseRate ∧ C.multipleMergeRate ∧ C.timeScaling

theorem coalescent_rate_closed_from_evidence (C : CoalescentRate)
    (E : CoalescentRateEvidence C) : CoalescentRateClosed C := by
  exact And.intro E.pairwiseRateClosed
    (And.intro E.multipleMergeRateClosed E.timeScalingClosed)

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse