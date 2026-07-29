import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean.SufficiencyExponentialFamily

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure MLEstimatorPackage (D : DirectionalDataPackage) (E : ExponentialFamilyPackage D) where
  logLikelihood : (E.sufficientStatistic → ℝ) → ℝ
  mleEstimator : E.sufficientStatistic
  consistencyCondition : Prop
  logLikelihoodTerm : logLikelihood = fun theta => 0 -- placeholder
  mleEstimatorTerm : mleEstimator = fun x => 0
  consistencyConditionTerm : consistencyCondition

structure MLEstimatorEvidence {D : DirectionalDataPackage} {E : ExponentialFamilyPackage D} (M : MLEstimatorPackage D E) where
  consistencyClosed : M.consistencyCondition

def MLEstimatorClosed {D : DirectionalDataPackage} {E : ExponentialFamilyPackage D} (M : MLEstimatorPackage D E) : Prop :=
  M.consistencyCondition

theorem mle_estimator_closed_from_evidence {D : DirectionalDataPackage} {E : ExponentialFamilyPackage D} (M : MLEstimatorPackage D E) (Ev : MLEstimatorEvidence M) : MLEstimatorClosed M := by
  exact Ev.consistencyClosed

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse