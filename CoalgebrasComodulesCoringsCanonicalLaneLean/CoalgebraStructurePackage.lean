import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure CoalgebraStructurePackage where
  coassociativityCondition : Prop
  counitCoherenceCondition : Prop
  hepCocommutativityCondition : Prop
  cofreeCoalgebraCondition : Prop

structure CoalgebraStructureEvidence (C : CoalgebraStructurePackage) where
  coassociativityClosed : C.coassociativityCondition
  counitCoherenceClosed : C.counitCoherenceCondition
  hepCocommutativityClosed : C.hepCocommutativityCondition
  cofreeCoalgebraClosed : C.cofreeCoalgebraCondition

def CoalgebraStructureClosed (C : CoalgebraStructurePackage) : Prop :=
  C.coassociativityCondition ∧ C.counitCoherenceCondition ∧ C.hepCocommutativityCondition ∧ C.cofreeCoalgebraCondition

theorem coalgebra_structure_closed_from_evidence (C : CoalgebraStructurePackage) (E : CoalgebraStructureEvidence C) : CoalgebraStructureClosed C := by
  exact And.intro E.coassociativityClosed (And.intro E.counitCoherenceClosed (And.intro E.hepCocommutativityClosed E.cofreeCoalgebraClosed))

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse