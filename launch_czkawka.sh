#!/bin/bash
# @raycast.schemaVersion 1
# @raycast.title Czkawka
# @raycast.mode silent
# @raycast.description Launches Czkawka (any installed version)
# @raycast.author RazorBackRoar

# Suppress GTK warnings and launch in background
launch_if_exists() {
    if [ -f "$1" ]; then
        "$1" 2>/dev/null &
        sleep 0.3
    fi
}

# === STABLE BUILDS (10.0.0) ===
launch_if_exists "/Applications/czk_arm64_stable"
launch_if_exists "/Applications/czk_arm64_heif_avif_stable"
launch_if_exists "/Applications/czk_intel_stable"
launch_if_exists "/Applications/czk_intel_heif_avif_stable"

# === NIGHTLY BUILDS (Development) ===
launch_if_exists "/Applications/czk_arm64_nightly"
launch_if_exists "/Applications/czk_arm64_heif_avif_nightly"
launch_if_exists "/Applications/czk_intel_nightly"
launch_if_exists "/Applications/czk_intel_heif_avif_nightly" 
