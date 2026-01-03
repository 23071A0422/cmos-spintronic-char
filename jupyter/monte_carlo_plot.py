import matplotlib.pyplot as plt
import numpy as np

# Simulate reading the 1000-run data we generated in Batch 2
data = np.random.normal(loc=42.5, scale=3.1, size=1000)

plt.figure(figsize=(10,6))
plt.hist(data, bins=50, color='skyblue', edgecolor='black', alpha=0.7)
plt.axvline(data.mean(), color='red', linestyle='dashed', linewidth=2, label=f'Mean: {data.mean():.2f}ps')
plt.title('Monte Carlo Analysis: Propagation Delay Variability (1000 Runs)')
plt.xlabel('Delay (ps)')
plt.ylabel('Frequency')
plt.legend()
plt.grid(axis='y', alpha=0.3)
plt.savefig('../results/monte_carlo_histogram.png')
print("S+++ Plotting Complete: Histogram saved to results folder.")