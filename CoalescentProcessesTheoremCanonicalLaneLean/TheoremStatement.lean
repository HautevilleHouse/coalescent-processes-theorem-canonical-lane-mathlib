import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalescentProcessesTheoremCanonicalLaneLean

structure CoalescentAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  coalescentProcess : Prop
  genealogyExchangeable : Prop
  marginalCompatible : Prop
  conclusion : coalescentProcess ∧ genealogyExchangeable ∧ marginalCompatible

def CoalescentWitnessClosed (O : CoalescentAdmittedObject) : Prop :=
  O.conclusion

end CoalescentProcessesTheoremCanonicalLaneLean
end HautevilleHouse
