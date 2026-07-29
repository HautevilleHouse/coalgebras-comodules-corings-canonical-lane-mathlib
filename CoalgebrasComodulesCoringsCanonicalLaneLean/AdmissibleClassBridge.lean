import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoalgebrasComodulesCoringsCanonicalLaneLean.CoalgebraDefinitions

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure AdmittedCoalgebraObject where
  coalgebra : Coalgebra R
  property : Prop
  conclusion : property

structure CCCAdmissibleClass where
  object : AdmittedCoalgebraObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : CCCAdmissibleClass) : Prop :=
  A.object.property

theorem bridge_from_admissible_class (A : CCCAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : CCCAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : CCCAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse