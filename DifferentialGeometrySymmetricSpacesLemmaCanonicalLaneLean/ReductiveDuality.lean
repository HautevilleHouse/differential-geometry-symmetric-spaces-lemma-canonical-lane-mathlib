import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure ReductiveDualityPair (M : Type u) [TopologicalSpace M] where
  lieGroup : Type v
  lieAlgebra : Type w
  involution : lieAlgebra → lieAlgebra
  ±1EigenspaceDecomposition : Prop
  reductiveComplement : Prop
  dualityAdmissible : Prop

structure ReductiveDualityEvidence (M : Type u) [TopologicalSpace M]
    (R : ReductiveDualityPair M) where
  involutionEigenspaceDecompositionClosed : R.±1EigenspaceDecomposition
  reductiveComplementClosed : R.reductiveComplement
  dualityAdmissibleClosed : R.dualityAdmissible

def ReductiveDualityClosed (M : Type u) [TopologicalSpace M]
    (R : ReductiveDualityPair M) : Prop :=
  R.±1EigenspaceDecomposition ∧ R.reductiveComplement ∧ R.dualityAdmissible

theorem reductive_duality_closed_from_evidence (M : Type u) [TopologicalSpace M]
    (R : ReductiveDualityPair M) (E : ReductiveDualityEvidence M R) : ReductiveDualityClosed M R :=
  And.intro E.involutionEigenspaceDecompositionClosed
    (And.intro E.reductiveComplementClosed E.dualityAdmissibleClosed)

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse