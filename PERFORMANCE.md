# 🚀 Czkawka Performance & Tuning Guide

This guide provides deep-dive details on optimizing Czkawka's performance for your specific Mac. Remember that duplicate scans are often bottlenecked by disk I/O (especially on HDDs), so watch Activity Monitor and adjust threads based on how responsive your system feels.

**Quick Rule:** If you don't want to think about it, just use **6 threads**. It works well for almost all modern Macs and keeps your system responsive!

**Quick Start:** Use roughly **70% of your logical cores** (generally 4‑8 threads). Run `sysctl -n hw.ncpu` in Terminal to see how many cores you have.

---

## 🧵 How many Threads should I use?

### Quick Answer

- **Apple Silicon (M1/M2/M3/M4):** Use **6-8 threads**
- **Intel Macs:** Use **4 threads**

---

## 🧠 Why These Numbers?

### Understanding Threads

Think of threads like workers doing a job. More workers normally means faster work, BUT:

1. Too many workers get in each other's way (overhead).
2. Your computer needs some workers for other tasks (browser, system, Spotify, etc.).

### The Formula

Use **60-75% of your total cores** for Czkawka.

$$ \text{Your Cores} \times 0.70 = \text{Threads to Use} $$

Or, if you prefer code-style notation:

```text
Your Cores × 0.70 = Suggested Threads
```

**Examples:**

- 8 cores → use **6** threads
- 10 cores → use **7** threads
- 12 cores → use **8** threads
- 16 cores → use **12** threads

### Why Not Use All Cores?

If you use 100% of your cores:

- ❌ Your Mac becomes sluggish.
- ❌ Other apps freeze (spinning beachball).
- ❌ You can't do anything else while scanning.

If you use 60-75%:

- ✅ Czkawka runs fast.
- ✅ Your Mac stays responsive.
- ✅ You can browse, listen to music, etc.

---

## 🔍 How to Find Your Mac's CPU Cores

Run this command in Terminal:

```bash
sysctl -n hw.ncpu
```

This tells you how many **logical cores** (threads) your CPU has.

---

## 📋 Detailed Recommendations by Mac Model

### Apple Silicon Macs

| Mac Model | Cores | Recommended Threads |
|-----------|-------|---------------------|
| M1/M2 Base (8 cores) | 8 | **6 threads** |
| M1 Pro (8 cores) | 8 | **6 threads** |
| M1 Pro (10 cores) | 10 | **7 threads** |
| M2 Pro (10 cores) | 10 | **7 threads** |
| M2 Pro (12 cores) | 12 | **8 threads** |
| M1/M2 Max (12 cores) | 12 | **8 threads** |
| M3 (8 cores) | 8 | **6 threads** |
| M3 Pro (11-12 cores) | 11-12 | **8 threads** |
| M3 Max (14-16 cores) | 14-16 | **10-12 threads** |
| M4 (10 cores) | 10 | **7 threads** |

#### Apple Silicon Starting Points

| Cores | Suggested Threads |
|-------|-------------------|
| 8     | 6                 |
| 10-12 | 7-8               |
| 14-16 | 10-12             |

### Intel Macs

| Mac Model | Cores | Recommended Threads |
|-----------|-------|---------------------|
| i5 (4 cores) | 4 | **3 threads** |
| i5 (6 cores) | 6 | **4 threads** |
| i7 (4 cores, 8 threads) | 8 | **5 threads** |
| i7 (6 cores, 12 threads) | 12 | **8 threads** |
| i9 (8 cores, 16 threads) | 16 | **10 threads** |

#### Intel Shortcuts

| Cores / Threads | Suggested Threads |
|-----------------|-------------------|
| 4-6 cores       | 3-4               |
| 8-12 threads    | 5-8               |
| 16 threads      | 10-12             |

> Adjust up or down by 2-3 threads based on scan size and disk speed (use fewer threads on spinning HDDs).

---

## 📊 How to Check While Running

Open **Activity Monitor** (Applications → Utilities → Activity Monitor):

1. Click the **CPU** tab at the top.
2. Look at **CPU Usage** at the bottom graph.
3. You want to see **60-75% total usage** when Czkawka is scanning.

- **If you see 90-100%:** Reduce threads (your Mac is choked).
- **If you see 30-40%:** You can increase threads (leaving performance on the table).

---

## 💡 Pro Tips

### 1. Start Conservative

If unsure, start with **4 threads**. You can always increase it later.

### 2. Adjust Based on Task

- **Small scans (one folder):** Fewer threads (4-6). It finishes quickly anyway; spooled-up threads add overhead.
- **Huge scans (entire drive):** More threads (6-10). Saves significant time on massive datasets.

### 3. If Doing Other Work

Reduce threads by 2-3 so you can use your Mac normally while the scan runs in the background.

### 4. Automated Recommendation Command

Run this in your terminal to get a calculation tailored to your specific machine:

```bash
echo "Your Mac has $(sysctl -n hw.ncpu) cores. Recommended threads: $(echo "$(sysctl -n hw.ncpu) * 0.7" | bc | cut -d. -f1)"
```
