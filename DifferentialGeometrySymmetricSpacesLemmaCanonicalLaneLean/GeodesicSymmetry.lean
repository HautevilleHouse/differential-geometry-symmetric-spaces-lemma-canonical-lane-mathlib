import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure GeodesicSymmetryPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  geodesicInvolution : Prop
  localIsometryCondition : Prop
  fixedPointSetStructure : Prop

structure GeodesicSymmetryEvidence (G : GeodesicSymmetryPackage) where
  geodesicInvolutionClosed : G.geodesicInvolution
  localIsometryConditionClosed : G.localIsometryCondition
  fixedPointSetStructureClosed : G.fixedPointSetStructure

def GeodesicSymmetryClosed (G : GeodesicSymmetryPackage) : Prop :=
  G.geodesicInvolution ∧ G.localIsometryCondition ∧ G.fixedPointSetStructure

theorem geodesic_symmetry_closed_from_evidence
    (G : GeodesicSymmetryPackage) (E : GeodesicSymmetryEvidence G) :
    GeodesicSymmetryClosed G := by
  exact And.intro E.geodesicInvolutionClosed
    (And.intro E.localIsometryConditionClosed E.fixedPointSetStructureClosed)

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse