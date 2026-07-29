import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure Coalgebra (R : Type u) [CommRing R] where
  carrier : Type v
  [addCommGroup : AddCommGroup carrier]
  [module : Module R carrier]
  comult : carrier →ₗ[R] carrier ⊗[R] carrier
  counit : carrier →ₗ[R] R
  coassoc : ∀ x : carrier, (map (id := id) comult) (comult x) = (map (map comult) (comult x))
  leftCounit : ∀ x : carrier, (map counit (comult x)).leftContract = x
  rightCounit : ∀ x : carrier, (map counit (comult x)).rightContract = x

structure CoalgebraHom (C D : Coalgebra R) where
  f : C.carrier →ₗ[R] D.carrier
  preserves_comult : ∀ x : C.carrier, map f (C.comult x) = D.comult (f x)
  preserves_counit : ∀ x : C.carrier, D.counit (f x) = C.counit x

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse