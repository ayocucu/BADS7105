# Customer Segmentation
From supermarket dataset, I have divided customer into 2 group, one-visit customer and re-visit customer.  
For this study, I am focusing on re-visit customer.  
First, I have done the heatmap plot to see correlation between variables and decide what variable can be droped out.  
  
Choosen variables :  
  
AVG_MONTHLY_SPEND  
AVG_MONTHLY_VISIT  
DUR_SINCE_FIRST_PURCH  
DUR_SINCE_LAST_PURCH  
AVG_TICKET_SIZE_BASKET_FRESH  
AVG_TICKET_SIZE_BASKET_GROCERY  
AVG_TICKET_SIZE_BASKET_MIXED  
  
![](https://github.com/ayocucu/BADS7105/blob/main/Homework%2006%20%E2%80%93%20Customer%20Segmentation/HW06-1.PNG)  
  
### Choosing K-Mean
Then, do k-mean to find how many cluster should be use for classifying re-visit customer. I choose K=5.  
  
![](https://github.com/ayocucu/BADS7105/blob/main/Homework%2006%20%E2%80%93%20Customer%20Segmentation/HW06-2.PNG)  
  
### EDA Again  
![](https://github.com/ayocucu/BADS7105/blob/main/Homework%2006%20%E2%80%93%20Customer%20Segmentation/HW06-3.PNG)  
  
![](https://github.com/ayocucu/BADS7105/blob/main/Homework%2006%20%E2%80%93%20Customer%20Segmentation/HW06-4.PNG)  
  
### Feature Imaportance
![](https://github.com/ayocucu/BADS7105/blob/main/Homework%2006%20%E2%80%93%20Customer%20Segmentation/HW06-5.PNG)  
  
### Interpreting Result
Cluster 0 :  
- The biggest cluster.  
- Average spend small to high.   
- Spending almost 3 times per months.  
- Have long been a customer more than 2 years since first times shop.  
- Always repeat shopping.  
  
Cluster 3 :  
- Lowest spend and lowest visit.  
- Visit only one time.  

Cluster 4 :  
- Visit almost 2 times per month.  
- But spending medium to high.  
  
