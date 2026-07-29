import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure SymmetricSpaceCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  riemannCurvatureTensor : Type w
  ricciTensor : Type x
  scalarCurvature : Type y
  curvatureInvariant : Prop
  parallelCurvature : Prop
  symmetricSpaceCondition : Prop

structure SymmetricSpaceCurvatureEvidence (G : SymmetricSpaceCurvaturePackage) where
  curvatureInvariantClosed : G.curvatureInvariant
  parallelCurvatureClosed : G.parallelCurvature
  symmetricSpaceConditionClosed : G.symmetricSpaceCondition

def SymmetricSpaceCurvatureClosed (G : SymmetricSpaceCurvaturePackage) : Prop :=
  G.curvatureInvariant ∧ G.parallelCurvature ∧ G.symmetricSpaceCondition

theorem symmetric_space_curvature_closed_from_evidence
    (G : SymmetricSpaceCurvaturePackage) (E : SymmetricSpaceCurvatureEvidence G) :
    SymmetricSpaceCurvatureClosed G := by
  exact And.intro E.curvatureInvariantClosed
    (And.intro E.parallelCurvatureClosed E.symmetricSpaceConditionClosed)

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse