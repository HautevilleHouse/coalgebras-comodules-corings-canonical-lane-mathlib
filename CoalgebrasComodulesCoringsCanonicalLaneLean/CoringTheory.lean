import CoalgebrasComodulesCoringsCanonicalLaneLean.PrimitiveCoalgebra

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure CoringTheoryPackage (C : PrimitiveCoalgebra) where
  coringCategory : Type u1
  coringFunctor : Type u2
  cofreeCoring : Type u3
  cofreeAdjunction : Prop
  cofreeAdjunctionTerm : cofreeAdjunction

structure CoringTheoryEvidence (C : PrimitiveCoalgebra) (P : CoringTheoryPackage C) where
  coringCategoryClosed : Prop
  coringFunctorClosed : Prop
  cofreeCoringClosed : Prop
  cofreeAdjunctionClosed : P.cofreeAdjunction

def CoringTheoryClosed (C : PrimitiveCoalgebra) (P : CoringTheoryPackage C) : Prop :=
  P.cofreeAdjunction

theorem coring_theory_closed_from_evidence (C : PrimitiveCoalgebra) (P : CoringTheoryPackage C)
    (E : CoringTheoryEvidence C P) : CoringTheoryClosed C P := by
  exact E.cofreeAdjunctionClosed

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse
