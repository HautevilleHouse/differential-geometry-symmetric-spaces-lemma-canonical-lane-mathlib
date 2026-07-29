import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure HolonomyBundlePackage where
  baseManifold : Type u
  fiberType : Type v
  connection : Type w
  holonomyGroup : Type x
  curvatureForm : Prop
  AmbroseSingerTheorem : Prop
  reducedHolonomy : Prop

structure HolonomyBundleEvidence (H : HolonomyBundlePackage) where
  curvatureFormClosed : H.curvatureForm
  AmbroseSingerTheoremClosed : H.AmbroseSingerTheorem
  reducedHolonomyClosed : H.reducedHolonomy

def HolonomyBundleClosed (H : HolonomyBundlePackage) : Prop :=
  H.curvatureForm ∧ H.AmbroseSingerTheorem ∧ H.reducedHolonomy

theorem holonomy_bundle_closed_from_evidence (H : HolonomyBundlePackage)
    (E : HolonomyBundleEvidence H) : HolonomyBundleClosed H := by
  exact And.intro E.curvatureFormClosed
    (And.intro E.AmbroseSingerTheoremClosed E.reducedHolonomyClosed)

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse