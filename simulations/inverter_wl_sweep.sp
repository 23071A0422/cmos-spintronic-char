* Sky130 Inverter W/L Sweep
.lib "sky130_fd_pr/models/sky130.lib.spice" tt
.include "../hybrid/mtj_model.sp"

* The Circuit under test
Xinv out in vdd 0 sky130_fd_pr__nfet_01v8 w=1.0 l=0.15
+ sky130_fd_pr__pfet_01v8 w=2.0 l=0.15

Vdd vdd 0 1.8
Vin in 0 pulse(0 1.8 1n 100p 100p 4n 10n)

.control
* Sweep the width of the NMOS from 0.5um to 5um
let start_w = 0.5
let end_w = 5.0
let delta_w = 0.05
while start_w <= end_w
  alter @n.xinv.msky130_fd_pr__nfet_01v8[w] = start_w
  tran 0.01n 20n
  let start_w = start_w + delta_w
end
.endc
.end