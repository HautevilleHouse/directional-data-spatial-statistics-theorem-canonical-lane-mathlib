import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure SpatialCorrelationModelPackage where
  spatialProcess : Type u
  covarianceFunction : Prop
  variogramModel : Prop
  isotropyProperty : Prop
  stationarityProperty : Prop

structure SpatialCorrelationModelEvidence (S : SpatialCorrelationModelPackage) where
  covarianceFunctionClosed : S.covarianceFunction
  variogramModelClosed : S.variogramModel
  isotropyPropertyClosed : S.isotropyProperty
  stationarityPropertyClosed : S.stationarityProperty

def SpatialCorrelationModelClosed (S : SpatialCorrelationModelPackage) : Prop :=
  S.covarianceFunction ∧ S.variogramModel ∧ S.isotropyProperty ∧ S.stationarityProperty

theorem spatial_correlation_model_closed_from_evidence
    (S : SpatialCorrelationModelPackage) (E : SpatialCorrelationModelEvidence S) :
    SpatialCorrelationModelClosed S := by
  exact And.intro E.covarianceFunctionClosed
    (And.intro E.variogramModelClosed
      (And.intro E.isotropyPropertyClosed E.stationarityPropertyClosed))

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse