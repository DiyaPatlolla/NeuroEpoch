# NeuroEpoch 🧠💤
### *Interactive Clinical Polysomnography (PSG) 30-Second Epoch Scorer, Digital Caliper & Sleep Lab Inter-Scorer Reliability (QA) System*

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Clinical Standard](https://img.shields.io/badge/Standard-AASM%20v2.6%2Fv3.0-emerald.svg)](https://aasm.org)
[![Electrophysiology](https://img.shields.io/badge/Electrophysiology-10--20%20System-indigo.svg)](https://acns.org)
[![Target Major](https://img.shields.io/badge/UNC%20Chapel%20Hill-Neurodiagnostics%20%26%20Sleep%20Science-7BAFD4.svg)](https://www.med.unc.edu/ahs/)
[![Status](https://img.shields.io/badge/Deployment-GitHub%20Pages%20Ready-success.svg)](#)

---

## Executive Summary

**NeuroEpoch** is a browser-based, zero-dependency clinical electrophysiology simulator designed to train students and technologists in the art and science of **30-second epoch sleep staging**, **electrophysiological waveform measurement**, and **hospital laboratory quality assurance (QA)**.

Built with direct alignment to the **American Academy of Sleep Medicine (AASM) Scoring Manual** and the **UNC Chapel Hill Neurodiagnostics and Sleep Science (NDSS) Student Learning Outcomes**, NeuroEpoch bridges the gap between undergraduate pre-medical study and real-world clinical neurodiagnostics.

---

## 🎯 Direct Alignment with UNC Chapel Hill NDSS Learning Outcomes

| UNC NDSS Student Learning Outcome (SLO) | How NeuroEpoch Delivers & Demonstrates Mastery |
| :--- | :--- |
| **SLO 1: Competent entry-level technologist (cognitive, psychomotor, affective)** | Implements hands-on epoch scoring, millisecond/microvolt caliper measurement, and clinical decision criteria across Wake, N1, N2, N3, and REM. |
| **SLO 2: Overlap of electrophysiology, laboratory science, management & education** | Blends biophysical signal visualization (filters, montages) with laboratory quality assurance metrics and didactic training. |
| **SLO 3: Leadership skills to oversee sleep science facilities (hospitals, labs)** | Features an **Inter-Scorer Reliability (ISR)** module that conducts statistical audits (Cohen's Kappa $\kappa$, % concordance, confusion matrices) required for AASM laboratory accreditation. |
| **SLO 4: Teach courses related to neurodiagnostic studies and sleep science** | Acts as an interactive teaching and self-paced curriculum tool featuring real-time clinical rationales and waveform discovery guides. |
| **SLO 5: Innovation and sound scientific theory for verified methodology** | Faithfully replicates AASM manual rules ($\ge 0.5\text{ s}$ sleep spindles/K-complexes, $>75\ \mu\text{V}$ slow waves covering $\ge 20\%$ of epochs). |
| **SLO 6: Explain advanced clinical diagnostic measurements & theories** | Displays multi-channel biosignals ($F_4\text{-}M_1$, $C_4\text{-}M_1$, $O_2\text{-}M_1$, EOG, Chin EMG, ECG) with adjustable timebases and sensitivity scales. |
| **SLO 7: Effective written and oral communication skills** | Generates structured diagnostic technical reports and automated clinical summaries for interpreting physicians. |
| **SLO 8: Practical connection between undergraduate major & professional world** | Emulates clinical diagnostic workstations (Cadwell, Natus, Nihon Kohden) used in hospital sleep disorder centers. |

---

## ⚡ Core Features

### 1. Multi-Channel 30-Second PSG Oscilloscope
* High-performance HTML5 Canvas rendering engine delivering smooth 60fps waveform traces.
* **6 Standard Clinical Recording Channels**:
  * **$F_4\text{-}M_1$ (Frontal EEG)**: Sensitive to high-amplitude frontal slow waves.
  * **$C_4\text{-}M_1$ (Central EEG)**: Primary channel for detecting **Sleep Spindles** ($11–16\text{ Hz}$) and **K-Complexes**.
  * **$O_2\text{-}M_1$ (Occipital EEG)**: Gold standard for identifying **Posterior Dominant Alpha Rhythm** ($8–13\text{ Hz}$) during relaxed wakefulness.
  * **$E_1\text{-}M_2$ & $E_2\text{-}M_2$ (Dual EOG)**: Monitored for Slow Rolling Eye Movements (SEMs in N1) and conjugate out-of-phase saccades (Rapid Eye Movements in REM).
  * **$\text{Chin } 1 - \text{Chin } 2$ (Submental EMG)**: Muscle tone indicator distinguishing Stage Wake (high), NREM (moderate), and REM (muscle atonia/flatline).
  * **$\text{ECG / Lead II}$**: Cardiac rhythm tracing for detecting autonomic arousals and pulse artifacts.

### 2. Interactive Digital Caliper Tool 📐
In clinical electrophysiology, visual inspection must be corroborated by physical measurement:
* Click and drag directly on any waveform to deploy the **Digital Caliper**.
* **$\Delta t$ (Duration)**: Real-time calculation down to milliseconds. Flags when a burst satisfies the **$\ge 0.5\text{ s}$ duration rule** required for Sleep Spindles and K-complexes.
* **$\Delta V$ (Peak-to-Peak Amplitude)**: Real-time calculation in microvolts ($\mu\text{V}$). Flags when delta waves exceed the **$>75\ \mu\text{V}$ amplitude rule** required for Stage N3 Slow Wave Sleep.

### 3. Sleep Lab Quality Assurance (QA) & Inter-Scorer Reliability (ISR)
Accredited hospital sleep centers are legally mandated by the AASM to run periodic ISR audits:
* **Medical Director Gold Standard**: Compare your epoch scores against the consensus board-certified standard.
* **Cohen's Kappa ($\kappa$) Calculation**: Measures inter-rater agreement adjusted for chance:
  $$\kappa = \frac{P_o - P_e}{1 - P_e}$$
* **Diagnostic Confusion Matrix**: Pinpoints technician blind spots (e.g., misclassifying Stage N1 as Wake due to missing low-amplitude mixed-frequency transitions).

### 4. Interactive 10-20 Scalp Map & Montage Explorer
* Visual 2D scalp model based on the International 10-20 System.
* Toggle between **Longitudinal Bipolar ("Double Banana")** and **Referential ($M_1/M_2$)** montages.
* Interactive demonstration of **Phase Reversals** (localized negative electrical field pointing toward a shared electrode site).

### 5. Dynamic Hypnogram & Sleep Architecture Analytics
* Real-time staircase hypnogram plotting epoch-by-epoch stage progression across the study.
* Real-time calculation of clinical sleep architecture metrics:
  * **Total Recording Time (TRT)** & **Total Sleep Time (TST)**
  * **Sleep Efficiency %** ($\frac{\text{TST}}{\text{TRT}} \times 100$)
  * **Stage Distribution %** (% Wake, % N1, % N2, % N3, % REM)

---

## 🔬 AASM Clinical Scoring Reference Table

| Stage | Defining EEG Features | EOG Appearance | Submental EMG Tone | Key Diagnostic Rules |
| :---: | :--- | :--- | :--- | :--- |
| **Stage W** | Posterior Dominant Rhythm (Alpha, $8–13\text{ Hz}$) covering $>50\%$ of epoch | Eye blinks, voluntary saccades | High tonic activity | Eyes closed resting state |
| **Stage N1** | Alpha attenuation; replaced by Low-Amplitude Mixed Frequency ($4–7\text{ Hz}$ Theta); Vertex Sharp Waves | Slow Rolling Eye Movements (SEMs) | Decreased from Wake | Transition phase ($2–5\%$ of night) |
| **Stage N2** | Background theta with **Sleep Spindles** ($11–16\text{ Hz}$) and/or **K-Complexes** | None or blunted | Low to moderate tone | Presence of $\ge 1$ spindle or K-complex; $<20\%$ slow waves |
| **Stage N3** | **Slow Wave Activity** ($0.5–2.0\text{ Hz}$, peak-to-peak amplitude $>75\ \mu\text{V}$) | None | Low tone | Slow waves must occupy $\ge 20\%$ of the 30-second epoch ($\ge 6\text{ s}$) |
| **Stage R** | Low-amplitude mixed-frequency EEG; **Sawtooth Waves** ($2–6\text{ Hz}$) | Rapid Eye Movements (conjugate, sharp deflections) | **Atonia** (baseline lowest of entire record) | Simultaneous presence of LAMF EEG, REMs, and EMG atonia |

---

## 🛠️ Technology Stack & Architecture

* **Frontend**: Pure HTML5, Modern ECMAScript (ES2022+), CSS3 with CSS Grid & Custom Properties.
* **Graphics**: HTML5 `<canvas>` with sub-pixel anti-aliasing and vector grid overlays.
* **Design System**: High-contrast, clinical dark-mode dashboard inspired by diagnostic hospital monitors (Cadwell, Natus, Philips Alice).
* **Dependencies**: **Zero external runtime dependencies**. Fully client-side, runs offline, ultra-fast loading, easily deployable to GitHub Pages.

---

## 🚀 Quickstart & Local Setup

### 1. Clone the Repository
```bash
git clone https://github.com/diyapatlolla/NeuroEpoch.git
cd NeuroEpoch
```

### 2. Run Locally
Because NeuroEpoch is completely client-side, you can open `index.html` directly in any web browser:
```bash
open index.html
# or on Linux:
xdg-open index.html
# or with Python's built-in static server:
python3 -m http.server 8000
```
Navigate to `http://localhost:8000` in your browser.

---

## 🌐 Publishing to GitHub

A turnkey automated deployment script is provided:

```bash
./publish_github.sh
```

The script will:
1. Verify git repository state and create an initial commit.
2. Authenticate with GitHub CLI (`gh`).
3. Create the remote repository `diyapatlolla/NeuroEpoch`.
4. Push the `main` branch.
5. Automatically configure **GitHub Pages** so the app is immediately accessible worldwide at:
   `https://diyapatlolla.github.io/NeuroEpoch/`

---

## 🎓 About the Author & Project Context

Created by **Diya Patlolla**, an aspiring pre-medical student at **UNC Chapel Hill** with an intended major in **Neurodiagnostics and Sleep Science (NDSS)**. 

Conceived and engineered during a study abroad semester in Scotland to explore the intersection of clinical electrophysiology, software engineering, and healthcare quality assurance.

---

## 📄 License

This project is licensed under the terms of the [MIT License](LICENSE).
# https-github.com-diyapatlolla-NeuroEpoch
