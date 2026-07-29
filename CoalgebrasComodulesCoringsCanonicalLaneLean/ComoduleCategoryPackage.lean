import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure ComoduleCategoryPackage (C : CoalgebraObject) where
  objectClass : Type u
  morphismClass : Type v
  composition : Prop
  identityMorphism : Prop
  associativityOfComposition : Prop
  leftUnitCoherence : Prop
  rightUnitCoherence : Prop

structure ComoduleCategoryEvidence {C : CoalgebraObject} (Cat : ComoduleCategoryPackage C) where
  compositionClosed : Cat.composition
  identityMorphismClosed : Cat.identityMorphism
  associativityClosed : Cat.associativityOfComposition
  leftUnitCoherenceClosed : Cat.leftUnitCoherence
  rightUnitCoherenceClosed : Cat.rightUnitCoherence

def ComoduleCategoryClosed {C : CoalgebraObject} (Cat : ComoduleCategoryPackage C) : Prop :=
  Cat.composition ∧ Cat.identityMorphism ∧ Cat.associativityOfComposition ∧ Cat.leftUnitCoherence ∧ Cat.rightUnitCoherence

theorem comodule_category_closed_from_evidence {C : CoalgebraObject} (Cat : ComoduleCategoryPackage C) (E : ComoduleCategoryEvidence Cat) : ComoduleCategoryClosed Cat := by
  exact And.intro E.compositionClosed (And.intro E.identityMorphismClosed (And.intro E.associativityClosed (And.intro E.leftUnitCoherenceClosed E.rightUnitCoherenceClosed)))

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse