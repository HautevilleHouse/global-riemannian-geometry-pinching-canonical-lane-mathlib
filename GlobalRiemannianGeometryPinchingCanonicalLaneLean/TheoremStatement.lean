import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalRiemannianGeometryPinchingCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  pinchingStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "global-riemannian-geometry-pinching-canonical-lane",
  theoremName := "Global Riemannian Geometry Pinching",
  theoremObject := "ConstrainedScalarCurvaturePinching",
  classicalBoundary := "unrestricted classical pinching theorems remain outside the admitted closure layer",
  pinchingStatement := "manifold-constrained pinching certificate internalized through baseline gates, source constants, and reviewer bridge",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

def ClassicalSourceBoundaryCarried : Prop :=
  formalizationCertificate.theoremBoundaryOpen = true ∧
  formalizationCertificate.sourceConjectureClosureClaimed = false

end GlobalRiemannianGeometryPinchingCanonicalLaneLean
end HautevilleHouse