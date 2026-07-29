import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure GeodesicSymmetryLemma (S : SymmetricSpaceStructure M) where
  geodesicReflectionInvariant : Prop
  parallelTransportSymmetry : Prop
  geodesicCompleteness : Prop
  geodesicReflectionInvariantTerm : geodesicReflectionInvariant
  parallelTransportSymmetryTerm : parallelTransportSymmetry
  geodesicCompletenessTerm : geodesicCompleteness

structure GeodesicSymmetryEvidence (L : GeodesicSymmetryLemma S) where
  geodesicReflectionInvariantClosed : L.geodesicReflectionInvariant
  parallelTransportSymmetryClosed : L.parallelTransportSymmetry
  geodesicCompletenessClosed : L.geodesicCompleteness

def GeodesicSymmetryClosed (L : GeodesicSymmetryLemma S) : Prop :=
  L.geodesicReflectionInvariant ∧ L.parallelTransportSymmetry ∧ L.geodesicCompleteness

theorem geodesic_symmetry_closed_from_evidence (L : GeodesicSymmetryLemma S) (E : GeodesicSymmetryEvidence L) : GeodesicSymmetryClosed L := by
  exact And.intro E.geodesicReflectionInvariantClosed (And.intro E.parallelTransportSymmetryClosed E.geodesicCompletenessClosed)

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse