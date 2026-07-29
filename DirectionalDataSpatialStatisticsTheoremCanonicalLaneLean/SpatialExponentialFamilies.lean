import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure SpatialExponentialFamilyPackage where
  sufficientStatistic : Type u
  naturalParameter : Type v
  logPartitionFunction : Type w
  meanValueParameterization : Type
  dispersionParameter : Type
  spatialCorrelationStructure : Type
  sufficientStatisticDefined : Prop
  naturalParameterDefined : Prop
  logPartitionFunctionDefined : Prop
  meanValueParameterizationDefined : Prop
  dispersionParameterDefined : Prop
  spatialCorrelationStructureDefined : Prop

structure SpatialExponentialFamilyEvidence
    (S : SpatialExponentialFamilyPackage) where
  sufficientStatisticDefinedClosed : S.sufficientStatisticDefined
  naturalParameterDefinedClosed : S.naturalParameterDefined
  logPartitionFunctionDefinedClosed : S.logPartitionFunctionDefined
  meanValueParameterizationDefinedClosed :
    S.meanValueParameterizationDefined
  dispersionParameterDefinedClosed :
    S.dispersionParameterDefined
  spatialCorrelationStructureDefinedClosed :
    S.spatialCorrelationStructureDefined

def SpatialExponentialFamilyClosed
    (S : SpatialExponentialFamilyPackage) : Prop :=
  S.sufficientStatisticDefined ∧
  S.naturalParameterDefined ∧
  S.logPartitionFunctionDefined ∧
  S.meanValueParameterizationDefined ∧
  S.dispersionParameterDefined ∧
  S.spatialCorrelationStructureDefined

theorem spatial_exponential_family_closed_from_evidence
    (S : SpatialExponentialFamilyPackage)
    (E : SpatialExponentialFamilyEvidence S) :
    SpatialExponentialFamilyClosed S := by
  exact And.intro E.sufficientStatisticDefinedClosed
    (And.intro E.naturalParameterDefinedClosed
      (And.intro E.logPartitionFunctionDefinedClosed
        (And.intro E.meanValueParameterizationDefinedClosed
          (And.intro E.dispersionParameterDefinedClosed
            E.spatialCorrelationStructureDefinedClosed))))

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse