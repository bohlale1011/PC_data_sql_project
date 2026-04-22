 🖥️ PC Sales Data Warehouse

📌 Overview

This project implements a PC Sales Data Warehouse using a Star Schema design.  
It is built to support ETL (Extract, Transform, Load) processes, analytical queries, and reporting for computer sales.  
The goal is to centralize sales data for better insights into customers, employees, products, stores, and overall business performance.


🗂️ Schema Design


 Star Schema Diagram
 
 <img width="786" height="1075" alt="pc_data_schema" src="https://github.com/user-attachments/assets/f5a538b6-c0bb-457a-84a9-bfb5e668aaf2" />


 The schema consists of a central fact table surrounded by multiple dimension tables.

- Fact Table: pc_sales_fact_table

- Dimension Tables:
  . dim_customer  

  . dim_employee

  . dim_location 

  . dim_date

  . dim_payment_method

  . dim_channel 

  . dim_product

  . dim_store

  . dim_priority
  

🎯 Project Goal


. Convert flat sales CSV/Excel data into a proper star schema so I can run fast, accurate reports for MoM/YoY growth,           margin, and channel performance.

. Build a robust ETL pipeline for PC sales data.

. Enable data-driven insights for business decisions.

. Support BI tools like Power BI or Tableau for visualization.


 🛠️ Tech Stack
 

| Component      | Technology             |
|----------------|------------------------|
| Database       | Microsoft SQL Server   |
| IDE            | SSMS                   |
| Language       | T-SQL                  |
| Version Control| Git + GitHub           |
| Visualization  | Excel / Power BI       |



 📂 Repo Structure


PC-Sales-DW/
├── README.md

├── /sql/

│   ├── 01_create_db_and_schema.sql

│   ├── 02_create_dimensions.sql

│   ├── 03_create_fact.sql

│   ├── 04_load_data.sql

│   └── 05_create_indexes.sql

├── /queries/

└── /docs/

└── schema.png


 🚀 How To Run

 
1. Open SSMS and connect to your SQL Server instance.  
2. Run scripts in sql folder in order from 01 → 05.  
3. Test with queries in queries folder.  
4. Check row counts: SQL

   SELECT COUNT(*) FROM pc_sales_fact;
   

📊 Sample Query


-- Total Sales by Employee

SELECT e.sales_person_name,
SUM(f.sale_price) AS total_sales
FROM pc_sales_fact f
JOIN dim_employee e ON f.employee_id = e.employee_id
GROUP BY e.sales_person_name;


🎯 Skills Demonstrated



. Dimensional modeling: star schema design

. T-SQL: JOIN, GROUP BY, CTEs

. SSMS: script organization, execution plans, indexing

. Data warehousing concepts: surrogate keys, fact vs dim tables


🗺️ Next Steps



. Add SCD Type 2 to dim_product for tracking price changes

. Create vw_MonthlySales view for Power BI

. Add stored procedure for incremental fact loads

. Build dashboard in Power BI


📝 License

MIT License


🤝 Contributing

Contributions are welcome!
Fork the repo → Create a branch → Submit a pull request.

👤 Author

[BOHLALE MOHLABI]  
Learning Data Engineering | April 2026
[linkedin email : bohlalemohlabi6@gmail.com]

📧 Contact

For questions, reach out via GitHub Issues or email: bohlalemohlabi6@gmail.com
    
