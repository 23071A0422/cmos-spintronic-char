* Monte Carlo Analysis: Sky130 Inverter (1000 Runs)
* Focus: Threshold Voltage (Vth) and Length (L) Variation
.lib "sky130_fd_pr/models/sky130.lib.spice" mc
.include "../hybrid/mtj_model.sp"

* Circuit with Gaussian Variation
Xinv out in vdd 0 sky130_fd_pr__nfet_01v8 w=1.0 l=0.15 
+ sky130_fd_pr__pfet_01v8 w=2.0 l=0.15

Vdd vdd 0 1.8
Vin in 0 pulse(0 1.8 1n 100p 100p 4n 10n)

.control
  let run = 1
  dowhile run <= 1000
    reset
    tran 0.01n 20n
    meas tran tp_hl trig v(in) val=0.9 rise=1 targ v(out) val=0.9 fall=1
    let run = run + 1
  end
  * Save results to histogram data
  wrdata ../data/monte_carlo_results.txt tp_hl
.endc
.end