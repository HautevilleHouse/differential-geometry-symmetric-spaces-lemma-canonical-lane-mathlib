import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure SymmetricSpaceLemmaPackage where
  symmetricSpace : Type u
  curvatureInvariant : Prop
  holonomyAlgebra : Prop
  localSymmetric : Prop
  lemmaConclusion : Prop

structure SymmetricSpaceLemmaEvidence (L : SymmetricSpaceLemmaPackage) where
  curvatureInvariantClosed : L.curvatureInvariant
  holonomyAlgebraClosed : L.holonomyAlgebra
  localSymmetricClosed : L.localSymmetric
  lemmaConclusionClosed : L.lemmaConclusion

def SymmetricSpaceLemmaClosed (L : SymmetricSpaceLemmaPackage) : Prop :=
  L.curvatureInvariant ∧ L.holonomyAlgebra ∧
  L.localSymmetric ∧ L.lemmaConclusion

theorem symmetric_space_lemma_closed_from_evidence (L : SymmetricSpaceLemmaPackage)
    (E : SymmetricSpaceLemmaEvidence L) : SymmetricSpaceLemmaClosed L := by
  exact And.intro E.curvatureInvariantClosed
    (And.intro E.holonomyAlgebraClosed
      (And.intro E.localSymmetricClosed
        E.lemmaConclusionClosed))

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse