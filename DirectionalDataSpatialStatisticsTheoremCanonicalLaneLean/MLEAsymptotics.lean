import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure MLEPackage where
  parameterSpace : Type u
  logLikelihood : Type v
  scoreFunction : Type w
  fisherInformation : Type x
  consistency : Prop
  asymptoticNormality : Prop
  consistencyTerm : consistency
  asymptoticNormalityTerm : asymptoticNormality

structure MLEEvidence (M : MLEPackage) where
  consistencyClosed : M.consistency
  asymptoticNormalityClosed : M.asymptoticNormality

def MLEClosed (M : MLEPackage) : Prop :=
  M.consistency ∧ M.asymptoticNormality

theorem mle_closed_from_evidence (M : MLEPackage) (Ev : MLEEvidence M) : MLEClosed M := by
  exact And.intro Ev.consistencyClosed Ev.asymptoticNormalityClosed

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse