import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure ExponentialFamilyPackage where
  space : Type u
  sufficientStatistic : Type v
  naturalParameter : Type w
  logPartition : Prop
  carrier : space -> Prop
  densityDefined : Prop
  densityDefinedTerm : densityDefined

structure ExponentialFamilyEvidence (E : ExponentialFamilyPackage) where
  logPartitionClosed : E.logPartition
  carrierClosed : ∀ x : E.space, E.carrier x
  densityDefinedClosed : E.densityDefined

def ExponentialFamilyClosed (E : ExponentialFamilyPackage) : Prop :=
  E.logPartition ∧ (∀ x : E.space, E.carrier x) ∧ E.densityDefined

theorem exponential_family_closed_from_evidence (E : ExponentialFamilyPackage) (Ev : ExponentialFamilyEvidence E) : ExponentialFamilyClosed E := by
  exact And.intro Ev.logPartitionClosed (And.intro Ev.carrierClosed Ev.densityDefinedClosed)

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse