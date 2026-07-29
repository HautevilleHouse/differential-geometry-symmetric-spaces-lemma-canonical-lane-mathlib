import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure SymmetricSpaceCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  symmetricStructure : Prop
  riemannianMetric : Type v
  curvatureInvariant : Prop
  parallelCurvature : Prop

structure SymmetricSpaceCurvatureEvidence (G : SymmetricSpaceCurvaturePackage) where
  symmetricStructureClosed : G.symmetricStructure
  curvatureInvariantClosed : G.curvatureInvariant
  parallelCurvatureClosed : G.parallelCurvature

def SymmetricSpaceCurvatureClosed (G : SymmetricSpaceCurvaturePackage) : Prop :=
  G.symmetricStructure ∧ G.curvatureInvariant ∧ G.parallelCurvature

theorem symmetric_space_curvature_closed_from_evidence
    (G : SymmetricSpaceCurvaturePackage) (E : SymmetricSpaceCurvatureEvidence G) :
    SymmetricSpaceCurvatureClosed G := by
  exact And.intro E.symmetricStructureClosed
    (And.intro E.curvatureInvariantClosed E.parallelCurvatureClosed)

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse