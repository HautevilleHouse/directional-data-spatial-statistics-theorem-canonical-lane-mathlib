import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure DirectionalTestProcedurePackage where
  nullHypothesis : Prop
  testStatistic : Prop
  rejectionRegion : Prop
  significanceLevel : Prop
  powerFunction : Prop

structure DirectionalTestProcedureEvidence (T : DirectionalTestProcedurePackage) where
  nullHypothesisClosed : T.nullHypothesis
  testStatisticClosed : T.testStatistic
  rejectionRegionClosed : T.rejectionRegion
  significanceLevelClosed : T.significanceLevel
  powerFunctionClosed : T.powerFunction

def DirectionalTestProcedureClosed (T : DirectionalTestProcedurePackage) : Prop :=
  T.nullHypothesis ∧ T.testStatistic ∧ T.rejectionRegion ∧
  T.significanceLevel ∧ T.powerFunction

theorem directional_test_procedure_closed_from_evidence
    (T : DirectionalTestProcedurePackage) (E : DirectionalTestProcedureEvidence T) :
    DirectionalTestProcedureClosed T := by
  exact And.intro E.nullHypothesisClosed
    (And.intro E.testStatisticClosed
      (And.intro E.rejectionRegionClosed
        (And.intro E.significanceLevelClosed E.powerFunctionClosed)))

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse