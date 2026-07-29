import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure DirectionalDistributionPackage where
  sphere : Type u
  density : Type v
  meanDirection : Type w
  concentration : Type x
  distributionDefined : Prop
  densityNormalized : Prop
  distributionDefinedTerm : distributionDefined
  densityNormalizedTerm : densityNormalized

structure DirectionalDistributionEvidence (D : DirectionalDistributionPackage) where
  distributionDefinedClosed : D.distributionDefined
  densityNormalizedClosed : D.densityNormalized

def DirectionalDistributionClosed (D : DirectionalDistributionPackage) : Prop :=
  D.distributionDefined ∧ D.densityNormalized

theorem directional_distribution_closed_from_evidence (D : DirectionalDistributionPackage) (Ev : DirectionalDistributionEvidence D) : DirectionalDistributionClosed D := by
  exact And.intro Ev.distributionDefinedClosed Ev.densityNormalizedClosed

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse