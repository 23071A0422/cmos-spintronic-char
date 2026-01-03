# Experimental Test Bench Configuration
**Target:** Characterization of Sky130 Inverter Prototype

### **Equipment List:**
- **Oscilloscope:** Tektronix MSO58 (1 GHz Bandwidth, 6.25 GS/s)
- **Signal Generator:** Rigol DG4162 (160 MHz, Pulse capability)
- **Power Supply:** Keithley 2231A-30-3 (Precision DC)
- **Probing:** P6139B 10X Passive Voltage Probes (Input C < 8pF)

### **Measurement Protocol:**
1. Supply VDD = 1.8V to the breakout board via SMA connectors.
2. Inject a 10MHz square wave with 100ps rise/fall edge.
3. Use high-impedance probing at the Inverter output (Node: OUT) to minimize capacitive loading.