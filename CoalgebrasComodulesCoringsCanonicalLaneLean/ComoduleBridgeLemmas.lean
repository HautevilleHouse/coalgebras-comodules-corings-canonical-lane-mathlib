import HautevilleHouse.CoalgebrasComodulesCoringsCanonicalLaneLean.CoalgebraAdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure ComoduleObject where
  carrier : Type u
  coaction : carrier → carrier ⊗ carrier
  coassociativity : Prop
  counitality : Prop

def comoduleClosed (C : ComoduleObject) : Prop :=
  C.coassociativity ∧ C.counitality

def bridgeClosed (A : AdmissibleClass) : Prop :=
  coalgebraWitnessClosed A.object ∧ comoduleClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.closureCoalgebra A.object.closureComodule

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse
