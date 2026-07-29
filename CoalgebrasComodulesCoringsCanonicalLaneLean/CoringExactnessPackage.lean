import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure CoringExactnessPackage where
  leftExactCoaction : Prop
  rightExactCoaction : Prop
  flatnessCondition : Prop
  homologyCondition : Prop

structure CoringExactnessEvidence (E : CoringExactnessPackage) where
  leftExactClosed : E.leftExactCoaction
  rightExactClosed : E.rightExactCoaction
  flatnessClosed : E.flatnessCondition
  homologyClosed : E.homologyCondition

def CoringExactnessClosed (E : CoringExactnessPackage) : Prop :=
  E.leftExactCoaction ∧ E.rightExactCoaction ∧ E.flatnessCondition ∧ E.homologyCondition

theorem coring_exactness_closed_from_evidence (E : CoringExactnessPackage) (Ev : CoringExactnessEvidence E) : CoringExactnessClosed E := by
  exact And.intro Ev.leftExactClosed (And.intro Ev.rightExactClosed (And.intro Ev.flatnessClosed Ev.homologyClosed))

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse