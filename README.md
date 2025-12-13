# 🪝 Czkawka for macOS - Complete Installation & Usage Guide

> **⚠️ Important Notice:** This is NOT the official Czkawka application. This is an unofficial macOS distribution guide for the original [Czkawka project](https://github.com/qarmin/czkawka) by [qarmin](https://github.com/qarmin). All credit for the application goes to the original developers.

A complete, no-nonsense guide to install and run **Czkawka** on macOS (both Intel and Apple Silicon). Includes stable and nightly builds, permissions, command-line steps, and troubleshooting.

---

## 📋 Table of Contents

- [🪝 What is Czkawka?](#-what-is-czkawka)
- [💻 MacBook Requirements](#-macbook-requirements)
- [⬇️ Direct Download Links](#direct-download-links)
  - [⚪ 10.0.0 Stable Builds](#-1000-stable-builds-)
    - [🔵 Apple Silicon (Stable)](#-apple-silicon-stable)
    - [🔴 Apple Silicon with HEIF/AVIF (Stable)](#-apple-silicon-with-heifavif-stable)
    - [🟢 Intel (Stable)](#-intel-stable)
    - [🟡 Intel with HEIF/AVIF (Stable)](#-intel-with-heifavif-stable)
  - [⚫ Nightly Builds](#-nightly-builds-)
    - [🟣 Apple Silicon (Nightly)](#-apple-silicon-nightly)
    - [🟠 Apple Silicon with HEIF/AVIF (Nightly)](#-apple-silicon-with-heifavif-nightly)
    - [🟤 Intel (Nightly)](#-intel-nightly)
    - [⚫ Intel with HEIF/AVIF (Nightly)](#-intel-with-heifavif-nightly)
- [⚡ Quick Installation](#-quick-installation)
- [🔐 System Permissions](#-system-permissions)
- [🚀 Usage](#-usage)
- [🔧 Troubleshooting](#-troubleshooting)
- [💡 Why Use the Single Executable?](#-why-use-the-single-executable)
- [🆘 Support](#-support)

---

## 🪝 What is Czkawka?

Czkawka is a lightning-fast, multi-purpose file cleaner that can:

- Remove duplicate files
- Detect similar images/videos
- Locate empty folders and large files
- Optimize storage on your Mac

Free, open-source, written in Rust. No installer needed.

**Original Project:** [https://github.com/qarmin/czkawka](https://github.com/qarmin/czkawka)

---

## 💻 MacBook Requirements

**Check your Mac's chip type:**

- **Apple Silicon:** `M1 / M2 / M3 / M4`
- **Intel:** `i5 / i7 / i9`

You can verify this by running `uname -m` in your terminal: `arm64` means Apple Silicon, and `x86_64` means Intel.

---

## Direct Download Links

### ⚪ 10.0.0 Stable Builds

- **🔵 [Apple Silicon](https://github.com/qarmin/czkawka/releases/download/10.0.0/mac_czkawka_gui_arm64)**
  Basic Apple Silicon version without HEIF/AVIF support.
- **🔴 [Apple Silicon with HEIF/AVIF](https://github.com/qarmin/czkawka/releases/download/10.0.0/mac_czkawka_gui_heif_avif_arm64)**
  Apple Silicon version with full support for modern image formats.
- **🟢 [Intel](https://github.com/qarmin/czkawka/releases/download/10.0.0/mac_czkawka_gui_x86_64)**
  Basic Intel version without HEIF/AVIF support.
- **🟡 [Intel with HEIF/AVIF](https://github.com/qarmin/czkawka/releases/download/10.0.0/mac_czkawka_gui_heif_avif_x86_64)**
  Intel version with full support for modern image formats.

### ⚫ Nightly Builds

- **🟣 [Nightly Apple Silicon](https://github.com/qarmin/czkawka/releases/download/Nightly/mac_czkawka_gui_arm64)**
  Latest Apple Silicon version with new features, but no HEIF/AVIF support.
- **🟠 [Nightly Apple Silicon with HEIF/AVIF](https://github.com/qarmin/czkawka/releases/download/Nightly/mac_czkawka_gui_heif_avif_arm64)**
  Latest Apple Silicon version with new features and full format support.
- **🟤 [Nightly Intel](https://github.com/qarmin/czkawka/releases/download/Nightly/mac_czkawka_gui_x86_64)**
  Latest Intel version with new features, but no HEIF/AVIF support.
- **⚫ [Nightly Intel with HEIF/AVIF](https://github.com/qarmin/czkawka/releases/download/Nightly/mac_czkawka_gui_heif_avif_x86_64)**
  Latest Intel version with new features and full format support.

---

## ⚡ Quick Installation

> **Note:** All installation commands use `2>/dev/null` to suppress harmless GTK4 framework warnings that can appear in the terminal. This doesn't hide actual errors - if the installation fails, you'll still see the error message.

After choosing your build from the lists above, run the matching command below to download and install.

> [!TIP]
> **Raycast Users:** Download the `launch_czkawka.sh` and `quit_czkawka.sh` scripts from this repository to easily open and quit Czkawka.

### ⚪ 10.0.0 Stable Builds ⚪

#### 🔵 Apple Silicon (Stable)

```bash
cd "$HOME/Downloads"
BASE_URL="https://github.com/qarmin/czkawka/releases/download/10.0.0"
curl -L --progress-bar -o czk_arm64_stable "$BASE_URL/mac_czkawka_gui_arm64"
chmod +x czk_arm64_stable
./czk_arm64_stable 2>/dev/null
mv czk_arm64_stable /Applications/
```

#### 🔴 Apple Silicon with HEIF/AVIF (Stable)

```bash
cd "$HOME/Downloads"
BASE_URL="https://github.com/qarmin/czkawka/releases/download/10.0.0"
curl -L --progress-bar -o czk_arm64_heif_avif_stable "$BASE_URL/mac_czkawka_gui_heif_avif_arm64"
chmod +x czk_arm64_heif_avif_stable
./czk_arm64_heif_avif_stable 2>/dev/null
mv czk_arm64_heif_avif_stable /Applications/
```

#### 🟢 Intel (Stable)

```bash
cd "$HOME/Downloads"
BASE_URL="https://github.com/qarmin/czkawka/releases/download/10.0.0"
curl -L --progress-bar -o czk_intel_stable "$BASE_URL/mac_czkawka_gui_x86_64"
chmod +x czk_intel_stable
./czk_intel_stable 2>/dev/null
mv czk_intel_stable /Applications/
```

#### 🟡 Intel with HEIF/AVIF (Stable)

```bash
cd "$HOME/Downloads"
BASE_URL="https://github.com/qarmin/czkawka/releases/download/10.0.0"
curl -L --progress-bar -o czk_intel_heif_avif_stable "$BASE_URL/mac_czkawka_gui_heif_avif_x86_64"
chmod +x czk_intel_heif_avif_stable
./czk_intel_heif_avif_stable 2>/dev/null
mv czk_intel_heif_avif_stable /Applications/
```

---

### ⚫ Nightly Builds ⚫

#### 🟣 Apple Silicon (Nightly)

```bash
cd "$HOME/Downloads"
BASE_URL="https://github.com/qarmin/czkawka/releases/download/Nightly"
curl -L --progress-bar -o czk_arm64_nightly "$BASE_URL/mac_czkawka_gui_arm64"
chmod +x czk_arm64_nightly
./czk_arm64_nightly 2>/dev/null
mv czk_arm64_nightly /Applications/
```

#### 🟠 Apple Silicon with HEIF/AVIF (Nightly)

```bash
cd "$HOME/Downloads"
BASE_URL="https://github.com/qarmin/czkawka/releases/download/Nightly"
curl -L --progress-bar -o czk_arm64_heif_avif_nightly "$BASE_URL/mac_czkawka_gui_heif_avif_arm64"
chmod +x czk_arm64_heif_avif_nightly
./czk_arm64_heif_avif_nightly 2>/dev/null
mv czk_arm64_heif_avif_nightly /Applications/
```

#### 🟤 Intel (Nightly)

```bash
cd "$HOME/Downloads"
BASE_URL="https://github.com/qarmin/czkawka/releases/download/Nightly"
curl -L --progress-bar -o czk_intel_nightly "$BASE_URL/mac_czkawka_gui_x86_64"
chmod +x czk_intel_nightly
./czk_intel_nightly 2>/dev/null
mv czk_intel_nightly /Applications/
```

#### ⚫ Intel with HEIF/AVIF (Nightly)

```bash
cd "$HOME/Downloads"
BASE_URL="https://github.com/qarmin/czkawka/releases/download/Nightly"
curl -L --progress-bar -o czk_intel_heif_avif_nightly "$BASE_URL/mac_czkawka_gui_heif_avif_x86_64"
chmod +x czk_intel_heif_avif_nightly
./czk_intel_heif_avif_nightly 2>/dev/null
mv czk_intel_heif_avif_nightly /Applications/
```

---

---

## 🔐 System Permissions

### Full Disk Access

1. Open **System Preferences** → **Security & Privacy** → **Privacy**.
2. Select **Full Disk Access** from the sidebar.
3. Click the lock icon and enter your password.
4. Click the `➕` button and add both your **Terminal** app and the **Czkawka** app from your `/Applications` folder.
5. Ensure the checkboxes next to them are enabled.

### If macOS Blocks the App

- Go to **System Settings** → **Privacy & Security**, scroll down, and click **"Open Anyway"**.

---

## 🚀 Usage

- **GUI:** Open your Applications folder and double-click **Czkawka**.
- **Terminal:** Run `/Applications/czk_arm64_stable` or the appropriate variant for your build

**Recommended Settings:**

- **Mode:** Duplicates
- **Method:** Hash (Blake3 is fastest)
- **Threads:** 4–8 for Apple Silicon, 2–4 for Intel (See [Performance Guide](PERFORMANCE.md) for details)

---

## 🔧 Troubleshooting

- **App won't open / "Can't verify developer":**
  - Right-click the app icon and select "Open". This usually solves it.
  - If that fails, run `chmod +x /Applications/czk_arm64_stable` in the terminal (adjust filename as needed).

- **Permission denied / Can't scan folders:**
  - You must grant **Full Disk Access** as described in the permissions section.

- **Pixbuf/Image Loading Crashes:**
  - If a HEIF/AVIF build crashes, try the non-HEIF/AVIF build for your chip.
  - If issues persist, clear corrupted config files:

```bash
rm -rf "$HOME/Library/Application Support/pl.Qarmin/Czkawka"
rm -rf "$HOME/Library/Caches/pl.Qarmin.Czkawka"
```

- **GTK Warning Messages:**
  - You may see a message like `(czkawka:28955): Gtk-WARNING **: 04:42:14.163: Broken accounting of active state for widget 0x134e78e10(GtkWindow)` in the terminal.
  - This is a known GTK framework issue that doesn't affect Czkawka's functionality.
  - No fix is currently available, but the application will work normally despite this warning.
  - To hide these warnings and run the app in the background, launch it from the terminal with this command:

**Note:** The command below uses `/Applications/czk_arm64_stable`. Adjust the filename to match the version you installed (e.g., `czk_arm64_heif_avif_nightly`).

```bash
/Applications/czk_arm64_stable 2>/dev/null &
```

- **For Bug Reports:**
  - Enable detailed logging before reporting an issue:

```bash
RUST_BACKTRACE=full /Applications/czk_arm64_stable
```

---

## 💡 Why Use the Single Executable?

- ❌ No installer needed
- 🚪 Portable — one file to manage
- ❎ Easy to uninstall — just delete the file
- ⚡ Clean, minimal, and fast
- ⬆️ Easy to update — just replace the file

---

## 🆘 Support

- **[Official Czkawka Repository](https://github.com/qarmin/czkawka)**: For source code and official info.
- **[Submit an Issue](https://github.com/qarmin/czkawka/issues)**: To report bugs or request features to the original project.

---

### 🎉 Done

Enjoy a faster, cleaner Mac experience. Czkawka does the dirty work so you don't have to.

---
