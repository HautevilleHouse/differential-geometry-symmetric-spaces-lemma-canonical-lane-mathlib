import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure CurvatureInvariantsPackage where
  sectionalCurvatureConstant : Prop
  ricciCurvatureParallel : Prop
  scalarCurvatureConstant : Prop
  jacobiOperatorDiagonalizable : Prop
  parallelCurvatureTensor : Prop

structure CurvatureInvariantsEvidence (C : CurvatureInvariantsPackage) where
  sectionalCurvatureConstantClosed : C.sectionalCurvatureConstant
  ricciCurvatureParallelClosed : C.ricciCurvatureParallel
  scalarCurvatureConstantClosed : C.scalarCurvatureConstant
  jacobiOperatorDiagonalizableClosed : C.jacobiOperatorDiagonalizable
  parallelCurvatureTensorClosed : C.parallelCurvatureTensor

def CurvatureInvariantsClosed (C : CurvatureInvariantsPackage) : Prop :=
  C.sectionalCurvatureConstant ∧ C.ricciCurvatureParallel ∧
  C.scalarCurvatureConstant ∧ C.jacobiOperatorDiagonalizable ∧
  C.parallelCurvatureTensor

theorem curvature_invariants_closed_from_evidence (C : CurvatureInvariantsPackage)
    (E : CurvatureInvariantsEvidence C) : CurvatureInvariantsClosed C :=
  And.intro E.sectionalCurvatureConstantClosed
    (And.intro E.ricciCurvatureParallelClosed
      (And.intro E.scalarCurvatureConstantClosed
        (And.intro E.jacobiOperatorDiagonalizableClosed E.parallelCurvatureTensorClosed)))

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse