import HautevilleHouse.CoalgebrasComodulesCoringsCanonicalLaneLean.FinalTheorem
import HautevilleHouse.CoalgebrasComodulesCoringsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  coalgebraConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "coalgebras-comodules-corings-canonical-lane",
    theoremName := "Coalgebra Admissible Closure",
    theoremObject := "coalgebra admissible closure internalized through bridge and gate",
    classicalBoundary := "classical source boundary carried by constrained coalgebra closure",
    coalgebraConstrainedStatement := "coalgebra-constrained theorem certificate internalized through bridge and gate",
    certificateLane := "coalgebra_constrained",
    carriedRemainder := "classical source boundary carried by constrained coalgebra closure" }

end CoalgebrasComodulesCoringsCanonicalLaneLean
end HautevilleHouse