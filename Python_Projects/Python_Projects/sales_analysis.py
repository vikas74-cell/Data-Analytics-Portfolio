# 📌 Sales Data Analysis using Python

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load the dataset
sales_data = pd.read_csv("sales_data.csv")

# Show basic statistics
print(sales_data.describe())

# Create a sales trend graph
plt.figure(figsize=(10, 5))
sns.lineplot(data=sales_data, x="Date", y="Sales", marker="o")
plt.title("Sales Trend Over Time")
plt.xlabel("Date")
plt.ylabel("Sales")
plt.xticks(rotation=45)
plt.show()
