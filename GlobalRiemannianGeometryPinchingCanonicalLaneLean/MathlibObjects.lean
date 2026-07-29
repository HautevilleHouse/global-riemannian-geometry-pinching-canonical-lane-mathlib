import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalRiemannianGeometryPinchingCanonicalLaneLean

structure TheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String

deriving Repr, DecidableEq

structure UpstreamMathlibSubstrate where
  operatorCarrier : Type
  spectralSet : String
  invariantOrSelfAdjointGate : Prop
  spectralPersistenceBridge : Prop
  sourceBoundaryLedger : String

structure AdmittedObject where
  object : TheoremSpecificObject
  substrate : UpstreamMathlibSubstrate
  localWitness : String
  bridgeEvidence : String
  operatorModelChecked : Prop
  operatorModelWitness : operatorModelChecked
  spectralPersistenceBridgeChecked : Prop
  spectralPersistenceBridgeWitness : spectralPersistenceBridgeChecked
  sourceBoundaryLedgerChecked : Prop
  sourceBoundaryLedgerWitness : sourceBoundaryLedgerChecked
  classicalRemainderCarried : Bool
  sourceKeyChecked : object.sourceKey = "sourceRepository"
  theoremObjectChecked : object.theoremObject = "sourceDescription"

def theoremSpecificObject : TheoremSpecificObject := {
  sourceKey := "sourceRepository",
  theoremObject := "sourceDescription",
  claimBoundary := "sphere theorem"
}

def ScopedClosure (O : AdmittedObject) : Prop :=
  O.object.sourceKey = "sourceRepository" ∧ O.object.theoremObject = "sourceDescription" ∧ O.operatorModelChecked ∧ O.spectralPersistenceBridgeChecked ∧ O.sourceBoundaryLedgerChecked

end GlobalRiemannianGeometryPinchingCanonicalLaneLean
end HautevilleHouse
