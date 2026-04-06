# Local Feedstock -> "Superwood" Playbook (Low-Cost Path)

Date started: 2026-04-05
Status: Action draft for prototyping

## Goal
Identify the cheapest practical route to upgrade local wood feedstock into high-performance material for furniture and architectural interior use.

## Design Principle
For your use case, "cheap and easy" usually means:
- Minimal chemicals.
- Widely available shop equipment.
- Repeatable process windows.
- Performance gains that are stable under humidity cycling.

## Recommendation in One Line
Start with a thermo-hygro-mechanical route (steam or hot-water conditioning + compression + restrained heat-set), then add a thin moisture-barrier finish and laminated geometry to reduce spring-back risk.

## 1) Three Practical Pathways Ranked by Cost/Complexity

### Path A: Thermo-hygro-mechanical densification (recommended first)
- Process: moisture/heat soften -> compress -> hold -> dry/heat-set under restraint.
- Why it is best first:
  - No specialty chemistry required.
  - Uses common materials workflow.
  - Good balance of cost, speed, and performance gain.
- Expected gains:
  - Significant hardness and surface wear improvement.
  - Moderate to high strength increase, species dependent.
- Main risk:
  - Spring-back in humidity if post-treatment and finishing are weak.

### Path B: Mild chemical-assisted densification (second phase)
- Process: mild pretreatment to improve compressibility, then compression and curing/drying.
- Why second phase:
  - Higher possible performance.
  - Increased safety, waste handling, and process-control burden.
- Main risk:
  - Workflow complexity can erase cost advantage at small scale.

### Path C: Resin-impregnated densification (special cases)
- Process: impregnate + compress and/or cure.
- Why not first:
  - Better stability possible, but higher material cost and less "all-wood" character.
- Best use:
  - Wear-critical parts where moisture stability dominates goals.

## 2) Feedstock Selection Rules (Local First)
- Favor straight grain, low knots, low reaction wood.
- Target consistent moisture content before processing.
- Prioritize species you can source repeatedly, even if not "ideal" on paper.
- Run small screening batches across 2 to 3 local species before scaling one.

## 3) Baseline Process Envelope for Path A
Use as a starting window, then tune per species.

### Stage 1: Conditioning
- Steam or hot-water conditioning to soften structure before pressing.
- Aim for uniform through-thickness condition, not just surface heating.

### Stage 2: Compression
- Compress in controlled increments instead of one abrupt step.
- Record compression ratio, dwell time, and panel temperature each run.

### Stage 3: Set and Dry
- Keep material restrained while drying/heat-setting.
- Avoid rapid uncontrolled drying that drives internal stress and warp.

### Stage 4: Stabilization
- Condition to service moisture range.
- Apply moisture-managing finish (especially edges/end grain).

## 4) Low-Cost Equipment Stack
- Pressing setup capable of repeatable pressure and parallel platens.
- Heat source (heated platens, controlled oven, or equivalent safe setup).
- Moisture meter and calipers/micrometer.
- Basic hardness and bending test fixtures (shop-level is acceptable for screening).
- Simple data log sheet per sample.

## 5) What "Superwood" Means by Application
Define success differently by use case:

### Furniture components
- Priority: dent resistance, stiffness, machinability, screw-holding, visual quality.
- Suggested targets:
  - >= 30% hardness increase versus untreated controls.
  - Dimensional change under humidity cycling kept within design tolerance.

### Interior architectural panels/joinery
- Priority: dimensional stability, surface durability, finish compatibility, fire strategy alignment.
- Suggested targets:
  - Stable flatness after humidity cycling.
  - Edge integrity and low checking after repeated cycles.

## 6) Fast Pilot Program (4-Week)

### Week 1: Characterize local species
- Select 2 to 3 species.
- Prepare control samples with documented starting moisture and density.

### Week 2: Run small matrix
- Test 6 to 9 processing combinations (compression ratio x conditioning intensity x set schedule).
- Keep sample geometry consistent.

### Week 3: Screen performance
- Compare density gain, hardness proxy, warp/spring-back, machining behavior.
- Reject unstable settings quickly.

### Week 4: Validate top 2 settings
- Repeat top settings with new batch to check reproducibility.
- Produce one furniture mock part and one panel/joinery mock part.

## 7) Minimal Data Schema (per sample)
- Species and source.
- Initial moisture content and density.
- Conditioning method and duration.
- Compression ratio and dwell.
- Set/dry schedule.
- Final density.
- Hardness proxy.
- Thickness recovery after humidity cycle.
- Machining notes (tear-out, burn, tool wear).
- Finish response notes.

## 8) Cost-Control Moves
- Densify only the performance-critical zones or layers, not full thickness everywhere.
- Use laminated constructions: densified face layer + conventional core.
- Standardize one panel thickness family to reduce setup changes.
- Reuse process fixtures and keep cycle times bounded.

## 9) Risk Register
- Spring-back under humidity cycling.
- Internal checking from aggressive drying.
- Over-densification leading to brittleness or difficult machining.
- Variable local feedstock quality causing noisy results.

## 10) Decision Gate for Scale-Up
Advance only if all three pass:
- Technical: repeatable performance gain in at least two production-like batches.
- Economic: per-part cost beats alternative engineered products for target use.
- Operational: process safety and waste handling are manageable with your shop setup.

## 11) Suggested Next Files
- superwood-source-log.md (paper-by-paper evidence scoring).
- superwood-test-matrix.csv (run tracking).
- superwood-spec-v1.md (application-specific acceptance thresholds).

## 12) Related Review (No Hot Press)
- superwood-non-hot-press-review-2026-04-05.md
