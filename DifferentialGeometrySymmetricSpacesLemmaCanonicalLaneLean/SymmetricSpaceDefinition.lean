import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure SymmetricSpace (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  involutiveIsometry : M → M
  fixedPointSet : Set M
  geodesicSymmetric : Prop
  involutiveIsometryInvolution : involutiveIsometry ∘ involutiveIsometry = id
  fixedPointSetClosed : IsClosed fixedPointSet
  geodesicSymmetricCondition : Prop

structure SymmetricSpaceEvidence (S : SymmetricSpace M) where
  involutiveIsometryInvolutionClosed : S.involutiveIsometryInvolution
  fixedPointSetClosedClosed : S.fixedPointSetClosed
  geodesicSymmetricConditionClosed : S.geodesicSymmetricCondition

def SymmetricSpaceClosed (S : SymmetricSpace M) : Prop :=
  S.involutiveIsometryInvolution ∧ S.fixedPointSetClosed ∧ S.geodesicSymmetricCondition

theorem symmetric_space_closed_from_evidence (S : SymmetricSpace M) (E : SymmetricSpaceEvidence S) :
    SymmetricSpaceClosed S := by
  exact And.intro E.involutiveIsometryInvolutionClosed
    (And.intro E.fixedPointSetClosedClosed E.geodesicSymmetricConditionClosed)

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse
