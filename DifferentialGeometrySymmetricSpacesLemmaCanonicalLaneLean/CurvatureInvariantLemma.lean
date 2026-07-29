import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure CurvatureInvariantLemma (S : SymmetricSpaceStructure M) where
  riemannTensorInvariant : Prop
  ricciTensorInvariant : Prop
  scalarCurvatureInvariant : Prop
  sectionalCurvatureInvariant : Prop
  riemannTensorInvariantTerm : riemannTensorInvariant
  ricciTensorInvariantTerm : ricciTensorInvariant
  scalarCurvatureInvariantTerm : scalarCurvatureInvariant
  sectionalCurvatureInvariantTerm : sectionalCurvatureInvariant

structure CurvatureInvariantEvidence (L : CurvatureInvariantLemma S) where
  riemannTensorInvariantClosed : L.riemannTensorInvariant
  ricciTensorInvariantClosed : L.ricciTensorInvariant
  scalarCurvatureInvariantClosed : L.scalarCurvatureInvariant
  sectionalCurvatureInvariantClosed : L.sectionalCurvatureInvariant

def CurvatureInvariantClosed (L : CurvatureInvariantLemma S) : Prop :=
  L.riemannTensorInvariant ∧ L.ricciTensorInvariant ∧ L.scalarCurvatureInvariant ∧ L.sectionalCurvatureInvariant

theorem curvature_invariant_closed_from_evidence (L : CurvatureInvariantLemma S) (E : CurvatureInvariantEvidence L) : CurvatureInvariantClosed L := by
  exact And.intro E.riemannTensorInvariantClosed (And.intro E.ricciTensorInvariantClosed (And.intro E.scalarCurvatureInvariantClosed E.sectionalCurvatureInvariantClosed))

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse