import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure CoalgebraObject where
  carrier : Type u
  comultiplication : carrier → carrier ⊗ carrier
  counit : carrier → R
  coassociativity : Prop
  counitality : Prop

def coalgebraWitnessClosed (O : CoalgebraObject) : Prop :=
  O.coassociativity ∧ O.counitality

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse
