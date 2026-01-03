# Technology Scaling Analysis: 130nm vs. 45nm vs. 7nm
**Focus: Leakage Power & MTJ Integration Suitability**

| Metric | Sky130 (Bulk) | 45nm (GP) | 7nm (FinFET) |
| :--- | :--- | :--- | :--- |
| **Supply Voltage (Vdd)** | 1.8V | 1.1V | 0.7V |
| **Gate Leakage** | Minimal | High | Managed (Hi-K) |
| **MTJ Switch Current** | Easily Handled | Marginal | Requires Boosting |
| **Radiation Hardness** | Excellent | Moderate | Sensitive (SEU) |

**Conclusion:** Sky130 is the optimal node for initial Spintronic prototyping due to its high voltage headroom, which allows for reliable MTJ switching currents without complex charge-pump circuitry.