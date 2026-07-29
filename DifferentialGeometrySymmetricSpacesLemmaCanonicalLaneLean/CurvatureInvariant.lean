import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure CurvatureInvariantPackage where
  sectionalCurvatureBounds : Prop
  ricciCurvatureFlat : Prop
  scalarCurvatureConstant : Prop
  parallelCurvatureTensor : Prop

structure CurvatureInvariantEvidence (C : CurvatureInvariantPackage) where
  sectionalCurvatureBoundsClosed : C.sectionalCurvatureBounds
  ricciCurvatureFlatClosed : C.ricciCurvatureFlat
  scalarCurvatureConstantClosed : C.scalarCurvatureConstant
  parallelCurvatureTensorClosed : C.parallelCurvatureTensor

def CurvatureInvariantClosed (C : CurvatureInvariantPackage) : Prop :=
  C.sectionalCurvatureBounds ∧ C.ricciCurvatureFlat ∧
  C.scalarCurvatureConstant ∧ C.parallelCurvatureTensor

theorem curvature_invariant_closed_from_evidence (C : CurvatureInvariantPackage) (E : CurvatureInvariantEvidence C) :
    CurvatureInvariantClosed C := by
  exact And.intro E.sectionalCurvatureBoundsClosed
    (And.intro E.ricciCurvatureFlatClosed
      (And.intro E.scalarCurvatureConstantClosed E.parallelCurvatureTensorClosed))

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse
