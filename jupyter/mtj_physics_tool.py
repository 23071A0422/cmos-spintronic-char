import matplotlib.pyplot as plt
import numpy as np

# Data directly from your LiCrSi/3L-MgO/LiCrSi research papers
labels = ['Parallel (PC)', 'Anti-Parallel (APC)']
conductance = [1.86e-6, 2.92e-11]  # Siemens [cite: 114, 121]
resistance = [1/g for g in conductance] # Ohms [cite: 116, 117]

# TMR Calculation: 6.36 x 10^6 % [cite: 8, 122]
tmr = ((conductance[0] - conductance[1]) / conductance[1]) * 100

def generate_physics_plot():
    fig, ax1 = plt.subplots(figsize=(10, 6))
    
    # Using a Logarithmic scale because the gap is 6 million percent
    color = 'tab:blue'
    ax1.set_xlabel('Magnetic Configuration')
    ax1.set_ylabel('Resistance (Ohms) - Log Scale', color=color)
    bars = ax1.bar(labels, resistance, color=['#2ecc71', '#e74c3c'], alpha=0.8)
    ax1.set_yscale('log')
    ax1.tick_params(axis='y', labelcolor=color)
    
    # Adding text labels for the exact values
    for bar in bars:
        yval = bar.get_height()
        ax1.text(bar.get_x() + bar.get_width()/2, yval, f'{yval:.1e} Ω', 
                 va='bottom', ha='center', fontweight='bold')

    plt.title(f'MTJ Physics Bridge: LiCrSi/3L-MgO/LiCrSi\nValidated TMR: {tmr:.2e}%', fontsize=14)
    plt.grid(True, which="both", ls="-", alpha=0.2)
    
    print(f"S+++ Plot Generated: R_p = {resistance[0]:.2f} Ω, R_ap = {resistance[1]:.2f} Ω")
    plt.tight_layout()
    plt.show()

if __name__ == "__main__":
    generate_physics_plot()