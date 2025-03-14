import pandas as pd

# Load the dataset
df = pd.read_csv("Customer_Data.csv")

# Display basic information
print("🔹 First 5 rows of the dataset:")
print(df.head())

print("\n🔹 Dataset Information:")
print(df.info())

print("\n🔹 Summary Statistics:")
print(df.describe())

print("\n🔹 Checking for Missing Values:")
print(df.isnull().sum())
