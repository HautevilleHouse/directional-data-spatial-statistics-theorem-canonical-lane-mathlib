import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean.DirectionalDataSpatialStatistics

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure ExponentialFamilyPackage (D : DirectionalDataPackage) where
  sufficientStatistic : D.sampleSpace → EuclideanSpace ℝ (Fin k)
  logPartition : EuclideanSpace ℝ (Fin k) → ℝ
  densityForm : Prop
  sufficiencyProperty : Prop
  densityFormTerm : densityForm
  sufficiencyPropertyTerm : sufficiencyProperty

structure ExponentialFamilyEvidence {D : DirectionalDataPackage} (E : ExponentialFamilyPackage D) where
  densityFormClosed : E.densityForm
  sufficiencyPropertyClosed : E.sufficiencyProperty

def ExponentialFamilyClosed {D : DirectionalDataPackage} (E : ExponentialFamilyPackage D) : Prop :=
  E.densityForm ∧ E.sufficiencyProperty

theorem exponential_family_closed_from_evidence {D : DirectionalDataPackage} (E : ExponentialFamilyPackage D) (Ev : ExponentialFamilyEvidence E) : ExponentialFamilyClosed E := by
  exact And.intro Ev.densityFormClosed Ev.sufficiencyPropertyClosed

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse