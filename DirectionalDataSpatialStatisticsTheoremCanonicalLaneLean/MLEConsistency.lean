import canonicalLaneMathlib.AdmissibleClass
import DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean.ExponentialFamilyBridge

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure MLEstimator where
  sampleSize : ℕ
  estimate : Type
  consistent : Prop

def mleConsistencyClosed (M : MLEstimator) : Prop := M.consistent

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse