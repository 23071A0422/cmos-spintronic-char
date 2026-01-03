* Noise Margin PVT (Process, Voltage, Temperature) Sweep
.lib "sky130_fd_pr/models/sky130.lib.spice" tt

Xinv out in vdd 0 sky130_fd_pr__nfet_01v8 w=1.0 l=0.15
+ sky130_fd_pr__pfet_01v8 w=2.0 l=0.15

Vdd vdd 0 1.8
Vin in 0 0

.control
  foreach temp_val -40 25 125
    set temp = $temp_val
    foreach vdd_val 1.6 1.8 2.0
      alter Vdd = $vdd_val
      dc Vin 0 2.0 0.01
      plot v(out) vs v(in)
    end
  end
.endc
.end