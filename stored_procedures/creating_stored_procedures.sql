--dim_location_sp

CREATE PROCEDURE dim_location_sp
AS
BEGIN
    drop TABLE [PC_Sales_Data].[dbo].[dim_location];
    INSERT INTO [PC_Sales_Data].[dbo].[dim_location](Continent, Country_or_State, Province_or_City)
    SELECT DISTINCT Continent, Country_or_State, Province_or_City
    FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data];
END;
GO

--dim_date_sp

CREATE PROCEDURE dim_date_sp
AS
BEGIN
    DROP TABLE [PC_Sales_Data].[dbo].[dim_date];
    INSERT INTO [PC_Sales_Data].[dbo].[dim_date](Purchase_Date, Ship_Date)
    SELECT DISTINCT Purchase_Date, Ship_Date
    FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data];
END;
GO

--dim_employee_sp

CREATE PROCEDURE dim_employee_sp
AS
BEGIN
    DROP TABLE [PC_Sales_Data].[dbo].[dim_employee];
    INSERT INTO [PC_Sales_Data].[dbo].[dim_employee](Sales_Person_Name, Sales_Person_Department)
    SELECT DISTINCT Sales_Person_Name, Sales_Person_Department
    FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data];
END;
GO

--dim_product_sp

CREATE PROCEDURE dim_product_sp
AS
BEGIN
    DROP TABLE [PC_Sales_Data].[dbo].[dim_product];
    INSERT INTO [PC_Sales_Data].[dbo].[dim_product](PC_Make, PC_Model, Storage_Type, RAM, Storage_Capacity)
    SELECT DISTINCT PC_Make, PC_Model, Storage_Type, RAM, Storage_Capacity
    FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data];
END;
GO

--dim_store_sp

CREATE PROCEDURE dim_store_sp
AS
BEGIN
    DROP TABLE [PC_Sales_Data].[dbo].[dim_store];
    INSERT INTO [PC_Sales_Data].[dbo].[dim_store](Shop_Name, Shop_Age)
    SELECT DISTINCT Shop_Name, Shop_Age
    FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data];
END;
GO

--dim_channel_sp

CREATE PROCEDURE dim_channel_sp
AS
BEGIN
    DROP TABLE [PC_Sales_Data].[dbo].[dim_channel];
    INSERT INTO [PC_Sales_Data].[dbo].[dim_channel](Channel)
    SELECT DISTINCT Channel
    FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data];
END;
GO

--dim_customer_sp

CREATE PROCEDURE dim_customer_sp
AS
BEGIN
    DROP TABLE [PC_Sales_Data].[dbo].[dim_customer];
    INSERT INTO [PC_Sales_Data].[dbo].[dim_customer](Customer_Name, Customer_Surname, Customer_Contact_Number, Customer_Email_Address)
    SELECT DISTINCT Customer_Name, Customer_Surname, Customer_Contact_Number, Customer_Email_Address
    FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data];
END;
GO

--dim_priority_sp

CREATE PROCEDURE dim_priority_sp
AS
BEGIN
    DROP TABLE [PC_Sales_Data].[dbo].[dim_priority];
    INSERT INTO [PC_Sales_Data].[dbo].[dim_priority](Priority)
    SELECT DISTINCT Priority
    FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data];
END;
GO

--dim_payment_method

CREATE PROCEDURE dim_payment_method_sp
AS
BEGIN
    DROP TABLE [PC_Sales_Data].[dbo].[dim_payment_method];
    INSERT INTO [PC_Sales_Data].[dbo].[dim_payment_method](Payment_Method)
    SELECT DISTINCT Payment_Method
    FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data];
END;
GO

--execute_all_procedures

CREATE PROCEDURE execute_all_procedures
AS
BEGIN
    SET NOCOUNT ON;
    
    EXEC dim_location_sp;
    EXEC dim_date_sp;
    EXEC dim_employee_sp;
    EXEC dim_product_sp;
    EXEC dim_store_sp;
    EXEC dim_channel_sp;
    EXEC dim_customer_sp;
    EXEC dim_priority_sp;
    EXEC dim_payment_method;
    
    PRINT 'All dimensions loaded successfully.';
END;
GO

