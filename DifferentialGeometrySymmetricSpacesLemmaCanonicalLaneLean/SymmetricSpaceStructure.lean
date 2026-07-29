import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure SymmetricSpace (M : Type u) [TopologicalSpace M] where
  geodesicInvolution : ∀ (p : M), M → M
  involutionSmooth : Prop
  involutionIsIsometryEachPoint : Prop
  fixedPointSet : Set M
  fixedPointSetIsTotallyGeodesic : Prop
  symmetricStructureConsistent : Prop

structure SymmetricSpaceEvidence (M : Type u) [TopologicalSpace M] (S : SymmetricSpace M) where
  involutionSmoothClosed : S.involutionSmooth
  involutionIsIsometryEachPointClosed : S.involutionIsIsometryEachPoint
  fixedPointSetIsTotallyGeodesicClosed : S.fixedPointSetIsTotallyGeodesic
  symmetricStructureConsistentClosed : S.symmetricStructureConsistent

def SymmetricSpaceClosed (M : Type u) [TopologicalSpace M] (S : SymmetricSpace M) : Prop :=
  S.involutionSmooth ∧ S.involutionIsIsometryEachPoint ∧
  S.fixedPointSetIsTotallyGeodesic ∧ S.symmetricStructureConsistent

theorem symmetric_space_closed_from_evidence (M : Type u) [TopologicalSpace M]
    (S : SymmetricSpace M) (E : SymmetricSpaceEvidence M S) : SymmetricSpaceClosed M S :=
  And.intro E.involutionSmoothClosed
    (And.intro E.involutionIsIsometryEachPointClosed
      (And.intro E.fixedPointSetIsTotallyGeodesicClosed E.symmetricStructureConsistentClosed))

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse