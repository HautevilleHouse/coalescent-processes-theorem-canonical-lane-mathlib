import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure CoalescentPackage where
  nLineages : Nat
  rateFunction : Nat -> Nat -> ℝ
  monotericity : Prop
  exchangeability : Prop
  monotericityTerm : monotericity
  exchangeabilityTerm : exchangeability

structure CoalescentEvidence (C : CoalescentPackage) where
  monotericityClosed : C.monotericity
  exchangeabilityClosed : C.exchangeability

def CoalescentClosed (C : CoalescentPackage) : Prop :=
  C.monotericity ∧ C.exchangeability

theorem coalescent_closed_from_evidence (C : CoalescentPackage)
    (E : CoalescentEvidence C) : CoalescentClosed C := by
  exact And.intro E.monotericityClosed E.exchangeabilityClosed

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse