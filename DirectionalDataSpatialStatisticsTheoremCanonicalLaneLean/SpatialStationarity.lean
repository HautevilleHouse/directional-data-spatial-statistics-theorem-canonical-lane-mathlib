import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure SpatialStationarityPackage where
  indexSet : Type u
  randomField : Type v
  covarianceFunction : Type w
  weaklyStationary : Prop
  isotropic : Prop
  weaklyStationaryTerm : weaklyStationary
  isotropicTerm : isotropic

structure SpatialStationarityEvidence (S : SpatialStationarityPackage) where
  weaklyStationaryClosed : S.weaklyStationary
  isotropicClosed : S.isotropic

def SpatialStationarityClosed (S : SpatialStationarityPackage) : Prop :=
  S.weaklyStationary ∧ S.isotropic

theorem spatial_stationarity_closed_from_evidence (S : SpatialStationarityPackage) (Ev : SpatialStationarityEvidence S) : SpatialStationarityClosed S := by
  exact And.intro Ev.weaklyStationaryClosed Ev.isotropicClosed

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse