# Device-to-Circuit Physics Validation
**Research Origin:** Internship at Birla Institute of Technology (BIT), Mesra
**Status:** Under Conference Review (2025/2026)
 **Core Innovation:** Ultrahigh TMR in LiCrSi/3L-MgO/LiCrSi Magnetic Tunnel Junctions

## 1. Atomistic Parameter Extraction (QuantumATK)
 Using first-principles DFT + NEGF simulations (QuantumATK 2023.09), the following parameters were extracted for a vertical MTJ with 3L-MgO (11.04 Å) barrier

| Parameter | Research Value | SPICE Implementation |
| :--- | :--- | :--- |
| **TMR Ratio** | 6.36 × 10⁶ % |  Resistance Swing  |
| **Parallel Conductance ($G_{PC}$)** | 1.86 × 10⁻⁶ S |  $R_P \approx 537.6 \text{ k}\Omega$  |
| **Anti-Parallel Conductance ($G_{APC}$)** | 2.92 × 10⁻¹¹ S |  $R_{AP} \approx 34.24 \text{ G}\Omega$ |
| **Spin Polarization** | ~100% (SGS Electrodes) |  Spin-filtering Efficiency |

## 2. CMOS Drive Strength Verification
 The MTJ state switching depends on the CMOS driver's ability to provide the majority-spin (spin-up) conductance current.
-  **Parallel State ($P$):** Conductance is dominated by the spin-up channel ($1.86 \times 10^{-6}$ S), while the spin-down channel is quenched to $10^{-16}$ S.
-  **Anti-Parallel State ($AP$):** Both spin channels are significantly suppressed ($2.92 \times 10^{-11}$ S total), creating the acute contrast required for non-volatile logic.

## 3. Correlation with BIT Mesra Research
 The SPICE switching latency (1.2ns) is validated against the coherent spin-polarized tunneling peaks observed at the Fermi level in the parallel configuration.