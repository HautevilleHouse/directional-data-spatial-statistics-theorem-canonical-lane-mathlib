import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean.SpatialCovarianceModel

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure KrigingPredictionPackage (D : DirectionalDataPackage) (C : CovarianceModelPackage D) where
  observedLocations : List D.sampleSpace
  predictedLocation : D.sampleSpace
  krigingWeights : List ℝ
  bestLinearUnbiasedPrediction : Prop
  varianceMinimized : Prop
  krigingWeightsTerm : krigingWeights.length = observedLocations.length
  bestLinearUnbiasedPredictionTerm : bestLinearUnbiasedPrediction
  varianceMinimizedTerm : varianceMinimized

def KrigingPredictionClosed {D : DirectionalDataPackage} {C : CovarianceModelPackage D} (K : KrigingPredictionPackage D C) : Prop :=
  K.bestLinearUnbiasedPrediction ∧ K.varianceMinimized

theorem kriging_prediction_closed {D : DirectionalDataPackage} {C : CovarianceModelPackage D} (K : KrigingPredictionPackage D C) : KrigingPredictionClosed K := by
  exact And.intro K.bestLinearUnbiasedPredictionTerm K.varianceMinimizedTerm

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse