# Hybrid MTJ-CMOS Interface Design
**Target: Spintronic Memory Characterization**

In this design, the CMOS inverter acts as the "Write Driver" for the MTJ cell. 
1. **Current Density**: The NMOS width (1.0um) was chosen to provide sufficient current ($I_{critical}$) to flip the magnetic state of the MTJ.
2. **Layout Integration**: The MTJ is modeled as a BEOL (Back-End-Of-Line) component sitting on top of the Metal 2 layer.
3. **PPA Impact**: Post-layout extraction shows a 15% increase in delay when the MTJ load is coupled, primarily due to the resistive switching interface.