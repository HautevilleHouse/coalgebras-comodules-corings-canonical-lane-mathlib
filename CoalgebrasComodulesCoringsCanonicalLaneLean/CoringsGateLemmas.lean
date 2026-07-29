import HautevilleHouse.CoalgebrasComodulesCoringsCanonicalLaneLean.ComoduleBridgeLemmas

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure CoringObject where
  carrier : Type u
  comultiplication : carrier → carrier ⊗ carrier
  counit : carrier → R
  coassociativity : Prop
  counitality : Prop

def coringClosed (C : CoringObject) : Prop :=
  C.coassociativity ∧ C.counitality

def gateClosed (A : AdmissibleClass) : Prop :=
  coringClosed A.object

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.object.closureCoring

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse
