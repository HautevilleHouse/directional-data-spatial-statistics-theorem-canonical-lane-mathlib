import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure SufficiencyPackage where
  sampleSpace : Type u
  statistic : Type v
  distributionFamily : Type w
  sufficient : Prop
  factorization : Prop
  factorizationTerm : factorization

structure SufficiencyEvidence (S : SufficiencyPackage) where
  sufficientClosed : S.sufficient
  factorizationClosed : S.factorization

def SufficiencyClosed (S : SufficiencyPackage) : Prop :=
  S.sufficient ∧ S.factorization

theorem sufficiency_closed_from_evidence (S : SufficiencyPackage) (Ev : SufficiencyEvidence S) : SufficiencyClosed S := by
  exact And.intro Ev.sufficientClosed Ev.factorizationClosed

structure NeymanPearsonLemmaPackage where
  hypotheses : Type u
  test : Type v
  likelihoodRatio : Prop
  mostPowerful : Prop
  thresholdExists : Prop
  likelihoodRatioTerm : likelihoodRatio

structure NeymanPearsonEvidence (N : NeymanPearsonLemmaPackage) where
  mostPowerfulClosed : N.mostPowerful
  thresholdExistsClosed : N.thresholdExists

def NeymanPearsonClosed (N : NeymanPearsonLemmaPackage) : Prop :=
  N.mostPowerful ∧ N.thresholdExists

theorem neyman_pearson_closed_from_evidence (N : NeymanPearsonLemmaPackage) (Ev : NeymanPearsonEvidence N) : NeymanPearsonClosed N := by
  exact And.intro Ev.mostPowerfulClosed Ev.thresholdExistsClosed

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse