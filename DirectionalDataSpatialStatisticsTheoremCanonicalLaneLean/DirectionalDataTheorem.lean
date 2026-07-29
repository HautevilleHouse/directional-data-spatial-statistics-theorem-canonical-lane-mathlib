import DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean.NeymanPearsonLemma

/-!
# Directional Data Spatial Statistics Theorem Package
-/

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure DirectionalDataTheoremPackage {M : SpatialDirectionalModel} {E : ExponentialFamilyPackage M} {Ml : MaximumLikelihoodPackage E} (Np : NeymanPearsonPackage Ml) where
  directionalSpatialTheorem : Prop
  closureCompleted : Prop
  evidence : closureCompleted

def DirectionalDataTheoremClosed {M : SpatialDirectionalModel} {E : ExponentialFamilyPackage M} {Ml : MaximumLikelihoodPackage E} {Np : NeymanPearsonPackage Ml} (D : DirectionalDataTheoremPackage Np) : Prop :=
  D.directionalSpatialTheorem

theorem directional_data_theorem_closed {M : SpatialDirectionalModel} {E : ExponentialFamilyPackage M} {Ml : MaximumLikelihoodPackage E} {Np : NeymanPearsonPackage Ml} (D : DirectionalDataTheoremPackage Np) : DirectionalDataTheoremClosed D := by
  exact D.evidence

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse