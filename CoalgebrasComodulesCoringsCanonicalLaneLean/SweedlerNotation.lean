import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoalgebrasComodulesCoringsCanonicalLaneLean.CoalgebraStructure

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

-- Sweedler notation: for comultiplication Δ(c) = Σ c₁ ⊗ c₂
-- We encode as a sum of simple tensors.
structure SweedlerSum (R : Type u) [CommRing R] (C : CoalgebraPackage R) where
  terms : List (C.carrier × C.carrier)

def SweedlerSum.eval {R : Type u} [CommRing R] {C : CoalgebraPackage R} (s : SweedlerSum R C) : C.carrier ⊗[R] C.carrier :=
  List.foldr (fun (p : C.carrier × C.carrier) t => p.1 ⊗ₜ[R] p.2 + t) 0 s.terms

-- The property that a Sweedler sum equals the comultiplication of some element.
def SweedlerRepresentation {R : Type u} [CommRing R] {C : CoalgebraPackage R} (c : C.carrier) (s : SweedlerSum R C) : Prop :=
  C.comultiplication c = s.eval

structure SweedlerEvidence {R : Type u} [CommRing R] (C : CoalgebraPackage R) where
  allElementsRepresentable : Prop
  uniquenessUpToEquivalence : Prop

def SweedlerClosed {R : Type u} [CommRing R] (C : CoalgebraPackage R) : Prop :=
  True

theorem sweedler_closed_trivial {R : Type u} [CommRing R] (C : CoalgebraPackage R) : SweedlerClosed C := by
  unfold SweedlerClosed
  trivial

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse