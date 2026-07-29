import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure DemographicInferencePackage {A : AdmissibleClass} {K : KingmanCoalescentPackage A} {G : GeneGenealogyPackage K} (P : PopulationStructurePackage G) where
  likelihoodFunction : Type
  maximumLikelihoodEstimate : ℝ
  populationSizeHistory : ℕ → ℝ
  bottleneckEvent : Prop
  expansionEvent : Prop

structure DemographicInferenceEvidence {A : AdmissibleClass} {K : KingmanCoalescentPackage A} {G : GeneGenealogyPackage K} {P : PopulationStructurePackage G} (D : DemographicInferencePackage P) where
  likelihoodFunctionDefined : D.likelihoodFunction = D.likelihoodFunction
  maximumLikelihoodEstimateClosed : D.maximumLikelihoodEstimate > 0
  bottleneckEventClosed : D.bottleneckEvent
  expansionEventClosed : D.expansionEvent

def DemographicInferenceClosed {A : AdmissibleClass} {K : KingmanCoalescentPackage A} {G : GeneGenealogyPackage K} {P : PopulationStructurePackage G} (D : DemographicInferencePackage P) : Prop :=
  D.maximumLikelihoodEstimate > 0 ∧ D.bottleneckEvent ∧ D.expansionEvent

theorem demographic_inference_closed_from_evidence {A : AdmissibleClass} {K : KingmanCoalescentPackage A} {G : GeneGenealogyPackage K} {P : PopulationStructurePackage G} (D : DemographicInferencePackage P) (E : DemographicInferenceEvidence D) : DemographicInferenceClosed D := by
  exact And.intro E.maximumLikelihoodEstimateClosed (And.intro E.bottleneckEventClosed E.expansionEventClosed)

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse