"""
Python can be particularly useful for detailed exploration, especially if the data needs to be visualized or if complex logic is required. Below is a Python script using Pandas for similar checks.
"""

import pandas as pd

# Assuming data is loaded into DataFrame
users = pd.read_json('path_to_users.json')
receipts = pd.read_json('path_to_receipts.json')
brands = pd.read_json('path_to_brands.json')

# Check for missing values
print(users.isnull().sum())
print(receipts.isnull().sum())
print(brands.isnull().sum())

# Check for duplicates
print(users[users.duplicated('user_id', keep=False)])
print(receipts[receipts.duplicated('receipt_id', keep=False)])
print(brands[brands.duplicated('brand_id', keep=False)])

# Look for inconsistencies in categorical data
print(users['role'].value_counts())
print(receipts['rewardsReceiptStatus'].value_counts())
