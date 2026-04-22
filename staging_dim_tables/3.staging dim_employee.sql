--dim_employee
       
       CREATE TABLE [PC_Sales_Data].[dbo].[dim_employee](
       [Employee_id]INT IDENTITY(1,1) PRIMARY KEY,
       [Sales_Person_Name] [nvarchar](50) NOT NULL,
       [Sales_Person_Department] [nvarchar](50) NOT NULL,
       )
       INSERT INTO[PC_Sales_Data].[dbo].[dim_employee](Sales_Person_Name,Sales_Person_Department)
       SELECT DISTINCT Sales_Person_Name,Sales_Person_Department
       FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data]
      
        select * from [PC_Sales_Data].[dbo].[dim_employee]