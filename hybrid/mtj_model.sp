* S+++ Spintronic MTJ Macro-Model 
* Based on Purdue NRL Physics Data
.subckt mtj_cell p n ctrl
* Model represents the High-TMR state (Parallel vs Anti-Parallel)
* ctrl > 0.9V switches to High-R state (1.2 Mega-Ohm)
* ctrl < 0.9V switches to Low-R state (200 Ohm)
Bmtj p n I=V(p, n)/(V(ctrl) > 0.9 ? 1.2Meg : 200)
.ends mtj_cell