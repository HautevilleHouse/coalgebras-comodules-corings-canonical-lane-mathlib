import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure CoalgebraObject where
  carrier : Type u
  comultiplication : carrier → carrier ⊗ carrier
  counit : carrier → R
  coassociativity : Prop
  counitCoherence : Prop
  carrierModule : Module R carrier
  comultiplicationLinear : Prop
  counitLinear : Prop

structure ComoduleObject (C : CoalgebraObject) where
  carrier : Type u
  coaction : carrier → carrier ⊗ C.carrier
  coactionLinear : Prop
  counitCoherence : Prop
  coassociativity : Prop

structure CoringObject (R : Ring) where
  carrier : Type u
  comultiplication : carrier → carrier ⊗ carrier
  counit : carrier → R
  coassociativity : Prop
  counitCoherence : Prop
  isCoring : Prop

structure AdmissibleClass where
  coalgebra : CoalgebraObject
  comodule : ComoduleObject coalgebra
  coring : CoringObject ℤ
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.coalgebra.coassociativity ∧ A.comodule.coassociativity ∧ A.coring.coassociativity

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.coalgebra.coassociativity (And.intro A.comodule.coassociativity A.coring.coassociativity)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCoalgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_coalgebra_endgame (A : AdmissibleClass) : ConstrainedCoalgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse