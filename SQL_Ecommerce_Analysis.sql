USE EcommerceDb;

SELECT * FROM Consumer_BehaviourTable;

--1. Total Purchase Amount by Income Level

SELECT Income_Level, SUM(Purchase_Amount) AS Total_Purchase_Amount
FROM Consumer_BehaviourTable
GROUP BY Income_Level
ORDER BY Total_Purchase_Amount DESC;

--2. Average Product Rating by Purchase Category

SELECT Purchase_Category, AVG(Product_Rating) AS Average_Product_Rating
FROM Consumer_BehaviourTable
GROUP BY Purchase_Category
ORDER BY Average_Product_Rating DESC;

--3. Gender-wise Spending Analysis

SELECT Gender,SUM(Purchase_Amount) AS Total_Spending,AVG(Purchase_Amount) AS Average_Spending
FROM Consumer_BehaviourTable
GROUP BY Gender;

--4. Customer Loyalty Program Impact on Spending

SELECT Customer_Loyalty_Program_Member,SUM(Purchase_Amount) AS Average_Spending
FROM Consumer_BehaviourTable
GROUP BY Customer_Loyalty_Program_Member;

--5.Most Popular Purchase Channel

SELECT Purchase_Channel,COUNT(*) AS Transaction_Count
FROM Consumer_BehaviourTable
GROUP BY Purchase_Channel
ORDER BY Transaction_Count DESC;

--6. Discount Sensitivity Analysis

SELECT Discount_Sensitivity,SUM(Purchase_Amount) AS Total_Purchase_Amount,
AVG(Purchase_Amount) AS Average_Purchase_Amount
FROM Consumer_BehaviourTable
GROUP BY Discount_Sensitivity;

--7. Customer Satisfaction by Payment Method

SELECT Payment_Method,AVG(Customer_Satisfaction) AS Average_Satisfaction
FROM Consumer_BehaviourTable
GROUP BY Payment_Method
ORDER BY Average_Satisfaction DESC;

--8. Return Rate by Product Category

SELECT Purchase_Category,AVG(Return_Rate) AS Average_Return_Rate
FROM Consumer_BehaviourTable
GROUP BY Purchase_Category
ORDER BY Average_Return_Rate DESC;

--9.  Influence of Social Media on Purchases

SELECT Social_Media_Influence,SUM(Purchase_Amount) AS Total_Purchase_Amount,AVG(Purchase_Amount) AS Average_Purchase_Amount
FROM Consumer_BehaviourTable
GROUP BY Social_Media_Influence;

--10. Time Spent on Research vs Purchase Amount

SELECT Time_Spent_on_Product_Research_hours,AVG(Purchase_Amount) AS Average_Purchase_Amount,
COUNT(*) AS Number_of_Customers
FROM Consumer_BehaviourTable
GROUP BY Time_Spent_on_Product_Research_hours
ORDER BY Time_Spent_on_Product_Research_hours ASC;

--11.  Engagement with Ads vs Brand Loyalty

SELECT Engagement_with_Ads,AVG(Brand_Loyalty) AS Average_Brand_Loyalty,
COUNT(*) AS Number_of_Customers
FROM Consumer_BehaviourTable
GROUP BY Engagement_with_Ads
ORDER BY Average_Brand_Loyalty DESC;

--12. Shipping Preference and Customer Satisfaction

SELECT Shipping_Preference,AVG(Customer_Satisfaction) AS Average_Customer_Satisfaction
FROM Consumer_BehaviourTable
GROUP BY Shipping_Preference
ORDER BY Average_Customer_Satisfaction DESC;
