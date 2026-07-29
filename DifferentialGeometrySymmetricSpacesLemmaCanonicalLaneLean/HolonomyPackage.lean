import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure HolonomyPackage (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  connection : Type v
  holonomyGroup : Type w
  reducedHolonomyGroup : Type w
  holonomyInvariant : Prop
  curvatureRelation : Prop
  holonomyInvariantTerm : holonomyInvariant
  curvatureRelationTerm : curvatureRelation

structure HolonomyEvidence (H : HolonomyPackage M) where
  holonomyInvariantClosed : H.holonomyInvariant
  curvatureRelationClosed : H.curvatureRelation

def HolonomyClosed (H : HolonomyPackage M) : Prop :=
  H.holonomyInvariant ∧ H.curvatureRelation

theorem holonomy_closed_from_evidence (H : HolonomyPackage M) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.holonomyInvariantClosed E.curvatureRelationClosed

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse