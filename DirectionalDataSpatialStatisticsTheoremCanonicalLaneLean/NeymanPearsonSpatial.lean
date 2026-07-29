import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure NeymanPearsonSpatialPackage where
  nullHypothesis : Prop
  alternativeHypothesis : Prop
  testStatistic : Type u
  criticalRegion : Type v
  powerFunction : Type w
  mostPowerfulTestExists : Prop
  nullHypothesisDefined : Prop
  alternativeHypothesisDefined : Prop
  testStatisticDefined : Prop
  criticalRegionDefined : Prop
  powerFunctionDefined : Prop
  mostPowerfulTestExistsClosed : mostPowerfulTestExists

structure NeymanPearsonSpatialEvidence
    (N : NeymanPearsonSpatialPackage) where
  nullHypothesisDefinedClosed : N.nullHypothesisDefined
  alternativeHypothesisDefinedClosed :
    N.alternativeHypothesisDefined
  testStatisticDefinedClosed : N.testStatisticDefined
  criticalRegionDefinedClosed : N.criticalRegionDefined
  powerFunctionDefinedClosed : N.powerFunctionDefined
  mostPowerfulTestExistsClosed : N.mostPowerfulTestExists

def NeymanPearsonSpatialClosed
    (N : NeymanPearsonSpatialPackage) : Prop :=
  N.nullHypothesisDefined ∧
  N.alternativeHypothesisDefined ∧
  N.testStatisticDefined ∧
  N.criticalRegionDefined ∧
  N.powerFunctionDefined ∧
  N.mostPowerfulTestExists

theorem neyman_pearson_spatial_closed_from_evidence
    (N : NeymanPearsonSpatialPackage)
    (E : NeymanPearsonSpatialEvidence N) :
    NeymanPearsonSpatialClosed N := by
  exact And.intro E.nullHypothesisDefinedClosed
    (And.intro E.alternativeHypothesisDefinedClosed
      (And.intro E.testStatisticDefinedClosed
        (And.intro E.criticalRegionDefinedClosed
          (And.intro E.powerFunctionDefinedClosed
            E.mostPowerfulTestExistsClosed))))

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse