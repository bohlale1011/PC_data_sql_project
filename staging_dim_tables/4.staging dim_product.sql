        --dim_product

        CREATE TABLE[PC_Sales_Data]. [dbo].[dim_product](
        [Product_id] INT IDENTITY(1,1) PRIMARY KEY,
        [PC_Make] [nvarchar](50) NOT NULL,
        [PC_Model] [nvarchar](50) NOT NULL,
        [Storage_Type] [nvarchar](50) NOT NULL,
        [RAM] [nvarchar](50) NOT NULL,
        [Storage_Capacity] [nvarchar](50) NOT NULL
        )
        INSERT INTO [PC_Sales_Data].[dbo].[dim_product](PC_Make,PC_Model,Storage_Type,RAM,Storage_Capacity)
        SELECT DISTINCT PC_Make,PC_Model,Storage_Type,RAM,Storage_Capacity
        FROM [PC_Sales_Data].[dbo].[1772542271737_pc_data]

        select * from [PC_Sales_Data].[dbo].[dim_product]