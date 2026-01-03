# Statistical Variability & Manufacturing Yield
**Focus: Mismatch Mitigation**

Using the 1000-run Monte Carlo data, we analyzed the Pelgrom Coefficient for the Sky130 process. 
- **Finding:** Threshold voltage (Vt) variation is the dominant factor in inverter skew.
- **Solution:** For the Purdue Spintronic Bridge, we implemented a 2x minimum L (0.30um) to reduce the effect of Random Dopant Fluctuation (RDF), ensuring a stable drive current for MTJ switching.