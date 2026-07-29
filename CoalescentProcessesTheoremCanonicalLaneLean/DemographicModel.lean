import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure DemographicModel where
  populationSize : Type u
  effectiveSize : Type v
  continuousTime : Prop
  wrightFisherDiffusion : Prop
  continuousTimeTerm : continuousTime
  wrightFisherDiffusionTerm : wrightFisherDiffusion

structure DemographicEvidence (D : DemographicModel) where
  continuousTimeClosed : D.continuousTime
  wrightFisherDiffusionClosed : D.wrightFisherDiffusion

def DemographicClosed (D : DemographicModel) : Prop :=
  D.continuousTime ∧ D.wrightFisherDiffusion

theorem demographic_closed_from_evidence (D : DemographicModel)
    (E : DemographicEvidence D) : DemographicClosed D := by
  exact And.intro E.continuousTimeClosed E.wrightFisherDiffusionClosed

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse