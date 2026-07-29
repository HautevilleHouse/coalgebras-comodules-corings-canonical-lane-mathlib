import CoalgebrasComodulesCoringsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CoalgebraWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse
