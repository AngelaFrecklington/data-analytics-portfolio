# Loan Approval Prediction (ANZ Bank Analytics Challenge)

## 📌 Business Problem
In the banking sector, predicting whether a loan applicant will default is essential for managing financial risk.

The objective of this project was to develop a machine learning model to assess loan default risk, supporting lenders in making more informed and lower-risk decisions. A key focus was on minimising false negatives, where high-risk applicants are incorrectly approved.

---

## 📊 Dataset
The dataset included customer and loan-related features such as:
- Age
- Income
- Employment experience
- Loan amount
- Loan intent
- Interest rate
- Credit history length
- Credit score

Target variable:
- `loan_status` (0 = approved, 1 = default)

---

## 🔧 Data Preparation
- Cleaned dataset and handled inconsistencies  
- Removed unrealistic values (e.g. ages over 100)  
- Converted categorical variables using one-hot encoding  
- Checked for missing values and validated data quality  

---

## 📈 Exploratory Data Analysis (EDA)
- Analysed distributions of loan amount, income, and credit score  
- Explored relationships between features and loan default  
- Created correlation heatmaps to identify key predictors  

---

## 🤖 Models Used
- Logistic Regression  
- Random Forest  
- Gradient Boosting  

---

## 📊 Model Evaluation
Models were evaluated using:
- Accuracy  
- Confusion Matrix  
- Focus on reducing **false negatives** to minimise financial risk  

---

## 🏆 Results
- Best performing model: **Gradient Boosting**  
- Achieved approximately **93% accuracy**  
- Demonstrated strong ability to identify high-risk loan applicants  

---

## 💡 Key Insights
- Income and credit score were strong indicators of loan approval  
- Higher loan amounts were associated with increased default risk  
- Model performance improved with feature engineering and data cleaning  

---

## 🛠 Tools & Technologies
- Python  
- Pandas  
- Scikit-learn  
- Matplotlib & Seaborn  

---

## 🚀 Project Outcome
This project demonstrates how machine learning can be applied to real-world financial data to support better lending decisions and reduce risk.

---

## 🔗 Back to Portfolio
👉 https://github.com/AngelaFrecklington/data-analytics-portfolio
