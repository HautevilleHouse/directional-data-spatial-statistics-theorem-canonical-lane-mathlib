import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

def ConstrainedDirectionalDataClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_directional_data_endgame (A : AdmissibleClass) :
    ConstrainedDirectionalDataClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse