# 🪝 Czkawka for macOS - Complete Installation & Usage Guide

> **⚠️ Important Notice:** This is NOT the official Czkawka application. This is an unofficial macOS distribution guide for the original [Czkawka project](https://github.com/qarmin/czkawka) by [qarmin](https://github.com/qarmin). All credit for the application goes to the original developers.

A complete, no-nonsense guide to install and run **Czkawka** on macOS (both Intel and Apple Silicon). Includes stable and nightly builds, permissions, command-line steps, and troubleshooting.

---

## 📋 Table of Contents

- [🪝 What is Czkawka?](#-what-is-czkawka)
- [💻 MacBook Requirements](#-macbook-requirements)
- [⚪ Stable Builds (10.0.0)](#-stable-builds-1000)
  - [🔵 Apple Silicon Standard](#-apple-silicon-standard)
  - [🔴 Apple Silicon with HEIF/AVIF](#-apple-silicon-with-heifavif)
  - [🟢 Intel Standard](#-intel-standard)
  - [🟡 Intel with HEIF/AVIF](#-intel-with-heifavif)
- [⚫ Nightly Builds (Development)](#-nightly-builds-development)
  - [🟣 Nightly Apple Silicon Standard](#-nightly-apple-silicon-standard)
  - [🟠 Nightly Apple Silicon with HEIF/AVIF](#-nightly-apple-silicon-with-heifavif)
  - [🟤 Nightly Intel Standard](#-nightly-intel-standard)
  - [⚫ Nightly Intel with HEIF/AVIF](#-nightly-intel-with-heifavif)
- [⚙️ Installation](#️-installation)
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

## ⚪ Stable Builds (10.0.0)

### 🔵 [Apple Silicon Standard](https://github.com/qarmin/czkawka/releases/download/10.0.0/mac_czkawka_gui_arm64)
Basic Apple Silicon version without HEIF/AVIF support.

### 🔴 [Apple Silicon with HEIF/AVIF](https://github.com/qarmin/czkawka/releases/download/10.0.0/mac_czkawka_gui_heif_avif_arm64)
Apple Silicon version with full support for modern image formats.

### 🟢 [Intel Standard](https://github.com/qarmin/czkawka/releases/download/10.0.0/mac_czkawka_gui_x86_64)
Basic Intel version without HEIF/AVIF support.

### 🟡 [Intel with HEIF/AVIF](https://github.com/qarmin/czkawka/releases/download/10.0.0/mac_czkawka_gui_heif_avif_x86_64)
Intel version with full support for modern image formats.

---

## ⚫ Nightly Builds (Development)

### 🟣 [Nightly Apple Silicon Standard](https://github.com/qarmin/czkawka/releases/download/Nightly/mac_czkawka_gui_arm64)
Latest Apple Silicon version with new features, but no HEIF/AVIF support.

### 🟠 [Nightly Apple Silicon with HEIF/AVIF](https://github.com/qarmin/czkawka/releases/download/Nightly/mac_czkawka_gui_heif_avif_arm64)
Latest Apple Silicon version with new features and full format support.

### 🟤 [Nightly Intel Standard](https://github.com/qarmin/czkawka/releases/download/Nightly/mac_czkawka_gui_x86_64)
Latest Intel version with new features, but no HEIF/AVIF support.

### ⚫ [Nightly Intel with HEIF/AVIF](https://github.com/qarmin/czkawka/releases/download/Nightly/mac_czkawka_gui_heif_avif_x86_64)
Latest Intel version with new features and full format support.

---

## ⚙️ Installation

> **Note:** All installation commands use `2>/dev/null` to suppress harmless GTK4 framework warnings that can appear in the terminal. This doesn't hide actual errors - if the installation fails, you'll still see the error message.

After choosing your build from the lists above, use one of the following methods. The automated terminal method is recommended.

### Automated Installation via Terminal (Recommended)

These commands do all the work for you: they download, make the file executable, and move it to your Applications folder. Find your chosen build below, click to expand, then copy and paste the entire block into your terminal.

---

<details>
<summary>
<h2 align="center">⚪ ⚪ STABLE BUILDS ⚪ ⚪</h2>
</summary>

<details>
<summary>🔵 Apple Silicon Standard - Click to expand</summary>

```bash
cd "$HOME/Downloads"
curl -L --progress-bar -o czk_arm64_stable "https://github.com/qarmin/czkawka/releases/download/10.0.0/mac_czkawka_gui_arm64"
chmod +x czk_arm64_stable
./czk_arm64_stable 2>/dev/null
mv czk_arm64_stable /Applications/
```
</details>

<details>
<summary>🔴 Apple Silicon with HEIF/AVIF - Click to expand</summary>

```bash
cd "$HOME/Downloads"
curl -L --progress-bar -o czk_arm64_heif_avif_stable "https://github.com/qarmin/czkawka/releases/download/10.0.0/mac_czkawka_gui_heif_avif_arm64"
chmod +x czk_arm64_heif_avif_stable
./czk_arm64_heif_avif_stable 2>/dev/null
mv czk_arm64_heif_avif_stable /Applications/
```
</details>

<details>
<summary>🟢 Intel Standard - Click to expand</summary>

```bash
cd "$HOME/Downloads"
curl -L --progress-bar -o czk_intel_stable "https://github.com/qarmin/czkawka/releases/download/10.0.0/mac_czkawka_gui_x86_64"
chmod +x czk_intel_stable
./czk_intel_stable 2>/dev/null
mv czk_intel_stable /Applications/
```
</details>

<details>
<summary>🟡 Intel with HEIF/AVIF - Click to expand</summary>

```bash
cd "$HOME/Downloads"
curl -L --progress-bar -o czk_intel_heif_avif_stable "https://github.com/qarmin/czkawka/releases/download/10.0.0/mac_czkawka_gui_heif_avif_x86_64"
chmod +x czk_intel_heif_avif_stable
./czk_intel_heif_avif_stable 2>/dev/null
mv czk_intel_heif_avif_stable /Applications/
```
</details>

</details>

---

<details>
<summary>
<h2 align="center">⚫ ⚫ NIGHTLY BUILDS ⚫ ⚫</h2>
</summary>

<details>
<summary>⚫ Nightly Apple Silicon Standard - Click to expand</summary>

```bash
cd "$HOME/Downloads"
curl -L --progress-bar -o czk_arm64_nightly "https://github.com/qarmin/czkawka/releases/download/Nightly/mac_czkawka_gui_arm64"
chmod +x czk_arm64_nightly
./czk_arm64_nightly 2>/dev/null
mv czk_arm64_nightly /Applications/
```
</details>

<details>
<summary>⚫ Nightly Apple Silicon with HEIF/AVIF - Click to expand</summary>

```bash
cd "$HOME/Downloads"
curl -L --progress-bar -o czk_arm64_heif_avif_nightly "https://github.com/qarmin/czkawka/releases/download/Nightly/mac_czkawka_gui_heif_avif_arm64"
chmod +x czk_arm64_heif_avif_nightly
./czk_arm64_heif_avif_nightly 2>/dev/null
mv czk_arm64_heif_avif_nightly /Applications/
```
</details>

<details>
<summary>⚫ Nightly Intel Standard - Click to expand</summary>

```bash
cd "$HOME/Downloads"
curl -L --progress-bar -o czk_intel_nightly "https://github.com/qarmin/czkawka/releases/download/Nightly/mac_czkawka_gui_x86_64"
chmod +x czk_intel_nightly
./czk_intel_nightly 2>/dev/null
mv czk_intel_nightly /Applications/
```
</details>

<details>
<summary>⚫ Nightly Intel with HEIF/AVIF - Click to expand</summary>

```bash
cd "$HOME/Downloads"
curl -L --progress-bar -o czk_intel_heif_avif_nightly "https://github.com/qarmin/czkawka/releases/download/Nightly/mac_czkawka_gui_heif_avif_x86_64"
chmod +x czk_intel_heif_avif_nightly
./czk_intel_heif_avif_nightly 2>/dev/null
mv czk_intel_heif_avif_nightly /Applications/
```
</details>

</details>

---

### Manual Installation

If you prefer downloading manually from the links above:

1.  Download the appropriate file by clicking the link.
2.  Open your terminal and run these commands (adjust the filenames based on what you downloaded):

**For Apple Silicon Standard (Stable):**
```bash
cd "$HOME/Downloads"
mv mac_czkawka_gui_arm64 czk_arm64_stable
chmod +x czk_arm64_stable
./czk_arm64_stable 2>/dev/null
mv czk_arm64_stable /Applications/
```

**For Apple Silicon with HEIF/AVIF (Stable):**
```bash
cd "$HOME/Downloads"
mv mac_czkawka_gui_heif_avif_arm64 czk_arm64_heif_avif_stable
chmod +x czk_arm64_heif_avif_stable
./czk_arm64_heif_avif_stable 2>/dev/null
mv czk_arm64_heif_avif_stable /Applications/
```

**For Intel Standard (Stable):**
```bash
cd "$HOME/Downloads"
mv mac_czkawka_gui_x86_64 czk_intel_stable
chmod +x czk_intel_stable
./czk_intel_stable 2>/dev/null
mv czk_intel_stable /Applications/
```

**For Intel with HEIF/AVIF (Stable):**
```bash
cd "$HOME/Downloads"
mv mac_czkawka_gui_heif_avif_x86_64 czk_intel_heif_avif_stable
chmod +x czk_intel_heif_avif_stable
./czk_intel_heif_avif_stable 2>/dev/null
mv czk_intel_heif_avif_stable /Applications/
```

**For Nightly builds:** Replace `_stable` with `_nightly` in the commands above.

**What These Commands Do:**
- 📁 Navigate to your Downloads folder
- ✏️ Rename the downloaded file to a cleaner, descriptive name
- 🔓 Make it executable
- 🚀 Run it to test it opens properly
- 📦 Move to Applications for easy GUI access

---

## 🔐 System Permissions

**Full Disk Access**

1.  Open **System Preferences** → **Security & Privacy** → **Privacy**.
2.  Select **Full Disk Access** from the sidebar.
3.  Click the lock icon and enter your password.
4.  Click the `➕` button and add both your **Terminal** app and the **Czkawka** app from your `/Applications` folder.
5.  Ensure the checkboxes next to them are enabled.

**If macOS Blocks the App**
- Go to **System Settings** → **Privacy & Security**, scroll down, and click **"Open Anyway"**.

---

## 🚀 Usage

- **GUI:** Open your Applications folder and double-click **Czkawka**.
- **Terminal:** Run `/Applications/czkawka` or `/Applications/czkawka_nightly`

**Recommended Settings:**
- **Mode:** Duplicates
- **Method:** Hash (Blake3 is fastest)
- **Threads:** 4–8 for Apple Silicon, 2–4 for Intel

---

## 🔧 Troubleshooting

- **App won't open / "Can't verify developer":**
  - Right-click the app icon and select "Open". This usually solves it.
  - If that fails, run `chmod +x /Applications/czkawka` in the terminal.

- **Permission denied / Can't scan folders:**
  - You must grant **Full Disk Access** as described in the permissions section.

- **Pixbuf/Image Loading Crashes:**
  - If a HEIF/AVIF build crashes, try the Standard Build for your chip.
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

**Note:** The command below uses `/Applications/czkawka`. If you installed a nightly build or renamed the file, be sure to adjust the name to match (e.g., `/Applications/czkawka_nightly`).

```bash
/Applications/czkawka 2>/dev/null &
```

- **For Bug Reports:**
  - Enable detailed logging before reporting an issue:
```bash
RUST_BACKTRACE=full /Applications/czkawka
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

### 🎉 Done!

Enjoy a faster, cleaner Mac experience. Czkawka does the dirty work so you don't have to.

---

### 🚀 Bonus: Quick Launch Alias

Add this to your `~/.zshrc` file for easy terminal access:

```bash
alias czk='/Applications/czkawka 2>/dev/null &'
```

Then reload your shell:

```bash
source ~/.zshrc
```

Now you can simply type `czk` in any terminal to launch Czkawka!

---

## 📄 License & Attribution

This guide is provided as-is for educational purposes. 

**Czkawka** is developed by [qarmin](https://github.com/qarmin) and contributors. The original project and its icons are licensed under their respective licenses (see the [original repository](https://github.com/qarmin/czkawka) for details).

This repository contains only documentation and does not redistribute any Czkawka binaries or source code.
