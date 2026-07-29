import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoalescentProcessesTheoremCanonicalLaneLean.CoalescentStateSpace

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure KingmanCoalescentPackage (C : CoalescentStateSpace) where
  rateFunction : Nat -> Prop
  coalescentRate : Nat -> {x : ℝ // x > 0}
  pairwiseRate : Prop
  multipleCoalescenceRate : Prop
  markovProperty : Prop
  rateFunctionClosed : rateFunction C.leafCount
  pairwiseRateClosed : pairwiseRate
  multipleCoalescenceRateClosed : multipleCoalescenceRate
  markovPropertyClosed : markovProperty

structure KingmanCoalescentEvidence {C : CoalescentStateSpace}
    (K : KingmanCoalescentPackage C) where
  pairwiseRateClosed : K.pairwiseRate
  markovPropertyClosed : K.markovProperty

def KingmanCoalescentClosed {C : CoalescentStateSpace}
    (K : KingmanCoalescentPackage C) : Prop :=
  K.pairwiseRate ∧ K.markovProperty

theorem kingman_coalescent_closed_from_evidence {C : CoalescentStateSpace}
    (K : KingmanCoalescentPackage C) (E : KingmanCoalescentEvidence K) :
    KingmanCoalescentClosed K :=
  And.intro E.pairwiseRateClosed E.markovPropertyClosed

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse