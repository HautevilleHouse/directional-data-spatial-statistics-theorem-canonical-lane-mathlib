import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure DirectionalSpatialModel where
  carrier : Type
  topology : TopologicalSpace carrier
  sphere : Type
  sphereTopology : TopologicalSpace sphere
  embedding : carrier → sphere
  embeddingContinuous : Continuous embedding

def spatialModelClosed (M : DirectionalSpatialModel) : Prop := True

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse