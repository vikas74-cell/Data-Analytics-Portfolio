# 📂 Python Projects  

This folder contains Python scripts and Jupyter Notebooks for **data analysis, visualization, and machine learning.**  

## 📌 Project 1: Sales Data Analysis  
🔹 **Objective:** Analyze sales trends over time to understand business performance.  
🔹 **Dataset Used:** `sales_data.csv` (Contains sales figures with dates).  
🔹 **Key Python Libraries Used:**  
   - `pandas` → Data manipulation  
   - `matplotlib` → Data visualization  
   - `seaborn` → Enhanced charts  

### **📊 Code Overview**
```python
# Load and analyze sales data
sales_data = pd.read_csv("sales_data.csv")
print(sales_data.describe())

# Visualize the sales trend
plt.figure(figsize=(10, 5))
sns.lineplot(data=sales_data, x="Date", y="Sales", marker="o")
plt.title("Sales Trend Over Time")
plt.xlabel("Date")
plt.ylabel("Sales")
plt.xticks(rotation=45)
plt.show()
