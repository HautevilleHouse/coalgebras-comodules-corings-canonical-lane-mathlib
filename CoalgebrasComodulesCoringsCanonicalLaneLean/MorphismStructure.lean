import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoalgebrasComodulesCoringsCanonicalLaneLean.CoalgebraStructure
import HautevilleHouse.CoalgebrasComodulesCoringsCanonicalLaneLean.ComoduleStructure
import HautevilleHouse.CoalgebrasComodulesCoringsCanonicalLaneLean.CoringStructure

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure CoalgebraMorphismPackage {R : Type u} [CommRing R] (C D : CoalgebraPackage R) where
  f : C.carrier →ₗ[R] D.carrier
  comultiplicationCompatibility : Prop
  counitCompatibility : Prop

structure CoalgebraMorphismEvidence {R : Type u} [CommRing R] {C D : CoalgebraPackage R} (φ : CoalgebraMorphismPackage C D) where
  comultiplicationCompatibilityClosed : φ.comultiplicationCompatibility
  counitCompatibilityClosed : φ.counitCompatibility

def CoalgebraMorphismClosed {R : Type u} [CommRing R] {C D : CoalgebraPackage R} (φ : CoalgebraMorphismPackage C D) : Prop :=
  φ.comultiplicationCompatibility ∧ φ.counitCompatibility

theorem coalgebra_morphism_closed_from_evidence {R : Type u} [CommRing R] {C D : CoalgebraPackage R} (φ : CoalgebraMorphismPackage C D) (E : CoalgebraMorphismEvidence φ) : CoalgebraMorphismClosed φ := by
  exact And.intro E.comultiplicationCompatibilityClosed E.counitCompatibilityClosed

structure ComoduleMorphismPackage {R : Type u} [CommRing R] {C : CoalgebraPackage R} (M N : ComodulePackage C) where
  f : M.carrier →ₗ[R] N.carrier
  coactionCompatibility : Prop

structure ComoduleMorphismEvidence {R : Type u} [CommRing R] {C : CoalgebraPackage R} {M N : ComodulePackage C} (ψ : ComoduleMorphismPackage M N) where
  coactionCompatibilityClosed : ψ.coactionCompatibility

def ComoduleMorphismClosed {R : Type u} [CommRing R] {C : CoalgebraPackage R} {M N : ComodulePackage C} (ψ : ComoduleMorphismPackage M N) : Prop :=
  ψ.coactionCompatibility

theorem comodule_morphism_closed_from_evidence {R : Type u} [CommRing R] {C : CoalgebraPackage R} {M N : ComodulePackage C} (ψ : ComoduleMorphismPackage M N) (E : ComoduleMorphismEvidence ψ) : ComoduleMorphismClosed ψ := by
  exact E.coactionCompatibilityClosed

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse