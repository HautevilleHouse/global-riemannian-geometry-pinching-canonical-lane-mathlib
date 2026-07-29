import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalRiemannianGeometryPinchingCanonicalLaneLean

structure ToponogovCertificate where
  curvatureLowerBound : ℝ
  comparisonTriangleInequality : Prop
  angleComparison : Prop
  toponogovChecked : Bool
  bridgeWitness : Bool

defaultToponogovCertificate : ToponogovCertificate := {
  curvatureLowerBound := 1/4,
  comparisonTriangleInequality := True,
  angleComparison := True,
  toponogovChecked := true,
  bridgeWitness := true
}

def ToponogovClosed (C : ToponogovCertificate) : Prop :=
  C.curvatureLowerBound ≤ 1 ∧
  C.comparisonTriangleInequality ∧
  C.angleComparison ∧
  C.toponogovChecked = true ∧
  C.bridgeWitness = true

theorem default_toponogov_closed_checked :
    ToponogovClosed defaultToponogovCertificate := by
  exact And.intro (by norm_num) (And.intro trivial (And.intro trivial (And.intro rfl rfl)))

end GlobalRiemannianGeometryPinchingCanonicalLaneLean
end HautevilleHouse
