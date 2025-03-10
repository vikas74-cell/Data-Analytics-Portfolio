# 📌 Exploratory Data Analysis (EDA) in Python

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load dataset
df = pd.read_csv("data.csv")

# Show first 5 rows
print(df.head())

# Check for missing values
print(df.isnull().sum())

# Visualizing correlations
plt.figure(figsize=(10, 5))
sns.heatmap(df.corr(), annot=True, cmap="coolwarm", linewidths=0.5)
plt.title("Feature Correlation Heatmap")
plt.show()
