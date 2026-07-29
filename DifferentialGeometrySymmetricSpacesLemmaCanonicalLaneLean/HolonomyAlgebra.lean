import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure HolonomyAlgebraPackage where
  holonomyGroup : Type u
  lieAlgebraRepresentation : Type v
  holonomyInvariantSubspaces : Prop
  holonomyGroupFlat : Prop
  curvatureHolonomyCorrespondence : Prop

structure HolonomyAlgebraEvidence (H : HolonomyAlgebraPackage) where
  holonomyInvariantSubspacesClosed : H.holonomyInvariantSubspaces
  holonomyGroupFlatClosed : H.holonomyGroupFlat
  curvatureHolonomyCorrespondenceClosed : H.curvatureHolonomyCorrespondence

def HolonomyAlgebraClosed (H : HolonomyAlgebraPackage) : Prop :=
  H.holonomyInvariantSubspaces ∧ H.holonomyGroupFlat ∧ H.curvatureHolonomyCorrespondence

theorem holonomy_algebra_closed_from_evidence (H : HolonomyAlgebraPackage) (E : HolonomyAlgebraEvidence H) :
    HolonomyAlgebraClosed H := by
  exact And.intro E.holonomyInvariantSubspacesClosed
    (And.intro E.holonomyGroupFlatClosed E.curvatureHolonomyCorrespondenceClosed)

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse
