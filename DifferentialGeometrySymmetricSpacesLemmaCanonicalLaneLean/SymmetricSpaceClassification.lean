import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure SymmetricSpaceClassificationPackage where
  irreducibleComponents : Type u
  classificationTheorem : Prop
  listCompactSymmetricSpaces : Prop
  listNonCompactSymmetricSpaces : Prop

structure SymmetricSpaceClassificationEvidence (C : SymmetricSpaceClassificationPackage) where
  classificationTheoremClosed : C.classificationTheorem
  listCompactSymmetricSpacesClosed : C.listCompactSymmetricSpaces
  listNonCompactSymmetricSpacesClosed : C.listNonCompactSymmetricSpaces

def SymmetricSpaceClassificationClosed (C : SymmetricSpaceClassificationPackage) : Prop :=
  C.classificationTheorem ∧ C.listCompactSymmetricSpaces ∧ C.listNonCompactSymmetricSpaces

theorem symmetric_space_classification_closed_from_evidence
    (C : SymmetricSpaceClassificationPackage) (E : SymmetricSpaceClassificationEvidence C) :
    SymmetricSpaceClassificationClosed C := by
  exact And.intro E.classificationTheoremClosed
    (And.intro E.listCompactSymmetricSpacesClosed E.listNonCompactSymmetricSpacesClosed)

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse