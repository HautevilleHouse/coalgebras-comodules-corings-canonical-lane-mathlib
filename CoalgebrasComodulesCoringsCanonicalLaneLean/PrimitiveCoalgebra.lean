import CoalgebrasComodulesCoringsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure PrimitiveCoalgebra where
  carrier : Type u
  comultiplication : carrier → carrier ⊗ carrier
  counit : carrier → R
  coassociativity : Prop
  counitCoassoc : Prop
  coassociativityTerm : coassociativity
  counitCoassocTerm : counitCoassoc

structure PrimitiveComodule (C : PrimitiveCoalgebra) where
  carrier : Type v
  coaction : carrier → carrier ⊗ C.carrier
  coassociativity : Prop
  coassociativityTerm : coassociativity

structure PrimitiveCoring (C : PrimitiveCoalgebra) where
  carrier : Type w
  coproduct : carrier → carrier ⊗ carrier
  cocomposition : carrier → carrier ⊗ carrier
  coassociativity : Prop
  cocompositionAssoc : Prop
  coassociativityTerm : coassociativity
  cocompositionAssocTerm : cocompositionAssoc

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse
