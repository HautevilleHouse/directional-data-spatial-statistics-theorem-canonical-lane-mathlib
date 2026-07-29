import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure NeymanPearsonLemmaPackage where
  simpleHypotheses : Prop
  testFunction : Prop
  sizeProperty : Prop
  powerProperty : Prop
  mostPowerfulTest : Prop
  likelihoodRatio : Prop

structure NeymanPearsonLemmaEvidence (N : NeymanPearsonLemmaPackage) where
  simpleHypothesesClosed : N.simpleHypotheses
  testFunctionClosed : N.testFunction
  sizePropertyClosed : N.sizeProperty
  powerPropertyClosed : N.powerProperty
  mostPowerfulTestClosed : N.mostPowerfulTest
  likelihoodRatioClosed : N.likelihoodRatio

def NeymanPearsonLemmaClosed (N : NeymanPearsonLemmaPackage) : Prop :=
  N.simpleHypotheses ∧ N.testFunction ∧ N.sizeProperty ∧
  N.powerProperty ∧ N.mostPowerfulTest ∧ N.likelihoodRatio

theorem neyman_pearson_lemma_closed_from_evidence
    (N : NeymanPearsonLemmaPackage) (E : NeymanPearsonLemmaEvidence N) :
    NeymanPearsonLemmaClosed N := by
  exact And.intro E.simpleHypothesesClosed
    (And.intro E.testFunctionClosed
      (And.intro E.sizePropertyClosed
        (And.intro E.powerPropertyClosed
          (And.intro E.mostPowerfulTestClosed E.likelihoodRatioClosed))))

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse