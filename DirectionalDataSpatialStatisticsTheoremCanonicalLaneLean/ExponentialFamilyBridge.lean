import canonicalLaneMathlib.AdmissibleClass
import DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean.DirectionalSpatialModel

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure ExponentialFamily where
  sufficientStatistic : Type
  logPartition : Type
  naturalParameter : Type

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | .directionalSpatialModel M => spatialModelClosed M
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  rcases A.object with (M)
  · trivial
  · exact A.endpointSatisfied

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse