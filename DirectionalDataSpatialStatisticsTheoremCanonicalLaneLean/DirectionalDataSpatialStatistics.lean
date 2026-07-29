import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure DirectionalDataSpatialStatisticsPackage where
  angularCoordinateSystem : Type u
  sphericalDataModel : Type v
  spatialLocationSet : Type w
  directionalCovarianceFunction : Type
  trendSurfaceModel : Type
  anisotropyModel : Type
  krigingPredictor : Type
  crossValidationStatistic : Type
  angularCoordinateSystemDefined : Prop
  sphericalDataModelDefined : Prop
  spatialLocationSetDefined : Prop
  directionalCovarianceFunctionDefined : Prop
  trendSurfaceModelDefined : Prop
  anisotropyModelDefined : Prop
  krigingPredictorDefined : Prop
  crossValidationStatisticDefined : Prop

structure DirectionalDataSpatialStatisticsEvidence (P : DirectionalDataSpatialStatisticsPackage) where
  angularCoordinateSystemDefinedClosed : P.angularCoordinateSystemDefined
  sphericalDataModelDefinedClosed : P.sphericalDataModelDefined
  spatialLocationSetDefinedClosed : P.spatialLocationSetDefined
  directionalCovarianceFunctionDefinedClosed :
    P.directionalCovarianceFunctionDefined
  trendSurfaceModelDefinedClosed : P.trendSurfaceModelDefined
  anisotropyModelDefinedClosed : P.anisotropyModelDefined
  krigingPredictorDefinedClosed : P.krigingPredictorDefined
  crossValidationStatisticDefinedClosed :
    P.crossValidationStatisticDefined

def DirectionalDataSpatialStatisticsClosed
    (P : DirectionalDataSpatialStatisticsPackage) : Prop :=
  P.angularCoordinateSystemDefined ∧
  P.sphericalDataModelDefined ∧
  P.spatialLocationSetDefined ∧
  P.directionalCovarianceFunctionDefined ∧
  P.trendSurfaceModelDefined ∧
  P.anisotropyModelDefined ∧
  P.krigingPredictorDefined ∧
  P.crossValidationStatisticDefined

theorem directional_data_spatial_statistics_closed_from_evidence
    (P : DirectionalDataSpatialStatisticsPackage)
    (E : DirectionalDataSpatialStatisticsEvidence P) :
    DirectionalDataSpatialStatisticsClosed P := by
  exact And.intro E.angularCoordinateSystemDefinedClosed
    (And.intro E.sphericalDataModelDefinedClosed
      (And.intro E.spatialLocationSetDefinedClosed
        (And.intro E.directionalCovarianceFunctionDefinedClosed
          (And.intro E.trendSurfaceModelDefinedClosed
            (And.intro E.anisotropyModelDefinedClosed
              (And.intro E.krigingPredictorDefinedClosed
                E.crossValidationStatisticDefinedClosed))))))

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse