import CoalgebrasComodulesCoringsCanonicalLaneLean.PrimitiveCoalgebra

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure ComoduleTheoryPackage (C : PrimitiveCoalgebra) where
  comoduleCategory : Type u1
  comoduleFunctor : Type u2
  cofreeComodule : Type u3
  cofreeAdjunction : Prop
  cofreeAdjunctionTerm : cofreeAdjunction

structure ComoduleTheoryEvidence (C : PrimitiveCoalgebra) (P : ComoduleTheoryPackage C) where
  comoduleCategoryClosed : Prop
  comoduleFunctorClosed : Prop
  cofreeComoduleClosed : Prop
  cofreeAdjunctionClosed : P.cofreeAdjunction

def ComoduleTheoryClosed (C : PrimitiveCoalgebra) (P : ComoduleTheoryPackage C) : Prop :=
  P.cofreeAdjunction

theorem comodule_theory_closed_from_evidence (C : PrimitiveCoalgebra) (P : ComoduleTheoryPackage C)
    (E : ComoduleTheoryEvidence C P) : ComoduleTheoryClosed C P := by
  exact E.cofreeAdjunctionClosed

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse
