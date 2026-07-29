import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure DirectionalDistributionPackage where
  sampleSpace : Type u
  directionSpace : Type v
  distributionFamily : Type w
  densityFunction : Prop
  exponentialFamilyForm : Prop
  sufficiencyProperty : Prop

structure DirectionalDistributionEvidence (D : DirectionalDistributionPackage) where
  densityFunctionClosed : D.densityFunction
  exponentialFamilyFormClosed : D.exponentialFamilyForm
  sufficiencyPropertyClosed : D.sufficiencyProperty

def DirectionalDistributionClosed (D : DirectionalDistributionPackage) : Prop :=
  D.densityFunction ∧ D.exponentialFamilyForm ∧ D.sufficiencyProperty

theorem directional_distribution_closed_from_evidence
    (D : DirectionalDistributionPackage) (E : DirectionalDistributionEvidence D) :
    DirectionalDistributionClosed D := by
  exact And.intro E.densityFunctionClosed
    (And.intro E.exponentialFamilyFormClosed E.sufficiencyPropertyClosed)

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse