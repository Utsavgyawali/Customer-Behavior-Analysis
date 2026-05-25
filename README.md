# Retail Customer Behavior Analysis

## Executive Summary

This end-to-end analytics project replicates a real-world enterprise data workflow, transforming raw retail transaction data into strategic, executive-level business insights.  
The project demonstrates expertise across the modern analytics stack  **Python (Pandas), SQL, and Power BI**  
while emphasizing a critical business capability: converting complex datasets into actionable strategies that directly influence growth, retention, and operational efficiency.

The primary objective was to uncover the underlying behavioral patterns driving customer purchasing decisions, subscription adoption, and long-term loyalty within a retail ecosystem.  
Through advanced analytics and interactive dashboarding, the project identified high-impact opportunities for revenue optimization, customer retention, and logistics investment.



# Business Problem

A retail organization sought to better understand evolving customer shopping behavior in order to:

* Improve customer retention and repeat purchase rates
* Optimize marketing and subscription conversion strategies
* Identify revenue-driving customer segments
* Analyze the impact of discounts, shipping preferences, and seasonal demand trends
* Enable data-driven executive decision-making

The challenge involved working with imperfect, real-world retail data and translating it into scalable business intelligence solutions.



# End-to-End Analytics Workflow

## Data Cleaning & Preparation (Python / Pandas)

The raw dataset contained inconsistencies, missing values, and non-standardized formats that required enterprise-style preprocessing before analysis.

### Intelligent Missing Value Imputation

Implemented **category-based median imputation** for review ratings instead of using naive global averages, preserving category-level statistical integrity and minimizing analytical bias.

### Feature Engineering

Transformed text-based shopping frequency attributes into quantitative numerical metrics to support downstream analytical modeling and segmentation.

### Data Standardization

Applied professional **snake_case naming conventions** across all columns to maintain schema consistency throughout the analytics pipeline.

### Data Quality Optimization

Performed duplicate handling, datatype corrections, null validation, and structural normalization to prepare the dataset for production-style querying and reporting.



## Business Analysis (MySQL)

The cleaned dataset was migrated into **PostgreSQL** to simulate a real-world relational database environment commonly used in enterprise analytics systems.

### Window Functions

Used `ROW_NUMBER()` and ranking logic to identify top-performing products and categories based on sales performance and customer demand.

### Customer Segmentation Modeling

Built dynamic customer classifications using `CASE` statements to segment users into:

* New Customers
* Returning Customers
* Loyal Customers

This segmentation enabled targeted retention and marketing analysis.

### Revenue & Discount Impact Analysis

Performed advanced aggregations to evaluate:

* Discount effectiveness on purchasing behavior
* Revenue contribution across demographics
* Repeat purchase tendencies based on promotional campaigns

### Behavioral Trend Analysis

Analyzed relationships between:

* Subscription adoption
* Purchase frequency
* Shipping preferences
* Seasonal shopping patterns
* Customer lifetime behavior indicators



## Business Intelligence Dashboarding (Power BI)

Developed a highly interactive executive dashboard designed for stakeholder-level reporting and strategic monitoring.

### KPI Monitoring

Built real-time analytical views for:

* Revenue trends
* Customer purchase behavior
* Subscription performance
* Sales distribution by demographic and category

### Interactive Drill-Down Analysis

Implemented advanced slicers and filtering capabilities for:

* Gender
* Product Category
* Subscription Status
* Customer Segments

### Executive Visualization Design

Focused on clean storytelling visuals to ensure non-technical decision-makers could quickly interpret insights and act on them.



# Strategic Business Insights

## 1. Subscription Conversion Opportunity

Identified **2,500+ repeat customers who were not subscribed**, revealing a significant untapped opportunity for loyalty and subscription-based retention programs.

## 2. Express Shipping Drives Higher Spending

Analysis revealed that customers selecting **express shipping options consistently demonstrated higher average purchase values**.

## 3. Young Adults as Primary Revenue Drivers

Discovered that the **Young Adult demographic contributed the highest overall revenue share** across product categories.



# Technical Skills Demonstrated

## Languages & Tools

* Python
* Pandas
* MYSQL
* SQL
* Power BI

## Analytics Concepts

* Data Cleaning & Transformation
* Feature Engineering
* Customer Segmentation
* Window Functions
* Business Intelligence
* KPI Reporting
* Dashboard Design
* Exploratory Data Analysis
* Business Strategy Translation
