# Campaign Response Model
### EDA
See that have 3 group which seperated by size of transaction amount
  
![](https://github.com/ayocucu/BADS7105/blob/main/Homework%2008%20%E2%80%93%20Campaign%20Response%20Model/HW08-1.PNG)  
  
See that data isn't balanced.  
  
||response|no_cust|
|---|---|---|
|0|0|6237|
|1|1|647|
  
![](https://github.com/ayocucu/BADS7105/blob/main/Homework%2008%20%E2%80%93%20Campaign%20Response%20Model/HW08-2.PNG)  
  
### Data Re-sampling    
- Under Sampling  
- Over Sampling  
- SMOTE   
### Models  
- Logistic Regression  
- XG-Boost  
  
![](https://github.com/ayocucu/BADS7105/blob/main/Homework%2008%20%E2%80%93%20Campaign%20Response%20Model/HW08-4.PNG)  
  
AUC  
  
![](https://github.com/ayocucu/BADS7105/blob/main/Homework%2008%20%E2%80%93%20Campaign%20Response%20Model/HW08-5.PNG)   
  
### Result : Accuracy  
|Logistic Regression|Train|Test|
|---|---|---|
|Under Sampling|0.67|0.62|
|Over Sampling|0.66|0.63|
|SMOTE|0.66|0.63|
  
|XG-Boost|Train|Test|
|---|---|---|
|Under Sampling|0.70|0.54|
|Over Sampling|0.69|0.59|
|SMOTE|0.75|0.65|
  
From accuracy result shows that XG-Boost model with Re-sampling by SMOTE method gives the best perfromance at accuracy 0.75-0.65.  
  
