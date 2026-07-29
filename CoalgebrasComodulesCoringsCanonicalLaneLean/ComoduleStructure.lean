import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoalgebrasComodulesCoringsCanonicalLaneLean.CoalgebraStructure

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure ComodulePackage {R : Type u} [CommRing R] (C : CoalgebraPackage R) where
  carrier : Type w
  coaction : carrier →ₗ[R] carrier ⊗[R] C.carrier
  coassociative : Prop
  counital : Prop

structure ComoduleEvidence {R : Type u} [CommRing R] {C : CoalgebraPackage R} (M : ComodulePackage C) where
  coassociativeClosed : M.coassociative
  counitalClosed : M.counital

def ComoduleClosed {R : Type u} [CommRing R] {C : CoalgebraPackage R} (M : ComodulePackage C) : Prop :=
  M.coassociative ∧ M.counital

theorem comodule_closed_from_evidence {R : Type u} [CommRing R] {C : CoalgebraPackage R} (M : ComodulePackage C) (E : ComoduleEvidence M) : ComoduleClosed M := by
  exact And.intro E.coassociativeClosed E.counitalClosed

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse