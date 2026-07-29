import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure DecompositionTheoremPackage where
  symmetricSpaceDecomposition : Prop
  irreducibleFactorsClassified : Prop
  rankOneFactorCounted : Prop
  flatFactorSeparated : Prop

structure DecompositionTheoremEvidence (D : DecompositionTheoremPackage) where
  symmetricSpaceDecompositionClosed : D.symmetricSpaceDecomposition
  irreducibleFactorsClassifiedClosed : D.irreducibleFactorsClassified
  rankOneFactorCountedClosed : D.rankOneFactorCounted
  flatFactorSeparatedClosed : D.flatFactorSeparated

def DecompositionTheoremClosed (D : DecompositionTheoremPackage) : Prop :=
  D.symmetricSpaceDecomposition ∧ D.irreducibleFactorsClassified ∧
  D.rankOneFactorCounted ∧ D.flatFactorSeparated

theorem decomposition_theorem_closed_from_evidence (D : DecompositionTheoremPackage) (E : DecompositionTheoremEvidence D) :
    DecompositionTheoremClosed D := by
  exact And.intro E.symmetricSpaceDecompositionClosed
    (And.intro E.irreducibleFactorsClassifiedClosed
      (And.intro E.rankOneFactorCountedClosed E.flatFactorSeparatedClosed))

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse
