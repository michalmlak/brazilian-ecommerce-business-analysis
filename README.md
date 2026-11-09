# Brazilian E-Commerce Business Analysis

## Project Overview

An end-to-end data analytics project based on the Brazilian E-Commerce Public Dataset by Olist.

The goal of this project was to analyze e-commerce business performance, identify trends, evaluate delivery operations, and understand customer satisfaction using SQL Server and Power BI.

The analysis focuses on transforming raw business data into actionable insights that can support better business decisions.

## Business Objectives

The project addresses five key analytical areas:

1. **Data Quality** – assess data completeness, consistency, and reliability.
2. **Sales Performance** – analyze revenue, orders, average order value, product categories, sellers, and payment methods.
3. **Delivery Performance** – evaluate delivery times, late deliveries, and regional differences.
4. **Customer Satisfaction** – analyze review scores and their relationship with delivery performance and product categories.
5. **Integrated Insights** – combine findings from different analytical areas to identify business opportunities.


## Dataset

The project uses the Brazilian E-Commerce Public Dataset by Olist, containing information about orders, customers, products, sellers, payments, reviews, and deliveries.

The dataset covers transactions from 2016 to 2018.

Main data tables include:

- Orders
- Order Items
- Order Payments
- Order Reviews
- Customers
- Products
- Sellers
- Geolocation
- Product Category Translation

## SQL Analysis

The SQL analysis was divided into five stages:

| Stage | Analysis |
|---|---|
| 01 | Data Quality |
| 02 | Sales Analysis |
| 03 | Delivery Performance |
| 04 | Customer Satisfaction |
| 05 | Integrated Insights |

Each stage contains SQL queries designed to answer specific business questions and evaluate key performance indicators.

## Power BI Dashboards

The analysis was presented through three interactive dashboards.

### 1. Sales Performance

Focus areas:
- Total Sales
- Total Orders
- Average Order Value
- Monthly Sales and Orders Trends
- Sales by Product Category
- Top Sellers by Sales
- Payment Distribution and Payment Value by Method
  
<img width="1314" height="762" alt="Zrzut ekranu 2026-11-08 165605" src="https://github.com/user-attachments/assets/ab4c29de-5c9e-4dfe-b325-2d978f5d9ccb" />

### 2. Delivery Performance

Focus areas:
- Average Delivery Time
- Late Delivery Rate
- Average Delivery Delay
- On-time vs. Late Deliveries
- Monthly On-time Delivery Rate
- Delivery Performance by Customer State
  
<img width="1315" height="747" alt="Zrzut ekranu 2026-11-08 165636" src="https://github.com/user-attachments/assets/83a8b90c-4854-45e2-8465-c234656a4563" />


### 3. Customer Satisfaction

Focus areas:
- Average Review Score
- Total Reviews
- Low Ratings Percentage
- Review Score Distribution
- Monthly Average Rating Trend
- Customer Ratings by Delivery Performance
- Sales vs. Customer Satisfaction by Product Category

<img width="1317" height="749" alt="Zrzut ekranu 2026-11-08 165648" src="https://github.com/user-attachments/assets/86bb6d09-4942-4cb3-bffa-e335eb24417f" />


## Key Business Insights

### Sales Performance

- Total product sales amounted to approximately **R$13.60 million**.
- The average order value was approximately **R$137.75**.
- Health & Beauty, Watches & Gifts, and Bed Bath Table were among the highest-revenue product categories.
- Credit cards accounted for the largest share of payment transactions and payment value.

### Delivery Performance

- Average delivery time was approximately **12.50 days**.
- Approximately **8.11% of delivered orders arrived late**.
- The average delay among late deliveries was approximately **8.87 days**.
- Delivery performance varied considerably across customer states.

### Customer Satisfaction

- The average customer review score was **4.09 out of 5**.
- Approximately **14.69% of reviews received scores of 1 or 2**.
- On-time deliveries had an average review score of approximately **4.29**, compared with approximately **2.57** for late deliveries.
- This indicates a strong association between delivery performance and customer satisfaction.

## Business Recommendations

Based on the analysis, several opportunities for improvement were identified:

1. **Improve delivery reliability** – investigate operational issues in regions with higher late-delivery rates.
2. **Monitor delivery performance** – track on-time delivery rates and average delivery times regularly.
3. **Focus on customer experience** – investigate the reasons behind low review scores, particularly for delayed orders.
4. **Monitor product categories** – evaluate sales performance alongside customer satisfaction to identify categories requiring attention.
5. **Use data-driven decision-making** – combine sales, operational, and customer satisfaction metrics when evaluating business performance.

## Project Limitations

- The dataset represents historical transactions from 2016–2018 and does not reflect current market conditions.
- Some months contain partial periods and should be interpreted with caution.
- Customer reviews are associated with orders rather than individual products. Category-level review analysis therefore represents order-associated category satisfaction, not direct product-level ratings.
- Observed relationships between delivery performance and customer ratings do not establish causation.



