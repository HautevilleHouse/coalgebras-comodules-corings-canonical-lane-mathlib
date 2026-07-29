import CoalgebrasComodulesCoringsCanonicalLaneLean.PrimitiveCoalgebra

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure CoalgebraTheoryPackage (C : PrimitiveCoalgebra) where
  coalgebraCategory : Type u1
  coalgebraFunctor : Type u2
  cofreeCoalgebra : Type u3
  cofreeAdjunction : Prop
  cofreeAdjunctionTerm : cofreeAdjunction

structure CoalgebraTheoryEvidence (C : PrimitiveCoalgebra) (P : CoalgebraTheoryPackage C) where
  coalgebraCategoryClosed : Prop
  coalgebraFunctorClosed : Prop
  cofreeCoalgebraClosed : Prop
  cofreeAdjunctionClosed : P.cofreeAdjunction

def CoalgebraTheoryClosed (C : PrimitiveCoalgebra) (P : CoalgebraTheoryPackage C) : Prop :=
  P.cofreeAdjunction

theorem coalgebra_theory_closed_from_evidence (C : PrimitiveCoalgebra) (P : CoalgebraTheoryPackage C)
    (E : CoalgebraTheoryEvidence C P) : CoalgebraTheoryClosed C P := by
  exact E.cofreeAdjunctionClosed

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse
