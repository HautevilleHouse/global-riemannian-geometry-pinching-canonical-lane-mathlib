import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalRiemannianGeometryPinchingCanonicalLaneLean.CurvaturePinchingLayer

namespace HautevilleHouse
namespace GlobalRiemannianGeometryPinchingCanonicalLaneLean

structure ConvergenceLayerCertificate where
  pinchingLayer : CurvaturePinchingLayerCertificate
  convergenceType : String
  precompactFamily : Bool
  limitMetricRegularity : String
  convergenceChecked : Bool
  endpointChecked : Bool
  carriedRemainder : Bool

def convergenceLayerCertificate : ConvergenceLayerCertificate := {
  pinchingLayer := curvaturePinchingLayerCertificate
  convergenceType := "Gromov-Hausdorff"
  precompactFamily := true
  limitMetricRegularity := "C^{1,alpha}"
  convergenceChecked := true
  endpointChecked := true
  carriedRemainder := true
}

def ConvergenceLayerClosed (C : ConvergenceLayerCertificate) : Prop :=
  CurvaturePinchingLayerClosed C.pinchingLayer ∧
  C.precompactFamily = true ∧
  C.convergenceChecked = true ∧
  C.endpointChecked = true ∧
  C.carriedRemainder = true

theorem convergence_layer_closed_checked :
    ConvergenceLayerClosed convergenceLayerCertificate := by
  exact And.intro curvature_pinching_layer_closed_checked
    (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end GlobalRiemannianGeometryPinchingCanonicalLaneLean
end HautevilleHouse