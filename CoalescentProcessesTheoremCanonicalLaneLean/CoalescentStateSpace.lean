import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure CoalescentStateSpace where
  typeOfLeaf : Type u
  branchLengthType : Type v
  leafCount : Nat
  labeledTreeType : Type w
  leafLabels : labeledTreeType -> leafCount -> typeOfLeaf
  branchLengths : labeledTreeType -> list branchLengthType
  stateSpaceMeasurable : Prop
  leafCountPos : leafCount >= 2

structure CoalescentStateSpaceEvidence (C : CoalescentStateSpace) where
  labeledTreeTypeNonempty : Nonempty C.labeledTreeType
  leafLabelsBijective : Prop
  branchLengthsPositive : Prop
  stateSpaceMeasurableClosed : C.stateSpaceMeasurable

def CoalescentStateSpaceClosed (C : CoalescentStateSpace) : Prop :=
  C.stateSpaceMeasurable

theorem coalescent_state_space_closed_from_evidence (C : CoalescentStateSpace)
    (E : CoalescentStateSpaceEvidence C) : CoalescentStateSpaceClosed C :=
  E.stateSpaceMeasurableClosed

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse