import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure MaximumLikelihoodEstimationPackage where
  likelihoodFunction : Prop
  scoreFunction : Prop
  informationMatrix : Prop
  consistencyProperty : Prop
  asymptoticNormality : Prop

structure MaximumLikelihoodEstimationEvidence (M : MaximumLikelihoodEstimationPackage) where
  likelihoodFunctionClosed : M.likelihoodFunction
  scoreFunctionClosed : M.scoreFunction
  informationMatrixClosed : M.informationMatrix
  consistencyPropertyClosed : M.consistencyProperty
  asymptoticNormalityClosed : M.asymptoticNormality

def MaximumLikelihoodEstimationClosed (M : MaximumLikelihoodEstimationPackage) : Prop :=
  M.likelihoodFunction ∧ M.scoreFunction ∧ M.informationMatrix ∧
  M.consistencyProperty ∧ M.asymptoticNormality

theorem maximum_likelihood_estimation_closed_from_evidence
    (M : MaximumLikelihoodEstimationPackage) (E : MaximumLikelihoodEstimationEvidence M) :
    MaximumLikelihoodEstimationClosed M := by
  exact And.intro E.likelihoodFunctionClosed
    (And.intro E.scoreFunctionClosed
      (And.intro E.informationMatrixClosed
        (And.intro E.consistencyPropertyClosed E.asymptoticNormalityClosed)))

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse