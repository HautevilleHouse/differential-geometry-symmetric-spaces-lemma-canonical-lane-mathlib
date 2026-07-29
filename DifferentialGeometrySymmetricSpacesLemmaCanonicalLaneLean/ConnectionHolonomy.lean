import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

structure ConnectionPackage where
  connection : Type u
  connectionOneForm : Type v
  parallelTransport : Type w
  holonomyGroup : Type x
  curvatureTwoForm : Type y
  connectionFlat : Prop
  torsionFree : Prop
  metricCompatible : Prop

structure ConnectionEvidence (C : ConnectionPackage) where
  connectionFlatClosed : C.connectionFlat
  torsionFreeClosed : C.torsionFree
  metricCompatibleClosed : C.metricCompatible

def ConnectionClosed (C : ConnectionPackage) : Prop :=
  C.connectionFlat ∧ C.torsionFree ∧ C.metricCompatible

theorem connection_closed_from_evidence
    (C : ConnectionPackage) (E : ConnectionEvidence C) : ConnectionClosed C := by
  exact And.intro E.connectionFlatClosed
    (And.intro E.torsionFreeClosed E.metricCompatibleClosed)

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse