* S+++ Spintronic MTJ Macro-Model 
* Based on BIT Mesra Research: LiCrSi/3L-MgO/LiCrSi 
* TMR: 6.36e6 % @ 300K 

.subckt mtj_cell p n ctrl
* Parallel Resistance (Rp) = 1 / 1.86e-6 S ≈ 537,634 Ohms 
* Anti-Parallel Resistance (Rap) = 1 / 2.92e-11 S ≈ 34,246,575,342 Ohms 
* Behavioral switching based on control signal (Vctrl > 0.9V -> AP state)
Bmtj p n I=V(p, n)/(V(ctrl) > 0.9 ? 34.24G : 537.6k)
.ends mtj_cell