import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure CoringPackage (R : Type u) [CommRing R] where
  carrier : Type v
  comultiplication : carrier →ₗ[R] carrier ⊗[R] carrier
  counit : carrier →ₗ[R] R
  coassociative : Prop
  leftCounital : Prop
  rightCounital : Prop

structure CoringEvidence {R : Type u} [CommRing R] (C : CoringPackage R) where
  coassociativeClosed : C.coassociative
  leftCounitalClosed : C.leftCounital
  rightCounitalClosed : C.rightCounital

def CoringClosed {R : Type u} [CommRing R] (C : CoringPackage R) : Prop :=
  C.coassociative ∧ C.leftCounital ∧ C.rightCounital

theorem coring_closed_from_evidence {R : Type u} [CommRing R] (C : CoringPackage R) (E : CoringEvidence C) : CoringClosed C := by
  exact And.intro E.coassociativeClosed (And.intro E.leftCounitalClosed E.rightCounitalClosed)

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse