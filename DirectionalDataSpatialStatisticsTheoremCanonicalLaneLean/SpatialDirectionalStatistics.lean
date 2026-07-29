import DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean.AdmissibleClass
import Mathlib.Statistics.Directional

/-!
# Spatial Directional Statistics Package
-/

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure SpatialDirectionalModel where
  directionSpace : Type u
  samplingLocations : Type v
  circularDistribution : Type w
  meanDirection : directionSpace → Type u
  concentration : Prop
  isotropy : Prop

def SpatialDirectionalClosed (M : SpatialDirectionalModel) : Prop :=
  M.concentration ∧ M.isotropy

structure DirectionalDataAdmittedObject where
  model : SpatialDirectionalModel
  conclusion : SpatialDirectionalClosed model

def DirectionalDataWitnessClosed (O : DirectionalDataAdmittedObject) : Prop :=
  SpatialDirectionalClosed O.model

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse