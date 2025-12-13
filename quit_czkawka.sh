#!/bin/bash
# @raycast.schemaVersion 1
# @raycast.title Close Czkawka
# @raycast.mode silent
# @raycast.description Closes all running Czkawka instances
# @raycast.author RazorBackRoar

# Function to kill process if running
kill_if_running() {
    local app_name=$(basename "$1")
    pkill -f "$app_name" 2>/dev/null
}

# === STABLE BUILDS (10.0.0) ===
kill_if_running "/Applications/czk_arm64_stable"
kill_if_running "/Applications/czk_arm64_heif_avif_stable"
kill_if_running "/Applications/czk_intel_stable"
kill_if_running "/Applications/czk_intel_heif_avif_stable"

# === NIGHTLY BUILDS (Development) ===
kill_if_running "/Applications/czk_arm64_nightly"
kill_if_running "/Applications/czk_arm64_heif_avif_nightly"
kill_if_running "/Applications/czk_intel_nightly"
kill_if_running "/Applications/czk_intel_heif_avif_nightly"
