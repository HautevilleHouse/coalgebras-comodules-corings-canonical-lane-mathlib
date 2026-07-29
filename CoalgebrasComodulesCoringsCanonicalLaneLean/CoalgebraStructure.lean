import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure CoalgebraPackage (R : Type u) [CommRing R] where
  carrier : Type v
  comultiplication : carrier →ₗ[R] carrier ⊗[R] carrier
  counit : carrier →ₗ[R] R
  coassociative : Prop
  leftCounital : Prop
  rightCounital : Prop

structure CoalgebraEvidence {R : Type u} [CommRing R] (C : CoalgebraPackage R) where
  coassociativeClosed : C.coassociative
  leftCounitalClosed : C.leftCounital
  rightCounitalClosed : C.rightCounital

def CoalgebraClosed {R : Type u} [CommRing R] (C : CoalgebraPackage R) : Prop :=
  C.coassociative ∧ C.leftCounital ∧ C.rightCounital

theorem coalgebra_closed_from_evidence {R : Type u} [CommRing R] (C : CoalgebraPackage R) (E : CoalgebraEvidence C) : CoalgebraClosed C := by
  exact And.intro E.coassociativeClosed (And.intro E.leftCounitalClosed E.rightCounitalClosed)

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse