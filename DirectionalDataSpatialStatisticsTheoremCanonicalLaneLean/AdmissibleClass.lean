import DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DirectionalDataAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DirectionalDataWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirectionalDataSpatialStatisticsTheoremCanonicalLaneLean
end HautevilleHouse