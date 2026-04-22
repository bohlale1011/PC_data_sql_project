
        --dim_customer
       
       CREATE TABLE [PC_Sales_Data].[dbo].[dim_customer](
       [Customer_id]INT IDENTITY(1,1) PRIMARY KEY,
       [Customer_Name] [nvarchar](50) NOT NULL,
	   [Customer_Surname] [nvarchar](50) NOT NULL,
	   [Customer_Contact_Number] [nvarchar](50) NOT NULL,
	   [Customer_Email_Address] [nvarchar](50) NOT NULL
       )
       INSERT INTO [PC_Sales_Data].[dbo].[dim_customer](Customer_Name,Customer_Surname,Customer_Contact_Number,Customer_Email_Address)
       SELECT DISTINCT Customer_Name,Customer_Surname,Customer_Contact_Number,Customer_Email_Address
       FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data]

       SELECT * FROM [PC_Sales_Data].[dbo].[dim_customer]