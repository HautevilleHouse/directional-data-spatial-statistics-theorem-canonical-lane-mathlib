import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean.DirectionalDataSpatialStatistics

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure CovarianceModelPackage (D : DirectionalDataPackage) where
  covarianceFunction : D.sampleSpace → D.sampleSpace → ℝ
  positiveDefinite : Prop
  stationary : Prop
  isotropic : Prop
  positiveDefiniteTerm : positiveDefinite
  stationaryTerm : stationary
  isotropicTerm : isotropic

def CovarianceModelClosed {D : DirectionalDataPackage} (C : CovarianceModelPackage D) : Prop :=
  C.positiveDefinite ∧ C.stationary ∧ C.isotropic

theorem covariance_model_closed {D : DirectionalDataPackage} (C : CovarianceModelPackage D) : CovarianceModelClosed C := by
  exact And.intro C.positiveDefiniteTerm (And.intro C.stationaryTerm C.isotropicTerm)

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse