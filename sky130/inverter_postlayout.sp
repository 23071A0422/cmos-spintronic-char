* Post-Layout Simulation: Sky130 Inverter
* Includes parasitic capacitances extracted from Magic
.lib "sky130_fd_pr/models/sky130.lib.spice" tt

* Extracted Netlist (Simplified for simulation)
Xinv out in vdd 0 sky130_fd_pr__nfet_01v8 w=1.0 l=0.15
+ sky130_fd_pr__pfet_01v8 w=2.0 l=0.15

* Parasitic Capacitances (The "Real World" effect)
C1 in 0 0.5fF
C2 out 0 1.2fF  ; Overlap capacitance
C3 vdd out 0.2fF

Vdd vdd 0 1.8
Vin in 0 pulse(0 1.8 1n 100p 100p 4n 10n)

.control
  tran 0.01n 20n
  plot v(in) v(out)
  meas tran post_layout_delay trig v(in) val=0.9 rise=1 targ v(out) val=0.9 fall=1
.endc
.end