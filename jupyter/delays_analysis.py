# E:\cmos-spintronic-char\jupyter\delays_analysis.py
import pandas as pd
import matplotlib.pyplot as plt

# Load the raw data from our Batch 1 sweep
df = pd.read_csv('../data/wl_sweep.csv')

# Calculate Energy-Delay Product (EDP)
df['EDP'] = df['Delay_ps'] * df['Power_nW']

# Find the Optimal Transistor Width (Knee of the curve)
optimal_w = df.loc[df['EDP'].idxmin()]

print(f"S+++ Analysis Complete. Optimal Width found at {optimal_w['Width_um']} um")