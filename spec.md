# Specification

## Summary
**Goal:** Fix critical backend bugs in `main.mo` that cause the "Failed to generate workout" error.

**Planned changes:**
- Replace invalid `.toLower()` method calls with `Text.toLowercase()` in `buildShuffledSectionFromArray` and `buildShuffledSectionFromArrayWithLimit` filter functions
- Fix `adjustRecoveryForTestMode` to set `fullyRecoveredTime = 0 - (100 * 3_600_000_000_000)` so TEST_RECOVERY_MODE forces 100% recovery for all muscle groups
- Replace all `mo:core/*` imports with `mo:base/*` imports throughout `backend/main.mo`

**User-visible outcome:** Workout generation works correctly for all muscle groups (including Legs) without returning "Failed to generate workout" errors.
