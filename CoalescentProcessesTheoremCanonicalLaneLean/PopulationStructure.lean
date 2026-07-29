import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure PopulationStructurePackage where
  populationSize : ℝ
  growthModel : Type
  growthRate : ℝ
  randomMating : Prop
  constantSize : Prop
  randomMatingTerm : randomMating
  constantSizeTerm : constantSize

structure PopulationStructureEvidence (P : PopulationStructurePackage) where
  randomMatingClosed : P.randomMating
  constantSizeClosed : P.constantSize

def PopulationStructureClosed (P : PopulationStructurePackage) : Prop :=
  P.randomMating ∧ P.constantSize

theorem population_structure_closed_from_evidence (P : PopulationStructurePackage)
    (E : PopulationStructureEvidence P) : PopulationStructureClosed P := by
  exact And.intro E.randomMatingClosed E.constantSizeClosed

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse