import HautevilleHouse.CoalgebrasComodulesCoringsCanonicalLaneLean.CoringsGateLemmas

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure CoalgebraHomomorphism where
  source : CoalgebraObject
  target : CoalgebraObject
  map : source.carrier → target.carrier
  comultiplicationPreserved : Prop
  counitPreserved : Prop

def coalgebraHomomorphismClosed (H : CoalgebraHomomorphism) : Prop :=
  H.comultiplicationPreserved ∧ H.counitPreserved

theorem coalgebra_homomorphism_from_evidence (H : CoalgebraHomomorphism) :
    coalgebraHomomorphismClosed H := by
  exact And.intro H.comultiplicationPreserved H.counitPreserved

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse
