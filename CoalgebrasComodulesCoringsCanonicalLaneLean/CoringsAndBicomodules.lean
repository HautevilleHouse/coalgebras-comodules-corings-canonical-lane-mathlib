import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoalgebrasComodulesCoringsCanonicalLaneLean.CoalgebraDefinitions
import HautevilleHouse.CoalgebrasComodulesCoringsCanonicalLaneLean.ComoduleStructure

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure Coring (A : Type u) [CommRing A] where
  carrier : Type v
  [addCommGroup : AddCommGroup carrier]
  [bimodule : Module (A ⊗[ℤ] A) carrier] -- simplified
  comult : carrier →ₗ[A] carrier ⊗[A] carrier
  counit : carrier →ₗ[A] A
  coassoc : ∀ x : carrier, (map (id := id) comult) (comult x) = (map (map comult) (comult x))
  leftCounit : ∀ x : carrier, (map counit (comult x)).leftContract = x
  rightCounit : ∀ x : carrier, (map counit (comult x)).rightContract = x

structure Bicomodule (C D : Coalgebra R) where
  carrier : Type v
  [addCommGroup : AddCommGroup carrier]
  [module : Module R carrier]
  leftComult : carrier →ₗ[R] carrier ⊗[R] C.carrier
  rightComult : carrier →ₗ[R] carrier ⊗[R] D.carrier
  coassocLeft : ∀ x : carrier, (map (map (id := id) leftComult)) (leftComult x) = (map (leftComult) (leftComult x))
  coassocRight : ∀ x : carrier, (map (map (id := id) rightComult)) (rightComult x) = (map (rightComult) (rightComult x))
  leftRightComm : ∀ x : carrier, (map (map leftComult) (rightComult x)) = (map (map rightComult) (leftComult x))

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse