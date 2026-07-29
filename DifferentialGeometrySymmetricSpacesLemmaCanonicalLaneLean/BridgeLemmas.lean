import DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SymmetricSpaceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGeometrySymmetricSpacesLemmaCanonicalLaneLean
end HautevilleHouse
