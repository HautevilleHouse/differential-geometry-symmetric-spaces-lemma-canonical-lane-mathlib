import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure CartanDecompositionPackage where
  lieAlgebra : Type u
  involution : Prop
  cartanDecomposition : Prop
  orthogonalSymmetry : Prop

structure CartanDecompositionEvidence (C : CartanDecompositionPackage) where
  involutionClosed : C.involution
  cartanDecompositionClosed : C.cartanDecomposition
  orthogonalSymmetryClosed : C.orthogonalSymmetry

def CartanDecompositionClosed (C : CartanDecompositionPackage) : Prop :=
  C.involution ∧ C.cartanDecomposition ∧ C.orthogonalSymmetry

theorem cartan_decomposition_closed_from_evidence
    (C : CartanDecompositionPackage) (E : CartanDecompositionEvidence C) :
    CartanDecompositionClosed C := by
  exact And.intro E.involutionClosed
    (And.intro E.cartanDecompositionClosed E.orthogonalSymmetryClosed)

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse