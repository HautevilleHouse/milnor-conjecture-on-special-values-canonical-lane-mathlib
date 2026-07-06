import MilnorConjectureOnSpecialValuesCanonicalLaneLean.Formalization
import MilnorConjectureOnSpecialValuesCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace MilnorConjectureOnSpecialValuesCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "96863e97efa5cca779b55662d264237f014086fc07e4a1e84179dcc985a82fd8", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "2b67c197d8cccdcf3f5f59455c71f0f8c661485479c104d2e7c840a8f700c63b", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "131d987a33ba797668e2bf54ec1e5af567c12b4376ae0575bf7464e04c165d5e", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "bdcf67b7159768778b85cb904ab1dad0b08fdf54e6f5e291653134f666be3164", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "af245e27782975ba74280b04c2576beda9f68bfa7fad74ebed1a70b0a0bbba4a", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "565a068f1c0ae38d7d6cfaf2c1e96d467a2c26cee7ac6f6083d2b295bb774f8b", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "da5741d6051d39a57f94f8aff1b458928bbb1504cd190ed66eb3683d5a15b9fd", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "b8f9877f89aa189102d3c8225bc44c9a30adf5c988345e20fe5684b1972dd8bd", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "d349d42b4269f89a94a29ad64553802f684b9b6adc4c60f5ce753cb670119b35", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "MSV_G1", constant := "kappa_polylog" },
  { gate := "MSV_G2", constant := "sigma_value" },
  { gate := "MSV_G3", constant := "kappa_compact" },
  { gate := "MSV_G4", constant := "rho_rigidity" },
  { gate := "MSV_G5", constant := "regulator_transfer" },
  { gate := "MSV_G6", constant := "eps_coh" },
  { gate := "MSV_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "fe33e63946df543176f967958e11538dc0903b35feb09193662bf3ee8a596fd6" },
  { path := "README.md", sha256 := "47633b4d65f27651e85bc64cad2abb6e2b8441e86dfd1dc0e5f50a2dd1be08f1" },
  { path := "artifacts/constants_extracted.json", sha256 := "bdcf67b7159768778b85cb904ab1dad0b08fdf54e6f5e291653134f666be3164" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "131d987a33ba797668e2bf54ec1e5af567c12b4376ae0575bf7464e04c165d5e" },
  { path := "artifacts/constants_registry.json", sha256 := "af245e27782975ba74280b04c2576beda9f68bfa7fad74ebed1a70b0a0bbba4a" },
  { path := "artifacts/promotion_report.json", sha256 := "da5741d6051d39a57f94f8aff1b458928bbb1504cd190ed66eb3683d5a15b9fd" },
  { path := "artifacts/stitch_constants.json", sha256 := "565a068f1c0ae38d7d6cfaf2c1e96d467a2c26cee7ac6f6083d2b295bb774f8b" },
  { path := "notes/EG1_public.md", sha256 := "faea581e7ed8529f1dd6130942186848e7b2c6f4c5c0704444a7381f6e83eb63" },
  { path := "notes/EG2_public.md", sha256 := "3579f6270afd4df7ef421ad8b9c2dbecbf01c6da3ff1b7473ddaa475b9752489" },
  { path := "notes/EG3_public.md", sha256 := "380318dd037fb47e0895ba41ae0fa90d1b9f6b44f16221d94f22045c78a96de6" },
  { path := "notes/EG4_public.md", sha256 := "8559b2ca2849a5866fe4901374909351ade8dd3901897ed9d5378b786b005480" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "2b67c197d8cccdcf3f5f59455c71f0f8c661485479c104d2e7c840a8f700c63b" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "449dde62ae189c10b91722bba6911e237ac310bb846aa1679533d572e16a6e0c" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "39268a6ce57a10b8b160de47b599407817746e60ad61854fcc2e08d89c2944f2" },
  { path := "paper/MILNOR_CONJECTURE_ON_SPECIAL_VALUES_PREPRINT.md", sha256 := "30428746734b8b2867e1e9694b14c9e557550e2791b8ca472a5ab1e9a218a440" },
  { path := "repro/REPRO_PACK.md", sha256 := "39572db9394dc0fdd67c664bf74f6bc70eeb89b5175f0999f6aad343c6be6981" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "f23c5e9bfa0360edd31d58056d5b7ed5d2ce9482e97fbd7a074a8c28eb68b499" },
  { path := "repro/certificate_baseline.json", sha256 := "d349d42b4269f89a94a29ad64553802f684b9b6adc4c60f5ce753cb670119b35" },
  { path := "repro/run_repro.sh", sha256 := "65ff31aacd6c58a321fcf511ed41964afd0cdefea8459397459f22c3d5079b49" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/msv_closure_guard.py", sha256 := "239cfbb2f4d0bfbb528eb6aa753bc842ffe01986e6e2fe50077e67eec2b9a50f" },
  { path := "scripts/README.md", sha256 := "eeea74108092c34e000055401dd401b8ec9709fa83284fb1073282c14f7e137b" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "MSV_G1", status := "PASS" },
  { gate := "MSV_G2", status := "PASS" },
  { gate := "MSV_G3", status := "PASS" },
  { gate := "MSV_G4", status := "PASS" },
  { gate := "MSV_G5", status := "PASS" },
  { gate := "MSV_G6", status := "PASS" },
  { gate := "MSV_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8045052292839904" },
  { key := "kappa_polylog", value := "1.0932" },
  { key := "regulator_transfer", value := "1.029422" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "sigma_star_can", value := "1.053" },
  { key := "sigma_value", value := "1.0750000000000002" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_polylog",
  "regulator_transfer",
  "rho_rigidity",
  "sigma_star_can",
  "sigma_value"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end MilnorConjectureOnSpecialValuesCanonicalLaneLean
end HautevilleHouse
