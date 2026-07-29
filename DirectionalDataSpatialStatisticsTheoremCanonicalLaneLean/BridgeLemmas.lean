import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  admittedClosure A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.endpointSatisfied

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse