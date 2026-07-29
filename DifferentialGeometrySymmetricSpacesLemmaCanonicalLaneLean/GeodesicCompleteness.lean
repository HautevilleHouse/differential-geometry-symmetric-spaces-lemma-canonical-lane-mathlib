import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure GeodesicCompletenessPackage where
  geodesicCompleteness : Prop
  exponentialMapSurjective : Prop
  parallelTransportDefined : Prop
  cartanHadamardTheorem : Prop

structure GeodesicCompletenessEvidence (G : GeodesicCompletenessPackage) where
  geodesicCompletenessClosed : G.geodesicCompleteness
  exponentialMapSurjectiveClosed : G.exponentialMapSurjective
  parallelTransportDefinedClosed : G.parallelTransportDefined
  cartanHadamardTheoremClosed : G.cartanHadamardTheorem

def GeodesicCompletenessClosed (G : GeodesicCompletenessPackage) : Prop :=
  G.geodesicCompleteness ∧ G.exponentialMapSurjective ∧
  G.parallelTransportDefined ∧ G.cartanHadamardTheorem

theorem geodesic_completeness_closed_from_evidence (G : GeodesicCompletenessPackage) (E : GeodesicCompletenessEvidence G) :
    GeodesicCompletenessClosed G := by
  exact And.intro E.geodesicCompletenessClosed
    (And.intro E.exponentialMapSurjectiveClosed
      (And.intro E.parallelTransportDefinedClosed E.cartanHadamardTheoremClosed))

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse
