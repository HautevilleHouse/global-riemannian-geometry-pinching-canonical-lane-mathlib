import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalRiemannianGeometryPinchingCanonicalLaneLean.SphereTheoremLayer
import HautevilleHouse.GlobalRiemannianGeometryPinchingCanonicalLaneLean.ConvergenceLayer

namespace HautevilleHouse
namespace GlobalRiemannianGeometryPinchingCanonicalLaneLean

def ConstrainedPinchingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_pinching_endgame (A : AdmissibleClass) :
    ConstrainedPinchingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

def GlobalPinchingTheoremClosed : Prop :=
  SphereTheoremLayerClosed sphereTheoremLayerCertificate ∧
  ConvergenceLayerClosed convergenceLayerCertificate

theorem global_pinching_theorem_closed_checked :
    GlobalPinchingTheoremClosed := by
  exact And.intro sphere_theorem_layer_closed_checked convergence_layer_closed_checked

end GlobalRiemannianGeometryPinchingCanonicalLaneLean
end HautevilleHouse